create or replace package PKG_NOTIFICACAO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  procedure notifica_linha
  (
    p_proprietario in notificacao.proprietario%type,
    p_tabela       in notificacao.tabela%type,
    p_chave_pk     in notificacao.chave_pk%type
  );

end PKG_NOTIFICACAO;
/
create or replace package body PKG_NOTIFICACAO is

  procedure inclui_notificacao
  (
    p_proprietario in notificacao.proprietario%type,
    p_tabela       in notificacao.tabela%type,
    p_chave_pk     in notificacao.chave_pk%type
  )
  is
  begin

    insert into notificacao
    (
      proprietario,
      tabela,
      chave_pk,
      data_notificacao
    )
    values
    (
      p_proprietario,
      p_tabela,
      p_chave_pk,
      sysdate
    );

  end;

  procedure notifica_linha
  (
    p_proprietario in notificacao.proprietario%type,
    p_tabela       in notificacao.tabela%type,
    p_chave_pk     in notificacao.chave_pk%type
  )
  is

    cursor c_primary_key
    (
      p_proprietario in notificacao.proprietario%type,
      p_tabela       in notificacao.tabela%type
    )
    is
      select
        cc.column_name
      from
        all_cons_columns cc,
        all_constraints  c
      where
        c.owner = p_proprietario and
        c.table_name = p_tabela and
        c.constraint_type = 'P' and
        cc.owner = c.owner and
        cc.table_name = c.table_name and
        cc.constraint_name = c.constraint_name
      order by
        cc.position;

    r_primary_key  c_primary_key%rowtype;

    v_n_select  integer;
    v_s_select  varchar2(4000);
    v_n_rows    integer;
    v_chave_pk  notificacao.chave_pk%type;

  begin

    if p_chave_pk is not null then

      inclui_notificacao(p_proprietario, p_tabela, p_chave_pk);

    else

      v_s_select := null;

      open c_primary_key(p_proprietario, p_tabela);

      fetch c_primary_key into r_primary_key;

      if c_primary_key%found then

        v_s_select := 'select ' || r_primary_key.column_name || ' from ' || p_proprietario || '.' || p_tabela;

      end if;

      close c_primary_key;

      v_n_select := dbms_sql.open_cursor;

      dbms_sql.parse(v_n_select, v_s_select, dbms_sql.native);

      dbms_sql.define_column(v_n_select, 1, v_chave_pk, 20);

      v_n_rows := dbms_sql.execute(v_n_select);

      loop

        exit when dbms_sql.fetch_rows(v_n_select) = 0;

        dbms_sql.column_value(v_n_select, 1, v_chave_pk);

        inclui_notificacao(p_proprietario, p_tabela, v_chave_pk);

      end loop;

      dbms_sql.close_cursor(v_n_select);

    end if;

  end;

end PKG_NOTIFICACAO;
/
