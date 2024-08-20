create or replace package PKG_JUNCAO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  procedure INCLUI_JUNCAO
  (
    p_id_coluna_tabela_pai   in juncao.id_coluna_tabela_pai%type,
    p_id_coluna_tabela_filho in juncao.id_coluna_tabela_filho%type
  );

  procedure GRAVA_JUNCAO
  (
    p_id_coluna_tabela_pai   in juncao.id_coluna_tabela_pai%type,
    p_id_coluna_tabela_filho in juncao.id_coluna_tabela_filho%type
  );

  procedure POPULA_JUNCOES;

end PKG_JUNCAO;
/
create or replace package body PKG_JUNCAO is

  procedure INCLUI_JUNCAO
  (
    p_id_coluna_tabela_pai   in juncao.id_coluna_tabela_pai%type,
    p_id_coluna_tabela_filho in juncao.id_coluna_tabela_filho%type
  )
  is
  begin

    insert into juncao
    (
      id_juncao,
      id_coluna_tabela_pai,
      id_coluna_tabela_filho
    )
    values
    (
      seq_juncao.nextval,
      p_id_coluna_tabela_pai,
      p_id_coluna_tabela_filho
    );

  end;

  procedure GRAVA_JUNCAO
  (
    p_id_coluna_tabela_pai   in juncao.id_coluna_tabela_pai%type,
    p_id_coluna_tabela_filho in juncao.id_coluna_tabela_filho%type
  )
  is

    v_id_juncao  juncao.id_juncao%type;

  begin

    begin

      select
        id_juncao
      into
        v_id_juncao
      from
        juncao
      where
        id_coluna_tabela_pai = p_id_coluna_tabela_pai and
        id_coluna_tabela_filho = p_id_coluna_tabela_filho;

    exception

      when NO_DATA_FOUND then
        null;

    end;

    if v_id_juncao is null then

      inclui_juncao(p_id_coluna_tabela_pai, p_id_coluna_tabela_filho);

    end if;

  end;

  procedure POPULA_JUNCOES
  is

    cursor c_juncao
    is
      select
        cp.id_coluna id_coluna_tabela_pai,
        cf.id_coluna id_coluna_tabela_filho
      from
        coluna           cp,
        tabela           tp,
        all_cons_columns ccpk,
        coluna           cf,
        all_cons_columns ccfk,
        all_constraints  cfk,
        tabela           tf
      where
        cfk.owner = tf.proprietario and
        cfk.table_name = tf.nome_tabela and
        cfk.constraint_type = 'R' and
        ccfk.owner = cfk.owner and
        ccfk.constraint_name = cfk.constraint_name and
        cf.id_tabela = tf.id_tabela and
        cf.nome_coluna = ccfk.column_name and
        ccpk.owner = cfk.r_owner and
        ccpk.constraint_name = cfk.r_constraint_name and
        tp.proprietario = ccpk.owner and
        tp.nome_tabela = ccpk.table_name and
        cp.id_tabela = tp.id_tabela and
        cp.nome_coluna = ccpk.column_name
      order by
        tf.nome_tabela,
        ccfk.position;

    r_juncao  c_juncao%rowtype;

  begin

    open c_juncao;

    loop

      fetch c_juncao into r_juncao;

      exit when c_juncao%notfound;

      grava_juncao(r_juncao.id_coluna_tabela_pai, r_juncao.id_coluna_tabela_filho);

    end loop;

    close c_juncao;

  end;

end PKG_JUNCAO;
/
