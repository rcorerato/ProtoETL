create or replace package PKG_PROCESSAMENTO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  procedure ABRE_PROCESSAMENTO
  (
    p_id_processo      in  processamento.id_processo%type,
    p_id_processamento out processamento.id_processamento%type
  );

  procedure FECHA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  );

  procedure EXECUTA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  );

end PKG_PROCESSAMENTO;
/
create or replace package body PKG_PROCESSAMENTO is

  procedure ESCREVE_LINHA_LOG
  (
    p_log   in out processamento.log%type,
    p_linha in varchar2
  )
  is
  begin

    p_log := nvl(p_log, ' ') || chr(13) || chr(10) || p_linha;

  end;

  procedure ABRE_PROCESSAMENTO
  (
    p_id_processo      in  processamento.id_processo%type,
    p_id_processamento out processamento.id_processamento%type
  )
  is
  begin

    select
      seq_processamento.nextval
    into
      p_id_processamento
    from
      dual;

    insert into processamento
    (
      id_processamento,
      id_processo,
      dat_inicio
    )
    values
    (
      p_id_processamento,
      p_id_processo,
      sysdate
    );

  end;

  procedure FECHA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  )
  is
  begin

    update processamento
    set
      dat_termino = sysdate
    where
      id_processamento = p_id_processamento;

  end;

  procedure PROCESSA_LINHA
  (
    p_qtd_registros      in out processamento.qtd_registros%type,
    p_qtd_registros_erro in out processamento.qtd_registros_erro%type,
    p_log                in out processamento.log%type
  )
  is

    v_c_select_origem              varchar2(4000);
    v_n_select_origem              integer;
    v_c_update_origem              varchar2(4000);
    v_c_select_destino_encontrado  varchar2(4000);
    v_c_select_destino_atualizado  varchar2(4000);
    v_n_select_destino             integer;
    v_c_insert_destino             varchar2(4000);
    v_c_update_destino             varchar2(4000);
    v_n_atualizacao                integer;
    v_n_rows                       integer;
    v_n_i                          integer;
    v_c_valor                      varchar2(4000);
    v_rowid                        rowid;
    v_b_encontrado                 boolean;
    v_b_atualizado                 boolean;
    v_b_incluir                    boolean;
    v_b_alterar                    boolean;
    v_c_erro                       varchar2(4000);

  begin

    -- Monta comandos do destino
    v_c_select_destino_encontrado := pkg_mapeamento.comando_select_destino(pkg_mapeamento.sd_registro_encontrado);
    v_c_select_destino_atualizado := pkg_mapeamento.comando_select_destino(pkg_mapeamento.sd_registro_atualizado);
    v_c_insert_destino := pkg_mapeamento.comando_insert_destino;
    v_c_update_destino := pkg_mapeamento.comando_update_destino;

    if pkg_mapeamento.mapa.origem_tempo = 'S' then

      pkg_tempo.data_inicial := to_date('01/01/1900', 'dd/mm/yyyy');
      pkg_tempo.data_final   := to_date('31/12/2100', 'dd/mm/yyyy');
      pkg_tempo.inicializa;

      pkg_tempo.unidade_tempo := 'D';
      pkg_tempo.incremento    := 1;

      while pkg_tempo.data_atual <= pkg_tempo.data_final loop

        v_c_erro := null;

        v_n_atualizacao := dbms_sql.open_cursor;

        begin

          -- Comando insert no destino
          dbms_sql.parse(v_n_atualizacao, v_c_insert_destino, dbms_sql.native);

          --
          -- Carrega valores das colunas de destino
          --

          for i in 1..pkg_mapeamento.mapa.numero_colunas loop

            v_c_valor := to_char(pkg_tempo.data_atual, nvl(pkg_mapeamento.mapa.colunas(i).formato, 'dd/mm/yyyy'));

            -- Faz transformação
            v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

            -- Faz consistência
            if not pkg_consistencia.consiste_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor, v_c_erro) then

              -- Força erro
              raise_application_error(-20000, v_c_erro);

            end if;

            -- Transfere valor transformado da origem para destino
            dbms_sql.bind_variable(v_n_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

          end loop;

          -- Atualiza tabela de destino
          v_n_rows := dbms_sql.execute(v_n_atualizacao);

        exception

          when others then
            v_c_erro := sqlerrm;

        end;

        dbms_sql.close_cursor(v_n_atualizacao);

        if v_c_erro is not null then

          -- Atualiza quantidade de registros
          p_qtd_registros_erro := p_qtd_registros_erro + 1;

          -- Gera log
          escreve_linha_log(p_log, v_c_erro);

        end if;

        pkg_tempo.proxima_data;

      end loop;

    else

      --
      -- Muda status para "PROCESSANDO"
      --

      v_c_update_origem := pkg_mapeamento.comando_update_origem(pkg_mapeamento.uo_lote);

      v_n_atualizacao := dbms_sql.open_cursor;

      -- Comando update na origem
      dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

      dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_pendente);
      dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_processando);

      -- Atualiza tabela de origem
      v_n_rows := dbms_sql.execute(v_n_atualizacao);

      dbms_sql.close_cursor(v_n_atualizacao);

      -- Monta comandos da origem
      v_c_select_origem := pkg_mapeamento.comando_select_origem(pkg_mapeamento.so_todas_colunas);
      v_c_update_origem := pkg_mapeamento.comando_update_origem(pkg_mapeamento.uo_linha);

      --
      -- Inicia seleção dos dados da origem
      --

      v_n_select_origem := dbms_sql.open_cursor;

      dbms_sql.parse(v_n_select_origem, v_c_select_origem, dbms_sql.native);

      -- Define colunas da consulta na origem
      for i in 1..pkg_mapeamento.mapa.numero_colunas loop
        dbms_sql.define_column(v_n_select_origem, i, v_c_valor, 4000);
      end loop;
      dbms_sql.define_column(v_n_select_origem, pkg_mapeamento.mapa.numero_colunas+1, v_c_valor, 4000);
      dbms_sql.bind_variable_char(v_n_select_origem, ':p_status', pkg_metadados.sa_processando);

      -- Executa select na origem
      v_n_rows := dbms_sql.execute(v_n_select_origem);

      loop

        -- Recebe linha do select na origem
        exit when dbms_sql.fetch_rows(v_n_select_origem) = 0;

        -- Atualiza quantidade de registros
        p_qtd_registros := p_qtd_registros + 1;

        --
        --  Verifica se registro existe no destino
        --

        v_n_select_destino := dbms_sql.open_cursor;

        dbms_sql.parse(v_n_select_destino, v_c_select_destino_encontrado, dbms_sql.native);
        dbms_sql.define_column(v_n_select_destino, 1, v_rowid);

        v_n_i := 1;

        for i in 1..pkg_mapeamento.mapa.numero_colunas loop

          if pkg_mapeamento.mapa.colunas(i).chave_pesquisa = 'S' then

            -- Recebe valor da origem
            dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

            -- Faz transformação
            v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

            -- Transfere valor transformado da origem para destino
            dbms_sql.bind_variable_char(v_n_select_destino, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

            v_n_i := v_n_i + 1;

          end if;

        end loop;

        -- Executa select no destino
        v_n_rows := dbms_sql.execute(v_n_select_destino);

        -- Sinaliza se registro foi encontrado
        v_b_encontrado := (dbms_sql.fetch_rows(v_n_select_destino) > 0);

        -- Obtém rowid do registro de destino
        v_rowid := null;
        if v_b_encontrado then
          dbms_sql.column_value(v_n_select_destino, 1, v_rowid);
        end if;

        dbms_sql.close_cursor(v_n_select_destino);

        v_b_incluir := false;
        v_b_alterar := false;

        -- Caso o registro não tenha sido encontrado no destino...
        if not v_b_encontrado then

          v_b_incluir := true;

        else

          v_n_select_destino := dbms_sql.open_cursor;

          dbms_sql.parse(v_n_select_destino, v_c_select_destino_atualizado, dbms_sql.native);

          for i in 1..pkg_mapeamento.mapa.numero_colunas loop

            -- Recebe valor da origem
            dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

            -- Faz transformação
            v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

            -- Transfere valor transformado da origem para destino
            dbms_sql.bind_variable_char(v_n_select_destino, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

          end loop;

          -- Executa select no destino
          v_n_rows := dbms_sql.execute(v_n_select_destino);

          -- Sinaliza se registro está atualizado
          v_b_atualizado := (dbms_sql.fetch_rows(v_n_select_destino) > 0);

          dbms_sql.close_cursor(v_n_select_destino);

          -- Caso o registro não esteja atualizado no destino...
          if not v_b_atualizado then

            -- Tipo de atualização 1 - alterar
            if pkg_mapeamento.mapa.tipo_atualizacao = pkg_mapeamento.ta_alterar then

              v_b_alterar := true;

            -- Tipo de atualização 2 - incluir
            elsif pkg_mapeamento.mapa.tipo_atualizacao = pkg_mapeamento.ta_incluir then

              v_b_incluir := true;

            end if;

          end if;

        end if;

        -- Caso registro precise ser atualizado...
        if v_b_incluir or v_b_alterar then

          v_c_erro := null;

          v_n_atualizacao := dbms_sql.open_cursor;

          begin

            if v_b_incluir then

              -- Comando insert no destino
              dbms_sql.parse(v_n_atualizacao, v_c_insert_destino, dbms_sql.native);

            elsif v_b_alterar then

              -- Comando update no destino
              dbms_sql.parse(v_n_atualizacao, v_c_update_destino, dbms_sql.native);

              -- Transfere rowid para o comando update
              dbms_sql.bind_variable(v_n_atualizacao, ':p_rowid', v_rowid);

            end if;

            --
            -- Carrega valores das colunas origem x destino
            --

            for i in 1..pkg_mapeamento.mapa.numero_colunas loop

              -- Recebe valor da origem
              dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

              -- Faz transformação
              v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

              -- Faz consistência
              if not pkg_consistencia.consiste_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor, v_c_erro) then

                -- Força erro
                raise_application_error(-20000, v_c_erro);

              end if;

              -- Transfere valor transformado da origem para destino
              dbms_sql.bind_variable(v_n_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

            end loop;

            -- Atualiza tabela de destino
            v_n_rows := dbms_sql.execute(v_n_atualizacao);

          exception

            when others then
              v_c_erro := sqlerrm;

          end;

          dbms_sql.close_cursor(v_n_atualizacao);

          if v_c_erro is not null then

            -- Atualiza quantidade de registros
            p_qtd_registros_erro := p_qtd_registros_erro + 1;

            -- Gera log
            escreve_linha_log(p_log, v_c_erro);

          end if;

        end if;

        v_n_atualizacao := dbms_sql.open_cursor;

        -- Comando update na origem
        dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

        if v_c_erro is not null then
          dbms_sql.bind_variable(v_n_atualizacao, ':p_status', pkg_metadados.sa_com_erro);
        else
          dbms_sql.bind_variable(v_n_atualizacao, ':p_status', pkg_metadados.sa_concluido);
        end if;

        -- Transfere valor do rowid da tabela de origem para comando update
        dbms_sql.column_value(v_n_select_origem, pkg_mapeamento.mapa.numero_colunas+1, v_c_valor);
        dbms_sql.bind_variable(v_n_atualizacao, ':p_rowid', v_c_valor);

        -- Atualiza tabela de origem
        v_n_rows := dbms_sql.execute(v_n_atualizacao);

        dbms_sql.close_cursor(v_n_atualizacao);

      end loop;

      dbms_sql.close_cursor(v_n_select_origem);

    end if;

  end;

  procedure PROCESSA_LOTE
  (
    p_qtd_registros      in out processamento.qtd_registros%type,
    p_qtd_registros_erro in out processamento.qtd_registros_erro%type,
    p_log                in out processamento.log%type
  )
  is

    v_c_select_origem              varchar2(4000);
    v_n_select_origem              integer;
    v_c_update_origem              varchar2(4000);
    v_c_insert_destino             varchar2(4000);
    v_n_atualizacao                integer;
    v_n_rows                       integer;
    v_n_i                          integer;
    v_c_valor                      varchar2(4000);
    v_rowid                        rowid;
    v_b_encontrado                 boolean;
    v_b_atualizado                 boolean;
    v_b_incluir                    boolean;
    v_b_alterar                    boolean;
    v_c_erro                       varchar2(4000);
    v_b_erro                       boolean;

  begin

    v_b_erro := false;

    -- Monta comandos da origem
    v_c_select_origem := pkg_mapeamento.comando_select_origem(pkg_mapeamento.so_todas_colunas);
    v_c_update_origem := pkg_mapeamento.comando_update_origem(pkg_mapeamento.uo_lote);

    -- Monta comandos do destino
    v_c_insert_destino := pkg_mapeamento.comando_insert_destino;

    --
    -- Muda status para "PROCESSANDO"
    --

    v_n_atualizacao := dbms_sql.open_cursor;

    -- Comando update na origem
    dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

    dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_pendente);
    dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_processando);

    -- Atualiza tabela de origem
    v_n_rows := dbms_sql.execute(v_n_atualizacao);

    dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_com_erro);
    dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_processando);

    -- Atualiza tabela de origem
    v_n_rows := dbms_sql.execute(v_n_atualizacao);

    dbms_sql.close_cursor(v_n_atualizacao);

    --
    -- Inicia seleção dos dados da origem
    --

    v_n_select_origem := dbms_sql.open_cursor;

    dbms_sql.parse(v_n_select_origem, v_c_select_origem, dbms_sql.native);

    -- Define colunas da consulta na origem
    for i in 1..pkg_mapeamento.mapa.numero_colunas loop
      dbms_sql.define_column(v_n_select_origem, i, v_c_valor, 4000);
    end loop;

    dbms_sql.bind_variable_char(v_n_select_origem, ':p_status', pkg_metadados.sa_processando);

    -- Executa select na origem
    v_n_rows := dbms_sql.execute(v_n_select_origem);

    loop

      -- Recebe linha do select na origem
      exit when dbms_sql.fetch_rows(v_n_select_origem) = 0;

      -- Atualiza quantidade de registros
      p_qtd_registros := p_qtd_registros + 1;

      v_c_erro := null;

      v_n_atualizacao := dbms_sql.open_cursor;

      begin

        -- Comando insert no destino
        dbms_sql.parse(v_n_atualizacao, v_c_insert_destino, dbms_sql.native);

        --
        -- Carrega valores das colunas origem x destino
        --

        for i in 1..pkg_mapeamento.mapa.numero_colunas loop

          -- Recebe valor da origem
          dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

          -- Faz transformação
          v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

          -- Faz consistência
          if not pkg_consistencia.consiste_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor, v_c_erro) then

            -- Força erro
            raise_application_error(-20000, v_c_erro);

          end if;

          -- Transfere valor transformado da origem para destino
          dbms_sql.bind_variable(v_n_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

        end loop;

        -- Atualiza tabela de destino
        v_n_rows := dbms_sql.execute(v_n_atualizacao);

      exception

        when others then
          v_c_erro := sqlerrm;

      end;

      dbms_sql.close_cursor(v_n_atualizacao);

      if v_c_erro is not null then

        -- Atualiza quantidade de registros
        p_qtd_registros_erro := p_qtd_registros_erro + 1;

        -- Gera log
        escreve_linha_log(p_log, v_c_erro);

        v_b_erro := true;

      end if;

    end loop;

    dbms_sql.close_cursor(v_n_select_origem);

    if v_b_erro then

      --
      -- Muda status para "COM ERRO"
      --

      v_n_atualizacao := dbms_sql.open_cursor;

      -- Comando update na origem
      dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

      dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_processando);
      dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_com_erro);

      -- Atualiza tabela de origem
      v_n_rows := dbms_sql.execute(v_n_atualizacao);

      dbms_sql.close_cursor(v_n_atualizacao);

    else

      --
      -- Muda status para "CONCLUÍDO"
      --

      v_n_atualizacao := dbms_sql.open_cursor;

      -- Comando update na origem
      dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

      dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_processando);
      dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_concluido);

      -- Atualiza tabela de origem
      v_n_rows := dbms_sql.execute(v_n_atualizacao);

      dbms_sql.close_cursor(v_n_atualizacao);

    end if;

  end;

  procedure EXECUTA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  )
  is

    cursor c_processamento
    (
      p_id_processamento in processamento.id_processamento%type
    )
    is
      select
        p2.id_processo,
        p2.id_mapeamento,
        m.tipo_destino
      from
        mapeamento m,
        processo p2,
        processamento p1
      where
        p1.id_processamento = p_id_processamento and
        p2.id_processo = p1.id_processo and
        m.id_mapeamento = p2.id_mapeamento;

    r_processamento  c_processamento%rowtype;

    v_qtd_registros        processamento.qtd_registros%type;
    v_qtd_registros_erro   processamento.qtd_registros_erro%type;
    v_log                  processamento.log%type;

  begin

    open c_processamento (p_id_processamento);

    fetch c_processamento into r_processamento;

    if c_processamento%found then

      v_qtd_registros      := 0;
      v_qtd_registros_erro := 0;
      v_log                := null;

      begin
      
        -- Carrega mapeamento para a memória
        pkg_mapeamento.carrega_mapeamento(r_processamento.id_mapeamento);
  
        -- Caso tipo de destino seja cubo...
        if r_processamento.tipo_destino = pkg_mapeamento.td_cubo then
  
          -- Processa registros em lote
          processa_lote(v_qtd_registros, v_qtd_registros_erro, v_log);
  
        else
  
          -- Processa cada registro
          processa_linha(v_qtd_registros, v_qtd_registros_erro, v_log);
  
        end if;
  
        -- Descarrega mapeamento da memória
        pkg_mapeamento.descarrega_mapeamento;

      exception
      
        when others then
          escreve_linha_log(v_log, sqlerrm);
        
      end;
      
      -- Atualiza registro de processamento
      update processamento
      set
        qtd_registros      = v_qtd_registros,
        qtd_registros_erro = v_qtd_registros_erro,
        log                = v_log
      where
        id_processamento = p_id_processamento;

      -- Atualiza registro de processo
      update processo
      set
        qtd_execucoes      = nvl(qtd_execucoes, 0) + 1,
        qtd_execucoes_erro = nvl(qtd_execucoes_erro, 0) + case when nvl(v_qtd_registros_erro, 0) <> 0 then 1 else 0 end
      where
        id_processo = r_processamento.id_processo;

    end if;

    close c_processamento;

  end;

end PKG_PROCESSAMENTO;
/
