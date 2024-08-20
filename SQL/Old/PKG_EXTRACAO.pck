create or replace package PKG_EXTRACAO is

  -- Author  : RODRIGO
  -- Created : 07/05/2006 15:31:51
  -- Purpose : Realizar extração da camada Transacional para a camada ODS
  
  procedure EXTRAI_TRANSACIONAL
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  );
  
end PKG_EXTRACAO;
/
create or replace package body PKG_EXTRACAO is

  -- Constrói comando insert na tabela de destino
  function COMANDO_INSERT_DESTINO
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
    -- Adiciona colunas e valores
    --
    
    v_n_i := 1;
    
    while v_n_i <= pkg_mapeamento.mapa.numero_colunas loop
      
      v_c_coluna_destino := pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino;
      
      while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino = v_c_coluna_destino) loop
      
        v_n_i := v_n_i + 1;
      
      end loop;
      
      if v_c_columns is not null then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_coluna_destino;
    
      if v_c_values is not null then
        v_c_values := v_c_values || ',';
      end if;

      v_c_values := v_c_values || ':' || v_c_coluna_destino;

    end loop;
  
    -- Monta comando
    v_c_result := 'insert into ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' (' || v_c_columns || ') values (' || v_c_values || ')';
  
    return v_c_result;
  
  end;
  
  -- Extrai dados do ambiente transacional
  procedure EXTRAI_TRANSACIONAL
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
    v_c_valor_destino                  varchar2(4000);

  begin
  
    -- Carrega mapeamento para a memória
    pkg_mapeamento.carrega_mapeamento(p_id_mapeamento);

    v_c_select_origem  := pkg_mapeamento.comando_select_origem;
    v_c_insert_destino := comando_insert_destino;

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
      
        -- Faz transformação
        v_c_valor_destino := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor_origem);
      
        -- Grava valor de destino
        dbms_sql.bind_variable(v_n_cursor_insert_destino, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor_destino);
  
      end loop;

      -- Atualiza tabela de destino
      v_n_rows := dbms_sql.execute(v_n_cursor_insert_destino);

      dbms_sql.close_cursor(v_n_cursor_insert_destino);  
      
    end loop;
    
    dbms_sql.close_cursor(v_n_cursor_select_origem);

  end;

end PKG_EXTRACAO;
/
