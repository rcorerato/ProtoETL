create or replace package PKG_TABELA is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  procedure POPULA_TABELAS
  (
    p_proprietario in tabela.proprietario%type
  );

end PKG_TABELA;
/
create or replace package body PKG_TABELA is

  procedure INCLUI_TABELA
  (
    p_nome_tabela  in tabela.nome_tabela%type,
    p_proprietario in tabela.proprietario%type
  )
  is
  begin

    insert into tabela
    (
      id_tabela,
      nome_tabela,
      proprietario
    )
    values
    (
      seq_tabela.nextval,
      p_nome_tabela,
      p_proprietario
    );

  end;

  procedure GRAVA_TABELA
  (
    p_nome_tabela  in tabela.nome_tabela%type,
    p_proprietario in tabela.proprietario%type
  )
  is

    v_id_tabela  tabela.id_tabela%type;

  begin

    begin

      select
        id_tabela
      into
        v_id_tabela
      from
        tabela
      where
        nome_tabela = p_nome_tabela and
        proprietario = p_proprietario;

    exception

      when NO_DATA_FOUND then
        null;

    end;

    if v_id_tabela is null then

      inclui_tabela(p_nome_tabela, p_proprietario);

    end if;

  end;

  procedure POPULA_TABELAS
  (
    p_proprietario in tabela.proprietario%type
  )
  is

    cursor c_tabela
    (
      p_proprietario in tabela.proprietario%type
    )
    is
      select
        t.owner,
        t.table_name
      from
        all_tables t
      where
        t.owner = p_proprietario;

    r_tabela  c_tabela%rowtype;

    v_id_tabela  tabela.id_tabela%type;

  begin

    open c_tabela (p_proprietario);

    loop

      fetch c_tabela into r_tabela;

      exit when c_tabela%notfound;

      grava_tabela(r_tabela.table_name, r_tabela.owner);

      begin

      select
        id_tabela
      into
        v_id_tabela
      from
        tabela
      where
        nome_tabela = r_tabela.table_name and
        proprietario = r_tabela.owner;

      exception

        when NO_DATA_FOUND then
          null;

      end;

      pkg_coluna.popula_colunas(v_id_tabela);

    end loop;

    close c_tabela;

  end;

end PKG_TABELA;
/
