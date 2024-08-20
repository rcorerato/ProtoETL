drop sequence SEQ_UDF_PROCESSAMENTO_VALOR;
drop sequence SEQ_UDF_PROCESSAMENTO;
drop sequence SEQ_UDF_FUNCAO_PARAMETRO;
drop sequence SEQ_UDF_FUNCAO;

drop table UDF_PROCESSAMENTO_VALOR;
drop table UDF_PROCESSAMENTO;
drop table UDF_FUNCAO_PARAMETRO;
drop table UDF_FUNCAO;

-- Create table
create table UDF_FUNCAO
(
  ID          NUMBER not null,
  CODIGO      VARCHAR2(80) not null,
  DESCRICAO   VARCHAR2(200),
  BLOCO_PLSQL VARCHAR2(4000) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table UDF_FUNCAO
  add constraint UDF_FUNCAO_PK primary key (ID)
  using index;
alter table UDF_FUNCAO
  add constraint UDF_FUNCAO_UK1 unique (CODIGO)
  using index;

-- Create table
create table UDF_FUNCAO_PARAMETRO
(
  ID             NUMBER not null,
  ID_UDF_FUNCAO  NUMBER not null,
  NOME_PARAMETRO VARCHAR2(80) not null,
  TIPO_DADO      VARCHAR2(1) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table UDF_FUNCAO_PARAMETRO
  add constraint UDF_FUNCAO_PARAMETRO_PK primary key (ID)
  using index;
alter table UDF_FUNCAO_PARAMETRO
  add constraint UDF_FUNCAO_PARAMETRO_UK1 unique (ID_UDF_FUNCAO, NOME_PARAMETRO)
  using index;
alter table UDF_FUNCAO_PARAMETRO
  add constraint UDF_FUNCAO_PARAMETRO_FK1 foreign key (ID_UDF_FUNCAO)
  references UDF_FUNCAO (ID) on delete cascade;
-- Create/Recreate check constraints 
alter table UDF_FUNCAO_PARAMETRO
  add constraint UDF_FUNCAO_PARAMETRO_CHK1
  check (TIPO_DADO IN ('T', 'N', 'D'));
  
-- Create table
create table UDF_PROCESSAMENTO
(
  ID            NUMBER not null,
  ID_UDF_FUNCAO NUMBER not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table UDF_PROCESSAMENTO
  add constraint UDF_PROCESSAMENTO_PK primary key (ID)
  using index;
alter table UDF_PROCESSAMENTO
  add constraint UDF_PROCESSAMENTO_FK1 foreign key (ID_UDF_FUNCAO)
  references UDF_FUNCAO (ID);

-- Create table
create table UDF_PROCESSAMENTO_VALOR
(
  ID                      NUMBER not null,
  ID_UDF_PROCESSAMENTO    NUMBER not null,
  ID_UDF_FUNCAO_PARAMETRO NUMBER not null,
  TIPO_PARAMETRO          VARCHAR2(1) not null,
  VALOR_TEXTO             VARCHAR2(4000),
  VALOR_NUMERICO          NUMBER,
  VALOR_DATA              DATE
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table UDF_PROCESSAMENTO_VALOR
  add constraint UDF_PROCESSAMENTO_VALOR_PK primary key (ID)
  using index;
alter table UDF_PROCESSAMENTO_VALOR
  add constraint UDF_PROCESSAMENTO_VALOR_UK1 unique (ID_UDF_PROCESSAMENTO, ID_UDF_FUNCAO_PARAMETRO, TIPO_PARAMETRO)
  using index;
alter table UDF_PROCESSAMENTO_VALOR
  add constraint UDF_PROCESSAMENTO_VALOR_FK1 foreign key (ID_UDF_PROCESSAMENTO)
  references UDF_PROCESSAMENTO (ID);
alter table UDF_PROCESSAMENTO_VALOR
  add constraint UDF_PROCESSAMENTO_VALOR_FK2 foreign key (ID_UDF_FUNCAO_PARAMETRO)
  references UDF_FUNCAO_PARAMETRO (ID);
-- Create/Recreate check constraints 
alter table UDF_PROCESSAMENTO_VALOR
  add constraint UDF_PROCESSAMENTO_VALOR_CHK1
  check (TIPO_PARAMETRO IN ('E', 'S'));

-- Create sequence 
create sequence SEQ_UDF_FUNCAO increment by 1;
create sequence SEQ_UDF_FUNCAO_PARAMETRO increment by 1;
create sequence SEQ_UDF_PROCESSAMENTO increment by 1;
create sequence SEQ_UDF_PROCESSAMENTO_VALOR increment by 1;
