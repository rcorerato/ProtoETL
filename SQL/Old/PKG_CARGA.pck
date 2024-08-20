create or replace package PKG_CARGA is

  -- Author  : RODRIGO
  -- Created : 06/05/2006 10:42:08
  -- Purpose : Realizar carga da camada ODS para a camada DW
  
  procedure CARREGA_FATO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  );  

end PKG_CARGA;
/
create or replace package body PKG_CARGA is

  -- Constrói comando select na tabela de origem da dimensão
  function COMANDO_SELECT_ORIGEM_DIM
  return varchar2
  is
  
    v_c_result          varchar2(4000);
    v_c_columns         varchar2(4000);
    v_c_from            varchar2(4000);
    v_n_i               integer;
    v_c_tabela_origem   varchar2(30);
  
  begin

    v_c_from := '';
  
    --
    -- Monta clásulas select e from
    --

    -- Adiciona coluna chave única
    v_c_columns := pkg_mapeamento.mapa.coluna_uk_origem;
            
    v_n_i := 1;
    
    while v_n_i <= pkg_mapeamento.mapa.numero_colunas loop
      
      v_c_tabela_origem := pkg_mapeamento.mapa.colunas(v_n_i).prop_tabela_origem || '.' || pkg_mapeamento.mapa.colunas(v_n_i).tabela_origem;

      if v_c_from <> '' then
        v_c_from := v_c_from || ',';
      end if;

      v_c_from := v_c_from || v_c_tabela_origem;
      
      while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (pkg_mapeamento.mapa.colunas(v_n_i).tabela_origem = v_c_tabela_origem) loop

        if v_c_columns <> '' then
          v_c_columns := v_c_columns || ',';
        end if;
        
        v_c_columns := v_c_columns || v_c_tabela_origem || '.' || pkg_mapeamento.mapa.colunas(v_n_i).coluna_origem;

        v_n_i := v_n_i + 1;
      
      end loop;

    end loop;
  
    -- Monta comando
    v_c_result := 'select distinct ' || v_c_columns || ' from ' || v_c_from;
  
    return v_c_result;

  end;

  -- Constrói comando select na tabela de destino da dimensão
  function COMANDO_SELECT_DESTINO_DIM
  return varchar2
  is
  
    v_c_result   varchar2(4000);
    v_c_columns  varchar2(4000);
  
  begin

    v_c_columns := '';
    
    --
    -- Monta cláusula select
    --
    
    for i in 1..pkg_mapeamento.mapa.numero_colunas loop
      
      if v_c_columns <> '' then
        v_c_columns := v_c_columns || ',';
      end if;
      
      v_c_columns := v_c_columns || pkg_mapeamento.mapa.colunas(i).coluna_destino;

    end loop;
  
    -- Monta comando
    v_c_result := 'select ' || v_c_columns || ' from ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' where ' || pkg_mapeamento.mapa.coluna_uk_destino || ' = :' || pkg_mapeamento.mapa.coluna_uk_destino;
  
    return v_c_result;
  
  end;
  
  -- Constrói comando insert na tabela de destino da dimensão
  function COMANDO_INSERT_DESTINO_DIM
  return varchar2
  is
  
    v_c_result   varchar2(4000);
    v_c_columns  varchar2(4000);
    v_c_values   varchar2(4000);
  
  begin

    --
    -- Monta cláusulas columns e values
    --
  
    v_c_columns := '';
    v_c_values  := '';

    -- Caso tenha coluna pk de destino...
    if pkg_mapeamento.mapa.coluna_pk_destino is not null then
  
      if v_c_columns <> '' then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || pkg_mapeamento.mapa.coluna_pk_destino;

      if v_c_values <> '' then
        v_c_values := v_c_values || ',';
      end if;

      if pkg_mapeamento.mapa.sequencia_pk_destino is not null then
        v_c_values := v_c_values || pkg_mapeamento.mapa.sequencia_pk_destino || '.nextval';
      else
        v_c_values := v_c_values || 'null';
      end if;
  
    end if;

    -- Caso tenha coluna uk de origem...
    if pkg_mapeamento.mapa.coluna_uk_origem is not null then
  
      if v_c_columns <> '' then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || pkg_mapeamento.mapa.coluna_uk_origem;

      if v_c_values <> '' then
        v_c_values := v_c_values || ',';
      end if;

      v_c_values := v_c_values || ':' || pkg_mapeamento.mapa.coluna_uk_origem;
    
    end if;
    
    --
    -- Adiciona demais colunas
    --
    
    for i in 1..pkg_mapeamento.mapa.numero_colunas loop
      
      if v_c_columns <> '' then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || pkg_mapeamento.mapa.colunas(i).coluna_destino;
    
      if v_c_values <> '' then
        v_c_values := v_c_values || ',';
      end if;

      v_c_values := v_c_values || ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino;

    end loop;
  
    -- Monta comando
    v_c_result := 'insert into ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' (' || v_c_columns || ') values (' || v_c_values || ')';
  
    return v_c_result;
  
  end;

  -- Constrói comando update na tabela de destino da dimensão
  function COMANDO_UPDATE_DESTINO_DIM
  return varchar2
  is
  
    v_c_result          varchar2(4000);
    v_c_columns_values  varchar2(4000);
  
  begin

    v_c_columns_values := '';
    
    --
    -- Monta clásula set
    --
    
    for i in 1..pkg_mapeamento.mapa.numero_colunas loop
      
      if v_c_columns_values <> '' then
        v_c_columns_values := v_c_columns_values || ',';
      end if;

      v_c_columns_values := v_c_columns_values || pkg_mapeamento.mapa.colunas(i).coluna_destino || ' = :' || pkg_mapeamento.mapa.colunas(i).coluna_destino;

    end loop;
  
    -- Monta comando
    v_c_result := 'update ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || 'set ' || v_c_columns_values || ' where ' || pkg_mapeamento.mapa.coluna_uk_destino || ' = :' || pkg_mapeamento.mapa.coluna_uk_destino;
  
    return v_c_result;
  
  end;

  -- Constrói comando select na tabela de origem da fato
  function COMANDO_SELECT_ORIGEM_FAT
  return varchar2
  is
  
    type t_tabela is record
    (
      proprietario  varchar2(30),
      nome_tabela   varchar2(30)
    );
  
    type t_a_tabela is table of t_tabela index by binary_integer;

    cursor c_juncao
    (
      p_prop_tabela_pai   in tabela.proprietario%type,
      p_nome_tabela_pai   in tabela.nome_tabela%type,
      p_prop_tabela_filho in tabela.proprietario%type,
      p_nome_tabela_filho in tabela.nome_tabela%type
    )
    is
      select
        tp.nome_tabela tabela_pai,
        cp.nome_coluna coluna_pai,
        tf.nome_tabela tabela_filho,
        cf.nome_coluna coluna_filho
      from
        juncao j,
        coluna cf,
        coluna cp,
        tabela tf,
        tabela tp
      where
        tp.nome_tabela = p_nome_tabela_pai and
        tp.proprietario = p_prop_tabela_pai and
        tf.nome_tabela = p_nome_tabela_filho and
        tf.proprietario = p_prop_tabela_filho and
        cp.id_tabela = tp.id_tabela and
        cf.id_tabela = tf.id_tabela and
        j.id_coluna_tabela_pai = cp.id_coluna and
        j.id_coluna_tabela_filho = cf.id_coluna;

    cursor c_filtro
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        c.nome_coluna         coluna,
        t.nome_tabela         tabela,
        f.operador_comparacao operador_comparacao,
        f.valor_comparacao    valor_comparacao
      from
        tabela t,
        coluna c,
        filtro f
      where
        f.id_mapeamento = p_id_mapeamento and
        c.id_coluna = f.id_coluna and
        t.id_tabela = c.id_tabela;
    
    r_juncao  c_juncao%rowtype;
    r_filtro  c_filtro%rowtype;
  
    v_c_result                varchar2(4000);
    v_n_i                     integer;
    v_n_num_tabelas_origem    integer;
    v_c_coluna_destino        varchar2(30);
    v_c_prop_tabela_dimensao  varchar2(30);
    v_c_tabela_dimensao       varchar2(30);
    v_c_coluna_pk_dimensao    varchar2(30);
    v_c_where_sub_select      varchar2(4000);
    v_c_sub_select            varchar2(4000);
    v_c_column                varchar2(4000);
    v_c_columns               varchar2(4000);
    v_c_from                  varchar2(4000);
    v_c_where                 varchar2(4000);
    v_c_prop_tabela_origem    varchar2(30);
    v_c_tabela_origem         varchar2(30);
    v_a_tabela_origem         t_a_tabela;
  
  begin

    --
    -- Monta cláusula select
    --
  
    v_c_columns := '';
    
    v_n_i := 1;
    
    while v_n_i <= pkg_mapeamento.mapa.numero_colunas loop

      v_c_coluna_destino := pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino;
  
      -- Caso haja mapeamento de dimensão...
      if pkg_mapeamento.mapa.colunas(v_n_i).coluna_dimensao is not null then
      
        --
        -- Monta cláusula where do sub-select
        --
        
        v_c_prop_tabela_dimensao := pkg_mapeamento.mapa.colunas(v_n_i).prop_tabela_dimensao;
        v_c_tabela_dimensao      := pkg_mapeamento.mapa.colunas(v_n_i).tabela_dimensao;
      
        v_c_where_sub_select := '';
      
        while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino = v_c_coluna_destino) and (pkg_mapeamento.mapa.colunas(v_n_i).tabela_dimensao = v_c_tabela_dimensao) loop

          if v_c_where_sub_select <> '' then
            v_c_where_sub_select := v_c_where_sub_select || ' and ';
          end if;
                              
          v_c_where_sub_select := v_c_where_sub_select || 'dim.' || pkg_mapeamento.mapa.colunas(v_n_i).coluna_dimensao || ' = fat.' || pkg_mapeamento.mapa.colunas(v_n_i).coluna_origem;
        
          v_n_i := v_n_i + 1;
        
        end loop;        

        -- Obtém nome da coluna chave-primária da tabela dimensão
        v_c_coluna_pk_dimensao := pkg_metadados.nome_coluna(pkg_metadados.id_coluna_pk(pkg_metadados.id_tabela(v_c_tabela_dimensao)));
        
        -- Monta sub-select para buscar chave-primária da dimensão
        v_c_sub_select := 'select dim.' || v_c_coluna_pk_dimensao || ' from ' || v_c_prop_tabela_dimensao || '.' || v_c_tabela_dimensao || ' dim where ' || v_c_where_sub_select;

        -- Sub-select será a coluna
        v_c_column := '(' || v_c_sub_select || ')';
        
      else

        -- Coluna de origem será a coluna      
        v_c_column := pkg_mapeamento.mapa.colunas(v_n_i).coluna_origem;
        
        if pkg_mapeamento.mapa.colunas(v_n_i).funcao_grupo is not null then
  
          -- Adiciona função de grupo
          v_c_column := pkg_mapeamento.mapa.colunas(v_n_i).funcao_grupo || '(' || v_c_column || ')';
        
        end if;

        v_n_i := v_n_i + 1;
      
      end if;
      
      v_c_column := v_c_column || ' ' || v_c_coluna_destino;
      
      if v_c_columns <> '' then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_column;
      
    end loop;

    --
    -- Monta cláusula from
    --
    
    v_n_i := 1;
    v_n_num_tabelas_origem := 0;
    
    while v_n_i <= pkg_mapeamento.mapa.numero_colunas loop
      
      v_c_prop_tabela_origem := pkg_mapeamento.mapa.colunas(v_n_i).prop_tabela_origem;
      v_c_tabela_origem      := pkg_mapeamento.mapa.colunas(v_n_i).tabela_origem;

      v_n_num_tabelas_origem := v_n_num_tabelas_origem + 1;      

      v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := v_c_prop_tabela_origem;
      v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := v_c_tabela_origem;
      
      while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (pkg_mapeamento.mapa.colunas(v_n_i).tabela_origem = v_c_tabela_origem) loop

        v_n_i := v_n_i + 1;
      
      end loop;

    end loop;
    
    v_c_from := '';

    for i in 1..v_n_num_tabelas_origem loop
    
      if v_c_from <> '' then
        v_c_from := v_c_from || ',';
      end if;

      v_c_from := v_c_from || v_a_tabela_origem(i).proprietario || '.' || v_a_tabela_origem(i).nome_tabela;
    
    end loop;
  
    --
    -- Monta cláusula where
    --
  
    for i in 1..v_n_num_tabelas_origem loop
    
      for j in 1..v_n_num_tabelas_origem loop
      
        open c_juncao (v_a_tabela_origem(i).proprietario, v_a_tabela_origem(i).nome_tabela, v_a_tabela_origem(j).proprietario, v_a_tabela_origem(j).nome_tabela);
        
        loop
        
          fetch c_juncao into r_juncao;
          
          exit when c_juncao%notfound;
        
          if v_c_where <> '' then
            v_c_where := v_c_where || ' and ';
          end if;

          v_c_where := v_c_where || r_juncao.tabela_filho || '.' || r_juncao.coluna_filho || ' = ' || r_juncao.tabela_pai || '.' || r_juncao.coluna_pai;
        
        end loop;
        
        close c_juncao;
      
      end loop;
    
    end loop;    

    open c_filtro (pkg_mapeamento.mapa.id_mapeamento);
    
    loop
    
      fetch c_filtro into r_filtro;
    
      exit when c_filtro%notfound;
      
      if v_c_where <> '' then
        v_c_where := v_c_where || ' and ';
      end if;

      v_c_where := v_c_where || r_filtro.tabela || '.' || r_filtro.coluna || ' ' || r_filtro.operador_comparacao || ' ' || case when upper(r_filtro.operador_comparacao) = 'IN' then '(' else '' end || '''' || r_filtro.valor_comparacao || '''' || case when upper(r_filtro.operador_comparacao) = 'IN' then ')' else '' end;
    
    end loop;
    
    close c_filtro;

    -- Monta comando
    v_c_result := 'select ' || v_c_columns || ' from ' || v_c_from || ' fat';
  
    return v_c_result;

  end;
  
  -- Constrói comando insert na tabela de destino da fato
  function COMANDO_INSERT_DESTINO_FAT
  return varchar2
  is
  
    v_c_result          varchar2(4000);
    v_n_i               integer;
    v_c_coluna_destino  varchar2(30);
    v_c_columns         varchar2(4000);
    v_c_values          varchar2(4000);
  
  begin

    v_c_columns := '';
    v_c_values  := '';
    
    --
    -- Monta clásulas columns e values
    --
    
    v_n_i := 1;
    
    while v_n_i <= pkg_mapeamento.mapa.numero_colunas loop
      
      v_c_coluna_destino := pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino;
      
      while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino = v_c_coluna_destino) loop
      
        v_n_i := v_n_i + 1;
      
      end loop;
      
      if v_c_columns <> '' then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_coluna_destino;
    
      if v_c_values <> '' then
        v_c_values := v_c_values || ',';
      end if;

      v_c_values := v_c_values || ':' || v_c_coluna_destino;

    end loop;
  
    -- Monta comando
    v_c_result := 'insert into ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' (' || v_c_columns || ') values (' || v_c_values || ')';
  
    return v_c_result;
  
  end;
  
  -- Carrega dimensão
  procedure CARREGA_DIMENSAO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  )
  is

    v_c_select_origem                  varchar2(4000);
    v_c_select_destino                 varchar2(4000);
    v_c_insert_destino                 varchar2(4000);
    v_c_update_destino                 varchar2(4000);
    v_b_encontrado                     boolean;
    v_b_alterado                       boolean;
    v_n_i                              integer;
    v_n_cursor_select_origem           integer;
    v_n_cursor_select_destino          integer;
    v_n_cursor_atualizacao             integer;
    v_n_rows                           integer;
    v_c_valor_origem                   varchar2(4000);
    v_c_valor_destino                  varchar2(4000);
  
  begin
  
    -- Carrega mapeamento para a memória
    pkg_mapeamento.carrega_mapeamento(p_id_mapeamento);
  
    v_c_select_origem  := comando_select_origem_dim;
    v_c_select_destino := comando_select_destino_dim;
    v_c_insert_destino := comando_insert_destino_dim;
    v_c_update_destino := comando_update_destino_dim;

    v_n_cursor_select_origem := dbms_sql.open_cursor;

    dbms_sql.parse(v_n_cursor_select_origem, v_c_select_origem, dbms_sql.native);

    -- Consulta tabela de origem
    v_n_rows := dbms_sql.execute(v_n_cursor_select_origem);    
    
    loop
    
      exit when dbms_sql.fetch_rows(v_n_cursor_select_origem) = 0;

      v_n_cursor_select_destino := dbms_sql.open_cursor;
  
      dbms_sql.parse(v_n_cursor_select_destino, v_c_select_destino, dbms_sql.native);

      dbms_sql.column_value_char(v_n_cursor_select_origem, 1, v_c_valor_origem);
      
      dbms_sql.bind_variable_char(v_n_cursor_select_destino, ':' || pkg_mapeamento.mapa.coluna_uk_destino, v_c_valor_origem);
  
      -- Consulta tabela de destino
      v_n_rows := dbms_sql.execute(v_n_cursor_select_destino);

      v_b_encontrado := (dbms_sql.fetch_rows(v_n_cursor_select_destino) > 0);
      v_b_alterado   := false;
      
      if v_b_encontrado then
      
        v_n_i := 1;
      
        -- Compara campos das tabelas de origem e destino        
        while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (not v_b_alterado) loop
        
          dbms_sql.column_value_char(v_n_cursor_select_origem, v_n_i+1, v_c_valor_origem);
        
          dbms_sql.column_value_char(v_n_cursor_select_destino, v_n_i, v_c_valor_destino);

          v_b_alterado := (v_c_valor_origem <> v_c_valor_destino);

          v_n_i := v_n_i + 1;
  
        end loop;
      
      end if;
      
      dbms_sql.close_cursor(v_n_cursor_select_destino);
        
      -- Caso registro destino não exista ou tenha sido alterado...
      if (not v_b_encontrado) or v_b_alterado then
      
        v_n_cursor_atualizacao := dbms_sql.open_cursor;
      
        -- Caso registro destino não tenha sido encontrado ou tenha sido alterado e o tipo de atualização seja 2...
        if (not v_b_encontrado) or (v_b_alterado and (pkg_mapeamento.mapa.tipo_atualizacao_dimensao = '2')) then
        
          -- Prepara comando de inclusão
          dbms_sql.parse(v_n_cursor_atualizacao, v_c_insert_destino, dbms_sql.native);
      
        -- Caso registro tenha sido alterado e o tipo de atualização seja 1...
        elsif (v_b_alterado and (pkg_mapeamento.mapa.tipo_atualizacao_dimensao = '1')) then
        
          -- Prepara comando de alteração
          dbms_sql.parse(v_n_cursor_atualizacao, v_c_update_destino, dbms_sql.native);
      
        end if;
  
        --
        -- Carrega valores das colunas origem x destino    
        --
        
        dbms_sql.column_value_char(v_n_cursor_select_origem, 1, v_c_valor_origem);
        
        dbms_sql.bind_variable(v_n_cursor_atualizacao, ':' || pkg_mapeamento.mapa.coluna_uk_destino, v_c_valor_origem);

        for i in 1..pkg_mapeamento.mapa.numero_colunas loop
        
          -- Obtém valor de origem
          dbms_sql.column_value_char(v_n_cursor_select_origem, i+1, v_c_valor_origem);
        
          -- Grava valor de destino
          dbms_sql.bind_variable(v_n_cursor_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor_origem);
    
        end loop;
        
        -- Atualiza tabela de destino
        v_n_rows := dbms_sql.execute(v_n_cursor_atualizacao);
      
        dbms_sql.close_cursor(v_n_cursor_atualizacao);      

      end if;
      
    end loop;
    
    dbms_sql.close_cursor(v_n_cursor_select_origem);
  
  end;

  -- Carrega dimensções relacionadas a fato
  procedure CARREGA_DIMENSOES_FATO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  )
  is
  
    cursor c_mapeamento_dimensao
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select distinct
        mco.id_mapeamento
      from
        mapeamento_coluna mco,
        mapeamento_coluna mc,
        mapeamento mt
      where
        mt.id_mapeamento = p_id_mapeamento and
        mc.id_mapeamento = mt.id_mapeamento and
        mco.id_mapeamento_coluna = mc.id_mapeamento_coluna_origem;
        
    r_mapeamento_dimensao  c_mapeamento_dimensao%rowtype;
  
  begin
  
    open c_mapeamento_dimensao (p_id_mapeamento);
  
    loop

      fetch c_mapeamento_dimensao into r_mapeamento_dimensao;
      
      exit when c_mapeamento_dimensao%notfound;
  
      -- Carrega dimensão
      carrega_dimensao(r_mapeamento_dimensao.id_mapeamento);
  
    end loop;
  
    close c_mapeamento_dimensao;
  
  end;

  -- Carrega fato  
  procedure CARREGA_FATO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  )
  is

    v_c_select_origem                  varchar2(4000);
    v_c_insert_destino                 varchar2(4000);
    v_n_cursor_select_origem           integer;
    v_n_cursor_insert_destino          integer;
    v_n_rows                           integer;
    v_c_valor_origem                   varchar2(4000);

  begin
  
    -- Carrega tabelas dimensões
    carrega_dimensoes_fato(p_id_mapeamento);
  
    -- Carrega mapeamento para a memória
    pkg_mapeamento.carrega_mapeamento(p_id_mapeamento);

    v_c_select_origem  := comando_select_origem_fat;
    v_c_insert_destino := comando_insert_destino_fat;

    v_n_cursor_select_origem := dbms_sql.open_cursor;

    dbms_sql.parse(v_n_cursor_select_origem, v_c_select_origem, dbms_sql.native);

    -- Consulta tabela de origem
    v_n_rows := dbms_sql.execute(v_n_cursor_select_origem);    
    
    loop
    
      exit when dbms_sql.fetch_rows(v_n_cursor_select_origem) = 0;

      v_n_cursor_insert_destino := dbms_sql.open_cursor;

      dbms_sql.parse(v_n_cursor_insert_destino, v_c_insert_destino, dbms_sql.native);
      
      --
      -- Carrega valores das colunas origem x destino    
      --

      for i in 1..pkg_mapeamento.mapa.numero_colunas loop

        -- Obtém valor de origem
        dbms_sql.column_value_char(v_n_cursor_select_origem, i, v_c_valor_origem);
      
        -- Grava valor de destino
        dbms_sql.bind_variable(v_n_cursor_insert_destino, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor_origem);
  
      end loop;

      -- Atualiza tabela de destino
      v_n_rows := dbms_sql.execute(v_n_cursor_insert_destino);

      dbms_sql.close_cursor(v_n_cursor_insert_destino);  
      
    end loop;
    
    dbms_sql.close_cursor(v_n_cursor_select_origem);
  
  end;

end PKG_CARGA;
/
