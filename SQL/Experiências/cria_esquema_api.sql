spool cria_esquema_api.log

drop sequence SEQ_API_OBJETO_PARAMETRO;
drop sequence SEQ_API_OBJETO;

drop table API_OBJETO_PARAMETRO;
drop table API_OBJETO;

prompt
prompt Creating table API_OBJETO
prompt =========================
prompt
create table API_OBJETO
(
  ID         NUMBER not null,
  CODIGO     VARCHAR2(40) not null,
  TIPO_API   VARCHAR2(1) not null,
  OBJETO_API VARCHAR2(150) not null,
  DESCRICAO  VARCHAR2(500) not null
);
alter table API_OBJETO
  add constraint API_OBJETO_PK primary key (ID)
  using index;
alter table API_OBJETO
  add constraint API_OBJETO_UK unique (CODIGO)
  using index;
alter table API_OBJETO
  add constraint API_OBJETO_CHK1
  check (TIPO_API in ('P','F','V'));

prompt
prompt Creating table API_OBJETO_PARAMETRO
prompt ===================================
prompt
create table API_OBJETO_PARAMETRO
(
  ID             NUMBER not null,
  ID_API_OBJETO  NUMBER not null,
  PARAMETRO      VARCHAR2(40) not null,
  TIPO_PARAMETRO VARCHAR2(1) not null,
  TIPO_DADO      VARCHAR2(1) not null
);
alter table API_OBJETO_PARAMETRO
  add constraint API_OBJETO_PARAMETRO_PK primary key (ID)
  using index;
alter table API_OBJETO_PARAMETRO
  add constraint API_OBJETO_PARAMETRO_UK unique (ID_API_OBJETO, PARAMETRO)
  using index;
alter table API_OBJETO_PARAMETRO
  add constraint API_OBJETO_PARAMETRO_FK1 foreign key (ID_API_OBJETO)
  references API_OBJETO (ID) on delete cascade;
alter table API_OBJETO_PARAMETRO
  add constraint API_OBJETO_PARAMETRO_CHK1
  check (TIPO_PARAMETRO in ('E','S','A'));
alter table API_OBJETO_PARAMETRO
  add constraint API_OBJETO_PARAMETRO_CHK2
  check (TIPO_DADO in ('T','N','D'));

-- Create sequence 
create sequence SEQ_API_OBJETO increment by 1;
create sequence SEQ_API_OBJETO_PARAMETRO increment by 1;

spool off
