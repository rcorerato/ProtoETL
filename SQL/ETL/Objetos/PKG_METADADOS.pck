create or replace package PKG_METADADOS is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  SA_PENDENTE    constant integer := 0;
  SA_PROCESSANDO constant integer := 1;
  SA_CONCLUIDO   constant integer := 2;
  SA_COM_ERRO    constant integer := 3;

  function NOME_TABELA
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return tabela.nome_tabela%type;

  function ID_TABELA
  (
    p_nome_tabela in tabela.nome_tabela%type
  )
  return tabela.id_tabela%type;

  function NOME_COLUNA
  (
    p_id_coluna in coluna.id_coluna%type
  )
  return coluna.nome_coluna%type;

  function ID_COLUNA
  (
    p_id_tabela   in coluna.id_tabela%type,
    p_nome_coluna in coluna.nome_coluna%type
  )
  return coluna.id_coluna%type;

  function ID_COLUNA_PK
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return coluna.id_coluna%type;

end PKG_METADADOS;
/
create or replace package body PKG_METADADOS is

  -- Retorna nome da tabela correspondente ao id
  function NOME_TABELA
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return tabela.nome_tabela%type
  is

    v_result  tabela.nome_tabela%type;

  begin

    select
      t.nome_tabela
    into
      v_result
    from
      tabela t
    where
      t.id_tabela = p_id_tabela;

    return v_result;

  end;

  -- Retorna id correspondente ao nome da tabela
  function ID_TABELA
  (
    p_nome_tabela in tabela.nome_tabela%type
  )
  return tabela.id_tabela%type
  is

    v_result  tabela.id_tabela%type;

  begin

    select
      t.id_tabela
    into
      v_result
    from
      tabela t
    where
      t.nome_tabela = p_nome_tabela;

    return v_result;

  end;

  -- Retorna nome da coluna correspondente ao id
  function NOME_COLUNA
  (
    p_id_coluna in coluna.id_coluna%type
  )
  return coluna.nome_coluna%type
  is

    v_result  coluna.nome_coluna%type;

  begin

    select
      c.nome_coluna
    into
      v_result
    from
      coluna c
    where
      c.id_coluna = p_id_coluna;

    return v_result;

  end;

  -- Retorna id correspondente ao nome da coluna
  function ID_COLUNA
  (
    p_id_tabela   in coluna.id_tabela%type,
    p_nome_coluna in coluna.nome_coluna%type
  )
  return coluna.id_coluna%type
  is

    v_result  coluna.id_coluna%type;

  begin

    select
      c.id_coluna
    into
      v_result
    from
      coluna c
    where
      c.id_tabela = p_id_tabela and
      c.nome_coluna = p_nome_coluna;

    return v_result;

  end;

  -- Retorna id da coluna chave primária da tabela
  function ID_COLUNA_PK
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return coluna.id_coluna%type
  is

    v_result  coluna.id_coluna%type;

  begin

    select
      c.id_coluna
    into
      v_result
    from
      coluna c
    where
      c.id_tabela = p_id_tabela and
      c.chave_primaria = 'S';

    return v_result;

  end;

end PKG_METADADOS;
/
