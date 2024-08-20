-----------------------------------------------
-- Export file for user RODRIGO              --
-- Created by Rodrigo on 12/3/2008, 23:43:42 --
-----------------------------------------------

spool udf_equacao.log

prompt
prompt Creating table UDF_EQUACAO
prompt ==========================
prompt
create table UDF_EQUACAO
(
  ID                            NUMBER not null,
  CODIGO                        VARCHAR2(40) not null,
  DESCRICAO                     VARCHAR2(100),
  ID_EQUACAO_OPERACAO_RESULTADO NUMBER
)
tablespace USERS
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO
  add constraint UDF_EQUACAO_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO
  add constraint UDF_EQUACAO_UK unique (CODIGO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table UDF_EQUACAO_VARIAVEL
prompt ===================================
prompt
create table UDF_EQUACAO_VARIAVEL
(
  ID         NUMBER not null,
  ID_EQUACAO NUMBER not null,
  VARIAVEL   VARCHAR2(40) not null
)
tablespace USERS
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO_VARIAVEL
  add constraint UDF_EQUACAO_VARIAVEL_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO_VARIAVEL
  add constraint UDF_EQUACAO_VARIAVEL_UK unique (ID_EQUACAO,VARIAVEL)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO_VARIAVEL
  add constraint UDF_EQUACAO_VARIAVEL_FK1 foreign key (ID_EQUACAO)
  references UDF_EQUACAO (ID) on delete cascade;

prompt
prompt Creating table UDF_EQUACAO_OPERACAO
prompt ===================================
prompt
create table UDF_EQUACAO_OPERACAO
(
  ID                   NUMBER not null,
  ID_EQUACAO           NUMBER not null,
  SEQUENCIA_EQUACAO    NUMBER not null,
  VALOR1               NUMBER,
  ID_EQUACAO_VARIAVEL1 NUMBER,
  ID_EQUACAO_OPERACAO1 NUMBER,
  TIPO_OPERACAO        VARCHAR2(1) not null,
  VALOR2               NUMBER,
  ID_EQUACAO_VARIAVEL2 NUMBER,
  ID_EQUACAO_OPERACAO2 NUMBER
)
tablespace USERS
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_UK unique (ID_EQUACAO,SEQUENCIA_EQUACAO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_FK1 foreign key (ID_EQUACAO)
  references UDF_EQUACAO (ID) on delete cascade;
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_FK2 foreign key (ID_EQUACAO_VARIAVEL1)
  references UDF_EQUACAO_VARIAVEL (ID);
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_FK3 foreign key (ID_EQUACAO_OPERACAO1)
  references UDF_EQUACAO_OPERACAO (ID);
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_FK4 foreign key (ID_EQUACAO_VARIAVEL2)
  references UDF_EQUACAO_VARIAVEL (ID);
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_FK5 foreign key (ID_EQUACAO_OPERACAO2)
  references UDF_EQUACAO_OPERACAO (ID);
alter table UDF_EQUACAO_OPERACAO
  add constraint UDF_EQUACAO_OPERACAO_CHK1
  check (TIPO_OPERACAO IN ('A','S','M','D','P','R'));

alter table UDF_EQUACAO
  add constraint UDF_EQUACAO_FK1 foreign key (ID_EQUACAO_OPERACAO_RESULTADO)
  references UDF_EQUACAO_OPERACAO (ID) on delete set null;

prompt
prompt Creating sequence SEQ_UDF_EQUACAO
prompt =============================
prompt
create sequence SEQ_UDF_EQUACAO
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_UDF_EQUACAO_OPERACAO
prompt ======================================
prompt
create sequence SEQ_UDF_EQUACAO_OPERACAO
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_UDF_EQUACAO_VARIAVEL
prompt ======================================
prompt
create sequence SEQ_UDF_EQUACAO_VARIAVEL
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating package PKG_UDF_EQUACAO
prompt ============================
prompt
create or replace package PKG_UDF_EQUACAO is

  -- Author  : RODRIGO CORERATO
  -- Created : 12/3/2008 22:27:53
  -- Purpose : 
  
  procedure carrega_equacao
  (
    p_codigo in udf_equacao.codigo%type
  );

  procedure define_variavel
  (
    p_variavel in udf_equacao_variavel.variavel%type,
    p_n_valor  in number
  );
  
  function calcula_resultado
  return number;

end PKG_UDF_EQUACAO;
/

create or replace package PKG_UDF_EQUACAO is

  -- Author  : RODRIGO CORERATO
  -- Created : 12/3/2008 22:27:53
  -- Purpose :

  procedure carrega_equacao
  (
    p_codigo in udf_equacao.codigo%type
  );

  procedure define_variavel
  (
    p_variavel in udf_equacao_variavel.variavel%type,
    p_n_valor  in number
  );

  function calcula_resultado
  return number;

  function recupera_resultado_operacao
  (
    p_sequencia_equacao in udf_equacao_operacao.sequencia_equacao%type
  )
  return number;
  
end PKG_UDF_EQUACAO;
/

create or replace package body PKG_UDF_EQUACAO is

  v_id_equacao  number;

  type t_r_udf_equacao_variavel is record
  (
    variavel  udf_equacao_variavel.variavel%type,
    valor     number
  );

  type t_a_equacao_variavel is table of t_r_udf_equacao_variavel index by binary_integer;
  type t_a_operacao_resultado is table of number index by binary_integer;

  v_a_equacao_variavel    t_a_equacao_variavel;
  v_n_equacao_variavel    number;

  v_a_operacao_resultado  t_a_operacao_resultado;
  
  function recupera_variavel
  (
    p_variavel in udf_equacao_variavel.variavel%type
  )
  return number
  is

    i          integer;
    v_n_valor  number;

  begin

    v_n_valor := null;

    i := 1;

    while i <= v_n_equacao_variavel loop

      if v_a_equacao_variavel(i).variavel = p_variavel then

        v_n_valor := v_a_equacao_variavel(i).valor;
        i := v_n_equacao_variavel;

      end if;

      i := i + 1;

    end loop;

    return v_n_valor;

  end;

  procedure carrega_equacao
  (
    p_codigo in udf_equacao.codigo%type
  )
  is

    cursor c_udf_equacao
    (
      p_codigo in udf_equacao.codigo%type
    )
    is
      select
        e.id
      from
        udf_equacao e
      where
        e.codigo = p_codigo;

    r_udf_equacao  c_udf_equacao%rowtype;

  begin

    open c_udf_equacao(p_codigo);
    fetch c_udf_equacao into r_udf_equacao;
    close c_udf_equacao;

    v_id_equacao         := r_udf_equacao.id;
    v_n_equacao_variavel := 0;

  end;

  procedure define_variavel
  (
    p_variavel in udf_equacao_variavel.variavel%type,
    p_n_valor  in number
  )
  is

    cursor c_udf_equacao
    (
      p_id_equacao in udf_equacao.id%type
    )
    is
      select
        e.codigo
      from
        udf_equacao e
      where
        e.id = p_id_equacao;

    cursor c_udf_equacao_variavel
    (
      p_id_equacao in udf_equacao_variavel.id_equacao%type,
      p_variavel   in udf_equacao_variavel.variavel%type
    )
    is
      select
        ev.id,
        ev.variavel
      from
        udf_equacao_variavel ev
      where
        ev.id_equacao = p_id_equacao and
        ev.variavel = p_variavel;

    r_udf_equacao           c_udf_equacao%rowtype;
    r_udf_equacao_variavel  c_udf_equacao_variavel%rowtype;

    i        integer;
    v_n_pos  integer;

  begin

    open c_udf_equacao(v_id_equacao);
    fetch c_udf_equacao into r_udf_equacao;
    close c_udf_equacao;

    open c_udf_equacao_variavel(v_id_equacao, p_variavel);
    fetch c_udf_equacao_variavel into r_udf_equacao_variavel;
    close c_udf_equacao_variavel;

    v_n_pos := 0;

    i := 1;

    while i <= v_n_equacao_variavel loop

      if v_a_equacao_variavel(i).variavel = r_udf_equacao_variavel.variavel then

        v_n_pos := i;
        i := v_n_equacao_variavel;

      end if;

      i := i + 1;

    end loop;

    if v_n_pos = 0 then

      v_n_equacao_variavel := nvl(v_n_equacao_variavel, 0) + 1;
      v_n_pos              := v_n_equacao_variavel;

      v_a_equacao_variavel(v_n_pos).variavel := r_udf_equacao_variavel.variavel;

    end if;

    v_a_equacao_variavel(v_n_pos).valor := p_n_valor;

  end;

  procedure calcula_operacao
  (
    p_sequencia_equacao in udf_equacao_operacao.sequencia_equacao%type
  )
  is
  
    cursor c_udf_equacao_operacao
    (
      p_id_equacao         udf_equacao_operacao.id_equacao%type,
      p_sequencia_equacao udf_equacao_operacao.sequencia_equacao%type
    )
    is
      select
        eo.id,
        eo.tipo_operacao,
        eo.valor1,
        ev1.variavel variavel1,
        eo1.sequencia_equacao sequencia_equacao1,
        eo.valor2,
        ev2.variavel variavel2,
        eo2.sequencia_equacao sequencia_equacao2
      from
        udf_equacao_operacao  eo2,
        udf_equacao_operacao  eo1,
        udf_equacao_variavel  ev2,
        udf_equacao_variavel  ev1,
        udf_equacao_operacao  eo
      where
        eo.id_equacao = p_id_equacao and
        eo.sequencia_equacao = p_sequencia_equacao and
        ev1.id(+) = eo.id_equacao_variavel1 and
        ev2.id(+) = eo.id_equacao_variavel2 and
        eo1.id(+) = eo.id_equacao_operacao1 and
        eo2.id(+) = eo.id_equacao_operacao2
      order by
        eo.sequencia_equacao;

    r_udf_equacao_operacao  c_udf_equacao_operacao%rowtype;

    v_n_valor1     number;
    v_n_valor2     number;
  
  begin
  
    open c_udf_equacao_operacao(v_id_equacao, p_sequencia_equacao);

    fetch c_udf_equacao_operacao into r_udf_equacao_operacao;
    
    if c_udf_equacao_operacao%found then
    
      v_n_valor1 := null;
      if r_udf_equacao_operacao.sequencia_equacao1 is not null then
        v_n_valor1 := v_a_operacao_resultado(r_udf_equacao_operacao.sequencia_equacao1);
      end if;
      if v_n_valor1 is null then
        v_n_valor1 := recupera_variavel(r_udf_equacao_operacao.variavel1);
      end if;
      if v_n_valor1 is null then
        v_n_valor1 := r_udf_equacao_operacao.valor1;
      end if;

      v_n_valor2 := null;
      if r_udf_equacao_operacao.sequencia_equacao2 is not null then
        v_n_valor2 := v_a_operacao_resultado(r_udf_equacao_operacao.sequencia_equacao2);
      end if;
      if v_n_valor2 is null then
        v_n_valor2 := recupera_variavel(r_udf_equacao_operacao.variavel2);
      end if;
      if v_n_valor2 is null then
        v_n_valor2 := r_udf_equacao_operacao.valor2;
      end if;

      if r_udf_equacao_operacao.tipo_operacao = 'A' then
        v_a_operacao_resultado(p_sequencia_equacao) := v_n_valor1 + v_n_valor2;
      elsif r_udf_equacao_operacao.tipo_operacao = 'S' then
        v_a_operacao_resultado(p_sequencia_equacao) := v_n_valor1 - v_n_valor2;
      elsif r_udf_equacao_operacao.tipo_operacao = 'M' then
        v_a_operacao_resultado(p_sequencia_equacao) := v_n_valor1 * v_n_valor2;
      elsif r_udf_equacao_operacao.tipo_operacao = 'D' then
        v_a_operacao_resultado(p_sequencia_equacao) := v_n_valor1 / v_n_valor2;
      elsif r_udf_equacao_operacao.tipo_operacao = 'P' then
        v_a_operacao_resultado(p_sequencia_equacao) := power(v_n_valor1, v_n_valor2);
      elsif r_udf_equacao_operacao.tipo_operacao = 'R' then
        v_a_operacao_resultado(p_sequencia_equacao) := sqrt(v_n_valor1);
      end if;
    
    end if;
    
    close c_udf_equacao_operacao;  
  
  end;
  
  function calcula_resultado
  return number
  is

    cursor c_udf_equacao
    (
      p_id_equacao in udf_equacao.id%type
    )
    is
      select
        eo.sequencia_equacao sequencia_equacao_resultado
      from
        udf_equacao_operacao eo,
        udf_equacao e
      where
        e.id = p_id_equacao and
        eo.id(+) = e.id_equacao_operacao_resultado;

    cursor c_udf_equacao_operacao
    (
      p_id_equacao in udf_equacao.id%type
    )
    is
      select
        eo.id,
        eo.sequencia_equacao
      from
        udf_equacao_operacao  eo
      where
        eo.id_equacao = p_id_equacao
      order by
        eo.sequencia_equacao;

    r_udf_equacao           c_udf_equacao%rowtype;
    r_udf_equacao_operacao  c_udf_equacao_operacao%rowtype;

  begin

    open c_udf_equacao(v_id_equacao);
    fetch c_udf_equacao into r_udf_equacao;
    close c_udf_equacao;

    open c_udf_equacao_operacao(v_id_equacao);

    loop

      fetch c_udf_equacao_operacao into r_udf_equacao_operacao;

      exit when c_udf_equacao_operacao%notfound;

      calcula_operacao(r_udf_equacao_operacao.sequencia_equacao);

    end loop;

    close c_udf_equacao_operacao;

    return recupera_resultado_operacao(r_udf_equacao.sequencia_equacao_resultado);

  end;

  function recupera_resultado_operacao
  (
    p_sequencia_equacao in udf_equacao_operacao.sequencia_equacao%type
  )
  return number
  is
  
    v_n_resultado  number;
  
  begin
  
    v_n_resultado := null;
  
    if p_sequencia_equacao is not null then
      v_n_resultado := v_a_operacao_resultado(p_sequencia_equacao);
    end if;
  
    return v_n_resultado;
  
  end;
  
end PKG_UDF_EQUACAO;
/

spool off
