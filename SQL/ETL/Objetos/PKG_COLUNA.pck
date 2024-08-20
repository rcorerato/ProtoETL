create or replace package PKG_COLUNA is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  procedure POPULA_COLUNAS
  (
    p_id_tabela in tabela.id_tabela%type
  );

end PKG_COLUNA;
/
create or replace package body PKG_COLUNA is

  procedure INCLUI_COLUNA
  (
    p_id_tabela      in coluna.id_tabela%type,
    p_nome_coluna    in coluna.nome_coluna%type,
    p_chave_primaria in coluna.chave_primaria%type
  )
  is
  begin

    insert into coluna
    (
      id_coluna,
      id_tabela,
      nome_coluna,
      chave_primaria
    )
    values
    (
      seq_coluna.nextval,
      p_id_tabela,
      p_nome_coluna,
      p_chave_primaria
    );

  end;

  procedure GRAVA_COLUNA
  (
    p_id_tabela      in coluna.id_tabela%type,
    p_nome_coluna    in coluna.nome_coluna%type,
    p_chave_primaria in coluna.chave_primaria%type
  )
  is

    v_id_coluna  coluna.id_coluna%type;

  begin

    begin

      select
        id_coluna
      into
        v_id_coluna
      from
        coluna
      where
        id_tabela = p_id_tabela and
        nome_coluna = p_nome_coluna;

    exception

      when NO_DATA_FOUND then
        null;

    end;

    if v_id_coluna is null then

      inclui_coluna(p_id_tabela, p_nome_coluna, p_chave_primaria);

    else

      update coluna
      set
        chave_primaria = p_chave_primaria
      where
        id_tabela = p_id_tabela and
        nome_coluna = p_nome_coluna;

    end if;

  end;

  procedure POPULA_COLUNAS
  (
    p_id_tabela in tabela.id_tabela%type
  )
  is

    cursor c_coluna
    (
      p_id_tabela in tabela.id_tabela%type
    )
    is
      select
        tc.column_name,
        (
          select
            c.constraint_name
          from
            all_constraints c,
            all_cons_columns cc
          where
            cc.owner = tc.owner and
            cc.table_name = tc.table_name and
            cc.column_name = tc.column_name and
            cc.position = 1 and
            c.owner = cc.owner and
            c.constraint_name = cc.constraint_name and
            c.constraint_type = 'P'
        ) pk_constraint
      from
        all_tab_columns tc,
        tabela t
      where
        t.id_tabela = p_id_tabela and
        tc.owner = upper(t.proprietario) and
        tc.table_name = upper(t.nome_tabela)
      order by
        tc.column_id;

    r_coluna  c_coluna%rowtype;

    v_chave_primaria  coluna.chave_primaria%type;

  begin

    open c_coluna (p_id_tabela);

    loop

      fetch c_coluna into r_coluna;

      exit when c_coluna%notfound;

      if r_coluna.pk_constraint is not null then
        v_chave_primaria := 'S';
      else
        v_chave_primaria := 'N';
      end if;

      grava_coluna(p_id_tabela, r_coluna.column_name, v_chave_primaria);

    end loop;

    close c_coluna;

  end;

end PKG_COLUNA;
/
