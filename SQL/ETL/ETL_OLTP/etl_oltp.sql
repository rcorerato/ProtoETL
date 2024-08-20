----------------------------------------------
-- Export file for user ETL_OLTP            --
-- Created by Rodrigo on 6/2/2008, 01:23:56 --
----------------------------------------------

spool etl_oltp.log

prompt
prompt Creating table PAIS
prompt ===================
prompt
create table PAIS
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(2) not null,
  NOME   VARCHAR2(50) not null
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
alter table PAIS
  add constraint PAIS_PK primary key (ID)
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
alter table PAIS
  add constraint PAIS_UK unique (CODIGO)
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
prompt Creating table ESTADO
prompt =====================
prompt
create table ESTADO
(
  ID      NUMBER not null,
  CODIGO  VARCHAR2(10) not null,
  NOME    VARCHAR2(50) not null,
  SIGLA   VARCHAR2(2) not null,
  ID_PAIS NUMBER not null
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
alter table ESTADO
  add constraint ESTADO_PK primary key (ID)
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
alter table ESTADO
  add constraint ESTADO_UK unique (CODIGO)
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
alter table ESTADO
  add constraint ESTADO_PAIS_FK foreign key (ID_PAIS)
  references PAIS (ID);

prompt
prompt Creating table CIDADE
prompt =====================
prompt
create table CIDADE
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(10) not null,
  NOME      VARCHAR2(50) not null,
  ID_ESTADO NUMBER,
  ID_PAIS   NUMBER not null
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
alter table CIDADE
  add constraint CIDADE_PK primary key (ID)
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
alter table CIDADE
  add constraint CIDADE_UK unique (CODIGO)
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
alter table CIDADE
  add constraint CIDADE_ESTADO_FK foreign key (ID_ESTADO)
  references ESTADO (ID);
alter table CIDADE
  add constraint CIDADE_PAIS_FK foreign key (ID_PAIS)
  references PAIS (ID);

prompt
prompt Creating table CLIENTE
prompt ======================
prompt
create table CLIENTE
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(20) not null,
  NOME      VARCHAR2(50) not null,
  ID_CIDADE NUMBER not null
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
alter table CLIENTE
  add constraint CLIENTE_PK primary key (ID)
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
alter table CLIENTE
  add constraint CLIENTE_UK unique (CODIGO)
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
alter table CLIENTE
  add constraint CLIENTE_CIDADE_FK foreign key (ID_CIDADE)
  references CIDADE (ID);

prompt
prompt Creating table FABRICANTE
prompt =========================
prompt
create table FABRICANTE
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(50) not null
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
alter table FABRICANTE
  add constraint FABRICANTE_PK primary key (ID)
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
alter table FABRICANTE
  add constraint FABRICANTE_UK unique (CODIGO)
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
prompt Creating table FAMILIA
prompt ======================
prompt
create table FAMILIA
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(10) not null,
  NOME   VARCHAR2(60) not null
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
alter table FAMILIA
  add constraint FAMILIA_PK primary key (ID)
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
alter table FAMILIA
  add constraint FAMILIA_UK unique (CODIGO)
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
prompt Creating table REPRESENTANTE
prompt ============================
prompt
create table REPRESENTANTE
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(10) not null,
  NOME   VARCHAR2(40) not null
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
alter table REPRESENTANTE
  add constraint REPRESENTANTE_PK primary key (ID)
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
alter table REPRESENTANTE
  add constraint REPRESENTANTE_UK unique (CODIGO)
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
prompt Creating table PEDIDO_VENDA
prompt ===========================
prompt
create table PEDIDO_VENDA
(
  ID               NUMBER not null,
  CODIGO           VARCHAR2(10) not null,
  DATA_EMISSAO     DATE default sysdate not null,
  ID_CLIENTE       NUMBER not null,
  ID_REPRESENTANTE NUMBER not null,
  VALOR_ITENS      NUMBER default 0 not null
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
alter table PEDIDO_VENDA
  add constraint PEDIDO_VENDA_PK primary key (ID)
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
alter table PEDIDO_VENDA
  add constraint PEDIDO_VENDA_UK unique (CODIGO)
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
alter table PEDIDO_VENDA
  add constraint PEDIDO_VENDA_CLI_FK foreign key (ID_CLIENTE)
  references CLIENTE (ID);
alter table PEDIDO_VENDA
  add constraint PEDIDO_VENDA_REP_FK foreign key (ID_REPRESENTANTE)
  references REPRESENTANTE (ID);

prompt
prompt Creating table PRODUTO
prompt ======================
prompt
create table PRODUTO
(
  ID            NUMBER not null,
  CODIGO        VARCHAR2(20) not null,
  NOME          VARCHAR2(60) not null,
  ID_FAMILIA    NUMBER not null,
  ID_FABRICANTE NUMBER,
  PRECO         NUMBER
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
alter table PRODUTO
  add constraint PRODUTO_PK primary key (ID)
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
alter table PRODUTO
  add constraint PRODUTO_UK unique (CODIGO)
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
alter table PRODUTO
  add constraint PRODUTO_FABRICANTE_FK foreign key (ID_FABRICANTE)
  references FABRICANTE (ID);
alter table PRODUTO
  add constraint PRODUTO_FAMILIA_FK foreign key (ID_FAMILIA)
  references FAMILIA (ID);

prompt
prompt Creating table PEDIDO_VENDA_ITEM
prompt ================================
prompt
create table PEDIDO_VENDA_ITEM
(
  ID              NUMBER not null,
  ID_PEDIDO_VENDA NUMBER not null,
  ID_PRODUTO      NUMBER not null,
  QUANTIDADE      NUMBER default 0 not null,
  PRECO           NUMBER default 0 not null
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
alter table PEDIDO_VENDA_ITEM
  add constraint PEDIDO_VENDA_ITEM_PK primary key (ID)
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
alter table PEDIDO_VENDA_ITEM
  add constraint PEDIDO_VENDA_ITEM_UK unique (ID_PEDIDO_VENDA,ID_PRODUTO)
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
alter table PEDIDO_VENDA_ITEM
  add constraint PEDIDO_VENDA_ITEM_PED_FK foreign key (ID_PEDIDO_VENDA)
  references PEDIDO_VENDA (ID) on delete cascade;
alter table PEDIDO_VENDA_ITEM
  add constraint PEDIDO_VENDA_ITEM_PRO_FK foreign key (ID_PRODUTO)
  references PRODUTO (ID);


spool off
