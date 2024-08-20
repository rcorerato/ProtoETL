prompt PL/SQL Developer import file
prompt Created on quarta-feira, 6 de fevereiro de 2008 by Rodrigo
set feedback off
set define off
prompt Dropping TABELA...
drop table TABELA cascade constraints;
prompt Dropping COLUNA...
drop table COLUNA cascade constraints;
prompt Dropping MAPEAMENTO...
drop table MAPEAMENTO cascade constraints;
prompt Dropping MAPEAMENTO_COLUNA...
drop table MAPEAMENTO_COLUNA cascade constraints;
prompt Dropping CONSISTENCIA...
drop table CONSISTENCIA cascade constraints;
prompt Dropping FILTRO...
drop table FILTRO cascade constraints;
prompt Dropping JUNCAO...
drop table JUNCAO cascade constraints;
prompt Dropping NOTIFICACAO...
drop table NOTIFICACAO cascade constraints;
prompt Dropping PROCESSO...
drop table PROCESSO cascade constraints;
prompt Dropping PROCESSAMENTO...
drop table PROCESSAMENTO cascade constraints;
prompt Dropping TRANSFORMACAO...
drop table TRANSFORMACAO cascade constraints;
prompt Creating TABELA...
create table TABELA
(
  ID_TABELA    NUMBER not null,
  NOME_TABELA  VARCHAR2(30) not null,
  DESCRICAO    VARCHAR2(100),
  PROPRIETARIO VARCHAR2(30) not null
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
alter table TABELA
  add constraint TABELA_PK primary key (ID_TABELA)
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
alter table TABELA
  add constraint TABELA_UK unique (NOME_TABELA,PROPRIETARIO)
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

prompt Creating COLUNA...
create table COLUNA
(
  ID_COLUNA      NUMBER not null,
  ID_TABELA      NUMBER not null,
  NOME_COLUNA    VARCHAR2(30) not null,
  CHAVE_PRIMARIA VARCHAR2(1) default 'N',
  NOME_SEQUENCIA VARCHAR2(30)
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
alter table COLUNA
  add constraint COLUNA_PK primary key (ID_COLUNA)
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
alter table COLUNA
  add constraint COLUNA_UK unique (ID_TABELA,NOME_COLUNA)
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
alter table COLUNA
  add constraint C_TABELA_FK foreign key (ID_TABELA)
  references TABELA (ID_TABELA) on delete cascade;
alter table COLUNA
  add constraint COLUNA_CHK1
  check (CHAVE_PRIMARIA IN ('S','N'));

prompt Creating MAPEAMENTO...
create table MAPEAMENTO
(
  ID_MAPEAMENTO            NUMBER not null,
  NOME                     VARCHAR2(40) not null,
  ID_TABELA_ORIGEM         NUMBER,
  ORIGEM_TEMPO             VARCHAR2(1) default 'N',
  ID_TABELA_DESTINO        NUMBER not null,
  ID_COLUNA_DATA_INCLUSAO  NUMBER,
  ID_COLUNA_DATA_ALTERACAO NUMBER,
  TIPO_ATUALIZACAO         VARCHAR2(1) default '1' not null,
  TIPO_DESTINO             VARCHAR2(1) default 'T' not null
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
alter table MAPEAMENTO
  add constraint MAPEAMENTO_PK primary key (ID_MAPEAMENTO)
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
alter table MAPEAMENTO
  add constraint M_COLUNA_DATA_ALT_FK foreign key (ID_COLUNA_DATA_ALTERACAO)
  references COLUNA (ID_COLUNA) on delete set null;
alter table MAPEAMENTO
  add constraint M_COLUNA_DATA_INC_FK foreign key (ID_COLUNA_DATA_INCLUSAO)
  references COLUNA (ID_COLUNA) on delete set null;
alter table MAPEAMENTO
  add constraint M_TABELA_DESTINO_FK foreign key (ID_TABELA_DESTINO)
  references TABELA (ID_TABELA) on delete cascade;
alter table MAPEAMENTO
  add constraint M_TABELA_ORIGEM_FK foreign key (ID_TABELA_ORIGEM)
  references TABELA (ID_TABELA) on delete cascade;
alter table MAPEAMENTO
  add constraint MAPEAMENTO_CHK1
  check (TIPO_DESTINO IN ('T','C'));
alter table MAPEAMENTO
  add constraint MAPEAMENTO_CHK2
  check (TIPO_ATUALIZACAO IN ('1','2'));

prompt Creating MAPEAMENTO_COLUNA...
create table MAPEAMENTO_COLUNA
(
  ID_MAPEAMENTO_COLUNA        NUMBER not null,
  ID_MAPEAMENTO               NUMBER not null,
  ID_COLUNA_ORIGEM            NUMBER,
  ID_COLUNA_DESTINO           NUMBER not null,
  FORMATO                     VARCHAR2(10),
  FUNCAO_GRUPO                VARCHAR2(10),
  CHAVE_PESQUISA              VARCHAR2(1) default 'N' not null,
  ID_COLUNA_PESQUISA_DIMENSAO NUMBER
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
alter table MAPEAMENTO_COLUNA
  add constraint MAPEAMENTO_COLUNA_PK primary key (ID_MAPEAMENTO_COLUNA)
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
alter table MAPEAMENTO_COLUNA
  add constraint MC_COLUNA_DESTINO_FK foreign key (ID_COLUNA_DESTINO)
  references COLUNA (ID_COLUNA) on delete set null;
alter table MAPEAMENTO_COLUNA
  add constraint MC_COLUNA_ORIGEM_FK foreign key (ID_COLUNA_ORIGEM)
  references COLUNA (ID_COLUNA) on delete set null;
alter table MAPEAMENTO_COLUNA
  add constraint MC_COLUNA_PESQUISA_DIMENSAO_FK foreign key (ID_COLUNA_PESQUISA_DIMENSAO)
  references COLUNA (ID_COLUNA) on delete set null;
alter table MAPEAMENTO_COLUNA
  add constraint MC_MAPEAMENTO_FK foreign key (ID_MAPEAMENTO)
  references MAPEAMENTO (ID_MAPEAMENTO) on delete cascade;
alter table MAPEAMENTO_COLUNA
  add constraint MAPEAMENTO_COLUNA_CHK1
  check (CHAVE_PESQUISA IN ('S','N'));

prompt Creating CONSISTENCIA...
create table CONSISTENCIA
(
  ID_CONSISTENCIA      NUMBER not null,
  ID_MAPEAMENTO_COLUNA NUMBER not null,
  OPERADOR_COMPARACAO  VARCHAR2(10) not null,
  VALOR_COMPARACAO     VARCHAR2(4000)
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
alter table CONSISTENCIA
  add constraint CONSISTENCIA_PK primary key (ID_CONSISTENCIA)
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
alter table CONSISTENCIA
  add constraint C_MAPEAMENTO_COLUNA_FK foreign key (ID_MAPEAMENTO_COLUNA)
  references MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA) on delete cascade;

prompt Creating FILTRO...
create table FILTRO
(
  ID_FILTRO           NUMBER not null,
  ID_MAPEAMENTO       NUMBER not null,
  ID_COLUNA           NUMBER not null,
  OPERADOR_COMPARACAO VARCHAR2(10) not null,
  VALOR_COMPARACAO    VARCHAR2(4000)
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
alter table FILTRO
  add constraint FILTRO_PK primary key (ID_FILTRO)
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
alter table FILTRO
  add constraint F_COLUNA_FK foreign key (ID_COLUNA)
  references COLUNA (ID_COLUNA) on delete cascade;
alter table FILTRO
  add constraint F_MAPEAMENTO_FK foreign key (ID_MAPEAMENTO)
  references MAPEAMENTO (ID_MAPEAMENTO) on delete cascade;

prompt Creating JUNCAO...
create table JUNCAO
(
  ID_JUNCAO                     NUMBER not null,
  ID_COLUNA_TABELA_PAI          NUMBER not null,
  ID_COLUNA_TABELA_FILHO        NUMBER not null,
  RELACIONAMENTO_PAI_OPCIONAL   VARCHAR2(1) default 'N',
  RELACIONAMENTO_FILHO_OPCIONAL VARCHAR2(1) default 'N'
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
alter table JUNCAO
  add constraint JUNCAO_PK primary key (ID_JUNCAO)
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
alter table JUNCAO
  add constraint J_COLUNA_TABELA_FILHO_FK foreign key (ID_COLUNA_TABELA_FILHO)
  references COLUNA (ID_COLUNA) on delete cascade;
alter table JUNCAO
  add constraint J_COLUNA_TABELA_PAI_FK foreign key (ID_COLUNA_TABELA_PAI)
  references COLUNA (ID_COLUNA) on delete cascade;
alter table JUNCAO
  add constraint JUNCAO_CHK1
  check (RELACIONAMENTO_PAI_OPCIONAL IN ('S','N'));
alter table JUNCAO
  add constraint JUNCAO_CHK2
  check (RELACIONAMENTO_FILHO_OPCIONAL IN ('S','N'));

prompt Creating NOTIFICACAO...
create table NOTIFICACAO
(
  PROPRIETARIO     VARCHAR2(30) not null,
  TABELA           VARCHAR2(30) not null,
  CHAVE_PK         VARCHAR2(20) not null,
  DATA_NOTIFICACAO DATE default sysdate not null,
  STATUS           VARCHAR2(1) default '0' not null
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
create index NOTIFICACAO_IDX1 on NOTIFICACAO (PROPRIETARIO,TABELA,STATUS)
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

prompt Creating PROCESSO...
create table PROCESSO
(
  ID_PROCESSO          NUMBER not null,
  NOME                 VARCHAR2(30) not null,
  ATIVO                VARCHAR2(1) default 'N',
  INTERVALO_MINUTOS    NUMBER default 0,
  DAT_ULTIMA_EXECUCAO  DATE,
  DAT_PROXIMA_EXECUCAO DATE,
  EXECUTANDO           VARCHAR2(1) default 'N',
  QTD_EXECUCOES        NUMBER,
  QTD_EXECUCOES_ERRO   NUMBER,
  ID_MAPEAMENTO        NUMBER
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
alter table PROCESSO
  add constraint PROCESSO_PK primary key (ID_PROCESSO)
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
alter table PROCESSO
  add constraint P_MAPEAMENTO_FK foreign key (ID_MAPEAMENTO)
  references MAPEAMENTO (ID_MAPEAMENTO) on delete set null;
alter table PROCESSO
  add constraint PROCESSO_CHK1
  check (EXECUTANDO IN ('S', 'N'));

prompt Creating PROCESSAMENTO...
create table PROCESSAMENTO
(
  ID_PROCESSAMENTO   NUMBER not null,
  ID_PROCESSO        NUMBER not null,
  DAT_INICIO         DATE not null,
  DAT_TERMINO        DATE,
  QTD_REGISTROS      NUMBER,
  QTD_REGISTROS_ERRO NUMBER,
  LOG                VARCHAR2(4000)
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
alter table PROCESSAMENTO
  add constraint PROCESSAMENTO_PK primary key (ID_PROCESSAMENTO)
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
alter table PROCESSAMENTO
  add constraint P_PROCESSO_FK foreign key (ID_PROCESSO)
  references PROCESSO (ID_PROCESSO) on delete cascade;

prompt Creating TRANSFORMACAO...
create table TRANSFORMACAO
(
  ID_TRANSFORMACAO     NUMBER not null,
  ID_MAPEAMENTO_COLUNA NUMBER not null,
  VALOR_ORIGEM         VARCHAR2(40) not null,
  VALOR_DESTINO        VARCHAR2(40) not null
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
alter table TRANSFORMACAO
  add constraint TRANSFORMACAO_PK primary key (ID_TRANSFORMACAO)
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
alter table TRANSFORMACAO
  add constraint TRANSFORMACAO_UK unique (ID_MAPEAMENTO_COLUNA,VALOR_ORIGEM)
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
alter table TRANSFORMACAO
  add constraint T_MAPEAMENTO_COLUNA_FK foreign key (ID_MAPEAMENTO_COLUNA)
  references MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA) on delete cascade;

prompt Disabling triggers for TABELA...
alter table TABELA disable all triggers;
prompt Disabling triggers for COLUNA...
alter table COLUNA disable all triggers;
prompt Disabling triggers for MAPEAMENTO...
alter table MAPEAMENTO disable all triggers;
prompt Disabling triggers for MAPEAMENTO_COLUNA...
alter table MAPEAMENTO_COLUNA disable all triggers;
prompt Disabling triggers for CONSISTENCIA...
alter table CONSISTENCIA disable all triggers;
prompt Disabling triggers for FILTRO...
alter table FILTRO disable all triggers;
prompt Disabling triggers for JUNCAO...
alter table JUNCAO disable all triggers;
prompt Disabling triggers for NOTIFICACAO...
alter table NOTIFICACAO disable all triggers;
prompt Disabling triggers for PROCESSO...
alter table PROCESSO disable all triggers;
prompt Disabling triggers for PROCESSAMENTO...
alter table PROCESSAMENTO disable all triggers;
prompt Disabling triggers for TRANSFORMACAO...
alter table TRANSFORMACAO disable all triggers;
prompt Disabling foreign key constraints for COLUNA...
alter table COLUNA disable constraint C_TABELA_FK;
prompt Disabling foreign key constraints for MAPEAMENTO...
alter table MAPEAMENTO disable constraint M_COLUNA_DATA_ALT_FK;
alter table MAPEAMENTO disable constraint M_COLUNA_DATA_INC_FK;
alter table MAPEAMENTO disable constraint M_TABELA_DESTINO_FK;
alter table MAPEAMENTO disable constraint M_TABELA_ORIGEM_FK;
prompt Disabling foreign key constraints for MAPEAMENTO_COLUNA...
alter table MAPEAMENTO_COLUNA disable constraint MC_COLUNA_DESTINO_FK;
alter table MAPEAMENTO_COLUNA disable constraint MC_COLUNA_ORIGEM_FK;
alter table MAPEAMENTO_COLUNA disable constraint MC_COLUNA_PESQUISA_DIMENSAO_FK;
alter table MAPEAMENTO_COLUNA disable constraint MC_MAPEAMENTO_FK;
prompt Disabling foreign key constraints for CONSISTENCIA...
alter table CONSISTENCIA disable constraint C_MAPEAMENTO_COLUNA_FK;
prompt Disabling foreign key constraints for FILTRO...
alter table FILTRO disable constraint F_COLUNA_FK;
alter table FILTRO disable constraint F_MAPEAMENTO_FK;
prompt Disabling foreign key constraints for JUNCAO...
alter table JUNCAO disable constraint J_COLUNA_TABELA_FILHO_FK;
alter table JUNCAO disable constraint J_COLUNA_TABELA_PAI_FK;
prompt Disabling foreign key constraints for PROCESSO...
alter table PROCESSO disable constraint P_MAPEAMENTO_FK;
prompt Disabling foreign key constraints for PROCESSAMENTO...
alter table PROCESSAMENTO disable constraint P_PROCESSO_FK;
prompt Disabling foreign key constraints for TRANSFORMACAO...
alter table TRANSFORMACAO disable constraint T_MAPEAMENTO_COLUNA_FK;
prompt Loading TABELA...
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (52, 'PAIS', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (50, 'ESTADO', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (48, 'CIDADE', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (49, 'CLIENTE', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (56, 'REPRESENTANTE', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (51, 'FAMILIA', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (64, 'FABRICANTE', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (55, 'PRODUTO', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (53, 'PEDIDO_VENDA', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (54, 'PEDIDO_VENDA_ITEM', null, 'ETL_OLTP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (63, 'TEMPO', null, 'ETL_OLAP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (57, 'CLIENTE', null, 'ETL_OLAP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (60, 'LOCALIZACAO', null, 'ETL_OLAP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (62, 'REPRESENTANTE', null, 'ETL_OLAP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (61, 'PRODUTO', null, 'ETL_OLAP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (58, 'FAMILIA', null, 'ETL_OLAP');
insert into TABELA (ID_TABELA, NOME_TABELA, DESCRICAO, PROPRIETARIO)
values (59, 'FATO_VENDA', null, 'ETL_OLAP');
commit;
prompt 17 records loaded
prompt Loading COLUNA...
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (285, 48, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (286, 48, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (287, 48, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (288, 48, 'ID_ESTADO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (289, 48, 'ID_PAIS', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (290, 49, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (291, 49, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (292, 49, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (293, 49, 'ID_CIDADE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (294, 50, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (295, 50, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (296, 50, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (297, 50, 'SIGLA', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (298, 50, 'ID_PAIS', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (299, 51, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (300, 51, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (301, 51, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (302, 52, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (303, 52, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (304, 52, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (305, 53, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (306, 53, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (307, 53, 'DATA_EMISSAO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (308, 53, 'ID_CLIENTE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (309, 53, 'ID_REPRESENTANTE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (310, 53, 'VALOR_ITENS', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (311, 54, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (312, 54, 'ID_PEDIDO_VENDA', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (313, 54, 'ID_PRODUTO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (314, 54, 'QUANTIDADE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (315, 54, 'PRECO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (316, 55, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (317, 55, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (318, 55, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (364, 55, 'ID_FAMILIA', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (320, 56, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (321, 56, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (322, 56, 'NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (323, 57, 'CLIENTE_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (324, 57, 'CLIENTE_ID', 'S', 'CLIENTE_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (325, 57, 'CLIENTE_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (326, 58, 'FAMILIA_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (327, 58, 'FAMILIA_ID', 'S', 'FAMILIA_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (328, 58, 'FAMILIA_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (329, 59, 'CIDADE_ID', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (330, 59, 'CLIENTE_ID', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (331, 59, 'DIA_ID', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (332, 59, 'FAMILIA_ID', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (333, 59, 'PRODUTO_ID', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (334, 59, 'QUANTIDADE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (335, 59, 'REPRESENTANTE_ID', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (336, 59, 'VALOR', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (337, 60, 'CIDADE_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (338, 60, 'CIDADE_ID', 'S', 'CIDADE_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (339, 60, 'CIDADE_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (340, 60, 'ESTADO_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (341, 60, 'ESTADO_ID', 'N', 'ESTADO_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (342, 60, 'ESTADO_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (343, 60, 'PAIS_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (344, 60, 'PAIS_ID', 'N', 'PAIS_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (345, 60, 'PAIS_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (346, 61, 'PRODUTO_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (347, 61, 'PRODUTO_ID', 'S', 'PRODUTO_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (348, 61, 'PRODUTO_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (349, 62, 'REPRESENTANTE_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (350, 62, 'REPRESENTANTE_ID', 'S', 'REPRESENTANTE_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (351, 62, 'REPRESENTANTE_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (352, 63, 'ANO_ANO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (353, 63, 'ANO_ID', 'N', 'ANO_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (354, 63, 'DIA_DATA', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (355, 63, 'DIA_DIA', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (356, 63, 'DIA_ID', 'S', 'DIA_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (357, 63, 'DIA_SMART_KEY', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (358, 63, 'MES_ID', 'N', 'MES_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (359, 63, 'MES_MES', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (360, 63, 'MES_NOME_MES', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (361, 63, 'TRIMESTRE_ID', 'N', 'TRIMESTRE_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (362, 63, 'TRIMESTRE_TRIMESTRE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (365, 55, 'ID_FABRICANTE', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (366, 55, 'PRECO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (367, 61, 'FABRICANTE_CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (368, 61, 'FABRICANTE_ID', 'N', 'FABRICANTE_SEQ');
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (369, 61, 'FABRICANTE_NOME', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (370, 64, 'ID', 'S', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (371, 64, 'CODIGO', 'N', null);
insert into COLUNA (ID_COLUNA, ID_TABELA, NOME_COLUNA, CHAVE_PRIMARIA, NOME_SEQUENCIA)
values (372, 64, 'NOME', 'N', null);
commit;
prompt 86 records loaded
prompt Loading MAPEAMENTO...
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (15, 'DIMENSAO CLIENTE', 49, 'N', 57, null, null, '1', 'T');
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (19, 'DIMENSAO LOCALIZACAO', 48, 'N', 60, null, null, '1', 'T');
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (16, 'DIMENSAO REPRESENTANTE', 56, 'N', 62, null, null, '1', 'T');
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (17, 'DIMENSAO PRODUTO', 55, 'N', 61, null, null, '1', 'T');
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (18, 'DIMENSAO FAMILIA', 51, 'N', 58, null, null, '1', 'T');
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (20, 'DIMENSAO TEMPO', null, 'S', 63, null, null, '1', 'T');
insert into MAPEAMENTO (ID_MAPEAMENTO, NOME, ID_TABELA_ORIGEM, ORIGEM_TEMPO, ID_TABELA_DESTINO, ID_COLUNA_DATA_INCLUSAO, ID_COLUNA_DATA_ALTERACAO, TIPO_ATUALIZACAO, TIPO_DESTINO)
values (21, 'FATO VENDA', 53, 'N', 59, null, null, '2', 'C');
commit;
prompt 7 records loaded
prompt Loading MAPEAMENTO_COLUNA...
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (23, 15, 291, 323, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (24, 15, 292, 325, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (25, 16, 321, 349, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (26, 16, 322, 351, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (27, 17, 317, 346, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (28, 17, 318, 348, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (29, 18, 300, 326, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (30, 18, 301, 328, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (31, 19, 286, 337, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (32, 19, 287, 339, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (33, 19, 295, 340, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (34, 19, 296, 342, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (35, 19, 303, 343, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (36, 19, 304, 345, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (37, 21, 310, 336, null, 'SUM', 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (38, 21, 314, 334, null, 'SUM', 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (39, 21, 291, 330, null, null, 'N', 323);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (40, 21, 321, 335, null, null, 'N', 349);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (42, 21, 286, 329, null, null, 'N', 337);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (43, 21, 317, 333, null, null, 'N', 346);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (44, 21, 300, 332, null, null, 'N', 326);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (45, 21, 307, 331, null, null, 'N', 354);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (57, 20, null, 354, null, null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (58, 20, null, 355, 'DD', null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (59, 20, null, 359, 'MM', null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (62, 20, null, 360, 'MONTH', null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (63, 20, null, 352, 'YYYY', null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (64, 20, null, 362, 'Q', null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (65, 20, null, 357, 'YYYYMMDD', null, 'N', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (67, 17, 371, 367, null, null, 'S', null);
insert into MAPEAMENTO_COLUNA (ID_MAPEAMENTO_COLUNA, ID_MAPEAMENTO, ID_COLUNA_ORIGEM, ID_COLUNA_DESTINO, FORMATO, FUNCAO_GRUPO, CHAVE_PESQUISA, ID_COLUNA_PESQUISA_DIMENSAO)
values (68, 17, 372, 369, null, null, 'N', null);
commit;
prompt 31 records loaded
prompt Loading CONSISTENCIA...
prompt Table is empty
prompt Loading FILTRO...
prompt Table is empty
prompt Loading JUNCAO...
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (37, 294, 288, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (38, 302, 289, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (39, 285, 293, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (40, 302, 298, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (41, 324, 330, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (42, 350, 335, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (43, 347, 333, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (44, 327, 332, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (45, 356, 331, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (46, 338, 329, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (47, 290, 308, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (48, 320, 309, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (49, 305, 312, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (50, 316, 313, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (51, 370, 365, 'N', 'N');
insert into JUNCAO (ID_JUNCAO, ID_COLUNA_TABELA_PAI, ID_COLUNA_TABELA_FILHO, RELACIONAMENTO_PAI_OPCIONAL, RELACIONAMENTO_FILHO_OPCIONAL)
values (52, 299, 364, 'N', 'N');
commit;
prompt 16 records loaded
prompt Loading NOTIFICACAO...
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '1', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '2', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '3', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '4', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '5', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '6', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '7', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CIDADE', '8', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '1', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '2', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '3', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '4', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '5', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '6', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '7', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '8', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '9', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '10', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '11', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '12', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '13', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '14', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '15', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '16', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '17', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '18', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '19', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '20', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '21', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '22', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '23', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '24', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '25', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '26', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '27', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '28', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '29', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '30', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '31', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '32', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '33', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '34', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '35', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '36', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '37', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '38', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '39', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '40', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '41', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '42', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '43', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '44', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '45', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '46', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '47', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '48', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '49', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'CLIENTE', '50', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '1', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '2', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '3', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '4', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '5', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '6', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '3');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '7', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '8', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '9', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '3');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '10', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '11', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'FAMILIA', '12', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '1', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '2', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '3', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '4', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '5', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '6', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '7', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '8', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '9', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '10', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '11', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '12', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '13', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '14', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '15', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '16', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '17', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '18', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '19', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '20', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '21', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '22', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '23', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '24', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '25', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '26', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '27', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '28', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '29', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
commit;
prompt 100 records committed...
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '30', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '31', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '32', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '33', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '34', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '35', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '36', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '37', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '38', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '39', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '40', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '41', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '42', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '43', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '44', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '45', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '46', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '47', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '48', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '49', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '50', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '51', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '52', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '53', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '54', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '55', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '56', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '57', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '58', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '59', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '60', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '61', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '62', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '63', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '64', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '65', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '66', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '67', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '68', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '69', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '70', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '71', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '72', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '73', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '74', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '75', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '76', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '77', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '78', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '79', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '80', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '81', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '82', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '83', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '84', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '85', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '86', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '87', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '88', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '89', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PEDIDO_VENDA', '90', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '0');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '1', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '2', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '3', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '4', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '5', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '6', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '7', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '8', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '9', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '10', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '11', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '12', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '13', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '14', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '15', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '16', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '17', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '18', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '19', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '20', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '21', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '22', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '23', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '24', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '25', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '26', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '27', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '28', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '29', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '30', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '31', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '32', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '33', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '34', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '35', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '36', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '37', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '38', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '39', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
commit;
prompt 200 records committed...
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '40', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '41', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '42', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '43', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '44', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '45', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '46', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '47', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '48', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '49', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '50', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '51', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '52', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '53', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '54', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '55', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '56', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '57', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '58', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '59', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '60', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '61', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '62', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '63', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '64', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '65', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '66', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '67', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '68', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '69', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '70', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '71', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '72', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '73', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '74', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '75', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '76', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '77', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '78', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '79', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '80', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '81', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '82', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '83', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '84', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '85', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '86', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '87', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '89', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '90', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '91', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '93', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '94', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '95', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '96', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '98', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '99', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '100', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '102', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '103', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '104', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '3');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '105', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '3');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '107', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '108', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '109', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '110', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '111', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '113', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '114', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '115', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '116', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '117', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '118', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '119', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '120', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '121', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '122', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '123', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '124', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '125', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '126', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '127', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '128', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '129', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '130', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '3');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '131', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '132', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '133', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '134', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '135', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '136', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '137', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '138', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '139', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '140', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '141', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '142', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '143', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '144', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '145', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
commit;
prompt 300 records committed...
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '146', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '147', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '148', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '149', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '150', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '151', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '152', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '153', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '154', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '155', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '156', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '157', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '158', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '159', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '160', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '161', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '162', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '163', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '164', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '165', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '166', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '167', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '168', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '169', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '170', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '171', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '172', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '173', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '174', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '175', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '176', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '177', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '178', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '179', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '180', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '181', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '182', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '183', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '184', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '185', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '186', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '187', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '188', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '189', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '190', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '191', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '192', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '193', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '194', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '195', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '196', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '197', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '198', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '199', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '200', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '201', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '202', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '203', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '205', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '206', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '207', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '208', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '210', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '211', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '212', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '214', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '215', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '216', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '217', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '219', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '220', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '221', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '222', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '223', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '224', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '225', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '226', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '227', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '228', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '229', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '230', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '231', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '232', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '233', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '234', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '235', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '236', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '237', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '238', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '239', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '240', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '241', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '242', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '243', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '244', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '245', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '246', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '247', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '248', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '249', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
commit;
prompt 400 records committed...
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '250', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '251', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '252', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '253', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '254', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '255', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '256', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '257', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '258', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '259', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '260', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '261', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '262', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '263', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '264', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '265', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '266', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '267', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '268', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '269', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '270', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '271', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '272', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '273', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '274', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '275', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '276', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '277', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '278', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '279', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '280', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '281', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '282', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '283', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '284', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '285', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '286', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '287', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '288', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '289', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '290', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '291', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '292', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '293', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '294', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '88', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '92', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '97', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '101', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '106', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '112', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '204', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '209', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '213', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'PRODUTO', '218', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'REPRESENTANTE', '1', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'REPRESENTANTE', '2', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'REPRESENTANTE', '3', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
insert into NOTIFICACAO (PROPRIETARIO, TABELA, CHAVE_PK, DATA_NOTIFICACAO, STATUS)
values ('ETL_OLTP', 'REPRESENTANTE', '4', to_date('06-02-2008 01:03:49', 'dd-mm-yyyy hh24:mi:ss'), '2');
commit;
prompt 458 records loaded
prompt Loading PROCESSO...
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (1, 'DIMENSAO CLIENTE', 'S', 60, to_date('06-02-2008 01:27:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:12:27', 'dd-mm-yyyy hh24:mi:ss'), 'N', 6, 0, 15);
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (2, 'DIMENSAO LOCALIZACAO', 'S', 60, to_date('06-02-2008 01:27:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:13:27', 'dd-mm-yyyy hh24:mi:ss'), 'N', 5, 0, 19);
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (3, 'DIMENSAO REPRESENTANTE', 'S', 60, to_date('06-02-2008 01:27:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:14:27', 'dd-mm-yyyy hh24:mi:ss'), 'N', 4, 0, 16);
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (4, 'DIMENSAO PRODUTO', 'S', 60, to_date('06-02-2008 01:27:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:15:27', 'dd-mm-yyyy hh24:mi:ss'), 'N', 2, 1, 17);
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (5, 'DIMENSAO FAMILIA', 'S', 60, to_date('06-02-2008 01:27:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:16:27', 'dd-mm-yyyy hh24:mi:ss'), 'N', 2, 1, 18);
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (6, 'DIMENSAO TEMPO', 'S', 1440, to_date('04-02-2008 17:46:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:17:27', 'dd-mm-yyyy hh24:mi:ss'), 'S', 0, 0, 20);
insert into PROCESSO (ID_PROCESSO, NOME, ATIVO, INTERVALO_MINUTOS, DAT_ULTIMA_EXECUCAO, DAT_PROXIMA_EXECUCAO, EXECUTANDO, QTD_EXECUCOES, QTD_EXECUCOES_ERRO, ID_MAPEAMENTO)
values (7, 'FATO VENDA', 'S', 60, to_date('05-02-2008 23:38:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:18:27', 'dd-mm-yyyy hh24:mi:ss'), 'N', 0, 0, 21);
commit;
prompt 7 records loaded
prompt Loading PROCESSAMENTO...
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (270, 1, to_date('06-02-2008 01:13:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:13:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (269, 1, to_date('06-02-2008 01:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:12:51', 'dd-mm-yyyy hh24:mi:ss'), 50, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (271, 2, to_date('06-02-2008 01:13:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:13:55', 'dd-mm-yyyy hh24:mi:ss'), 8, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (272, 1, to_date('06-02-2008 01:14:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:14:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (273, 2, to_date('06-02-2008 01:14:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:14:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (274, 3, to_date('06-02-2008 01:14:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:14:55', 'dd-mm-yyyy hh24:mi:ss'), 4, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (275, 1, to_date('06-02-2008 01:15:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:15:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (276, 2, to_date('06-02-2008 01:15:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:15:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (277, 3, to_date('06-02-2008 01:15:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:15:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (278, 4, to_date('06-02-2008 01:15:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (279, 1, to_date('06-02-2008 01:21:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:21:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (280, 2, to_date('06-02-2008 01:21:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:21:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (281, 3, to_date('06-02-2008 01:21:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:21:56', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (282, 4, to_date('06-02-2008 01:21:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:22:39', 'dd-mm-yyyy hh24:mi:ss'), 294, 3, ' ' || chr(13) || '' || chr(10) || 'ORA-06502: PL/SQL: error: buffer de string de caracteres pequeno demais numérico ou de valor' || chr(13) || '' || chr(10) || 'ORA-06502: PL/SQL: error: buffer de string de caracteres pequeno demais numérico ou de valor' || chr(13) || '' || chr(10) || 'ORA-06502: PL/SQL: error: buffer de string de caracteres pequeno demais numérico ou de valor');
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (283, 5, to_date('06-02-2008 01:22:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:22:42', 'dd-mm-yyyy hh24:mi:ss'), 12, 2, ' ' || chr(13) || '' || chr(10) || 'ORA-06502: PL/SQL: error: buffer de string de caracteres pequeno demais numérico ou de valor' || chr(13) || '' || chr(10) || 'ORA-06502: PL/SQL: error: buffer de string de caracteres pequeno demais numérico ou de valor');
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (284, 6, to_date('06-02-2008 01:22:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (285, 1, to_date('06-02-2008 01:27:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:27:02', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (286, 2, to_date('06-02-2008 01:27:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:27:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (287, 3, to_date('06-02-2008 01:27:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:27:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (288, 4, to_date('06-02-2008 01:27:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:27:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (289, 5, to_date('06-02-2008 01:27:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2008 01:27:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, null);
insert into PROCESSAMENTO (ID_PROCESSAMENTO, ID_PROCESSO, DAT_INICIO, DAT_TERMINO, QTD_REGISTROS, QTD_REGISTROS_ERRO, LOG)
values (290, 6, to_date('06-02-2008 01:27:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
prompt 22 records loaded
prompt Loading TRANSFORMACAO...
prompt Table is empty
prompt Enabling foreign key constraints for COLUNA...
alter table COLUNA enable constraint C_TABELA_FK;
prompt Enabling foreign key constraints for MAPEAMENTO...
alter table MAPEAMENTO enable constraint M_COLUNA_DATA_ALT_FK;
alter table MAPEAMENTO enable constraint M_COLUNA_DATA_INC_FK;
alter table MAPEAMENTO enable constraint M_TABELA_DESTINO_FK;
alter table MAPEAMENTO enable constraint M_TABELA_ORIGEM_FK;
prompt Enabling foreign key constraints for MAPEAMENTO_COLUNA...
alter table MAPEAMENTO_COLUNA enable constraint MC_COLUNA_DESTINO_FK;
alter table MAPEAMENTO_COLUNA enable constraint MC_COLUNA_ORIGEM_FK;
alter table MAPEAMENTO_COLUNA enable constraint MC_COLUNA_PESQUISA_DIMENSAO_FK;
alter table MAPEAMENTO_COLUNA enable constraint MC_MAPEAMENTO_FK;
prompt Enabling foreign key constraints for CONSISTENCIA...
alter table CONSISTENCIA enable constraint C_MAPEAMENTO_COLUNA_FK;
prompt Enabling foreign key constraints for FILTRO...
alter table FILTRO enable constraint F_COLUNA_FK;
alter table FILTRO enable constraint F_MAPEAMENTO_FK;
prompt Enabling foreign key constraints for JUNCAO...
alter table JUNCAO enable constraint J_COLUNA_TABELA_FILHO_FK;
alter table JUNCAO enable constraint J_COLUNA_TABELA_PAI_FK;
prompt Enabling foreign key constraints for PROCESSO...
alter table PROCESSO enable constraint P_MAPEAMENTO_FK;
prompt Enabling foreign key constraints for PROCESSAMENTO...
alter table PROCESSAMENTO enable constraint P_PROCESSO_FK;
prompt Enabling foreign key constraints for TRANSFORMACAO...
alter table TRANSFORMACAO enable constraint T_MAPEAMENTO_COLUNA_FK;
prompt Enabling triggers for TABELA...
alter table TABELA enable all triggers;
prompt Enabling triggers for COLUNA...
alter table COLUNA enable all triggers;
prompt Enabling triggers for MAPEAMENTO...
alter table MAPEAMENTO enable all triggers;
prompt Enabling triggers for MAPEAMENTO_COLUNA...
alter table MAPEAMENTO_COLUNA enable all triggers;
prompt Enabling triggers for CONSISTENCIA...
alter table CONSISTENCIA enable all triggers;
prompt Enabling triggers for FILTRO...
alter table FILTRO enable all triggers;
prompt Enabling triggers for JUNCAO...
alter table JUNCAO enable all triggers;
prompt Enabling triggers for NOTIFICACAO...
alter table NOTIFICACAO enable all triggers;
prompt Enabling triggers for PROCESSO...
alter table PROCESSO enable all triggers;
prompt Enabling triggers for PROCESSAMENTO...
alter table PROCESSAMENTO enable all triggers;
prompt Enabling triggers for TRANSFORMACAO...
alter table TRANSFORMACAO enable all triggers;
set feedback on
set define on
prompt Done.
delete from processamento;
commit;
update processo set dat_proxima_execucao = sysdate + (id_processo / 24 / 60), executando = 'N', qtd_execucoes = 0, qtd_execucoes_erro = 0;
commit;

