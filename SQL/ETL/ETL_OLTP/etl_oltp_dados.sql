prompt PL/SQL Developer import file
prompt Created on quarta-feira, 6 de fevereiro de 2008 by Rodrigo
set feedback off
set define off
prompt Dropping PAIS...
drop table PAIS cascade constraints;
prompt Dropping ESTADO...
drop table ESTADO cascade constraints;
prompt Dropping CIDADE...
drop table CIDADE cascade constraints;
prompt Dropping CLIENTE...
drop table CLIENTE cascade constraints;
prompt Dropping FABRICANTE...
drop table FABRICANTE cascade constraints;
prompt Dropping FAMILIA...
drop table FAMILIA cascade constraints;
prompt Dropping REPRESENTANTE...
drop table REPRESENTANTE cascade constraints;
prompt Dropping PEDIDO_VENDA...
drop table PEDIDO_VENDA cascade constraints;
prompt Dropping PRODUTO...
drop table PRODUTO cascade constraints;
prompt Dropping PEDIDO_VENDA_ITEM...
drop table PEDIDO_VENDA_ITEM cascade constraints;
prompt Creating PAIS...
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

prompt Creating ESTADO...
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

prompt Creating CIDADE...
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

prompt Creating CLIENTE...
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

prompt Creating FABRICANTE...
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

prompt Creating FAMILIA...
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

prompt Creating REPRESENTANTE...
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

prompt Creating PEDIDO_VENDA...
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

prompt Creating PRODUTO...
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

prompt Creating PEDIDO_VENDA_ITEM...
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

prompt Disabling triggers for PAIS...
alter table PAIS disable all triggers;
prompt Disabling triggers for ESTADO...
alter table ESTADO disable all triggers;
prompt Disabling triggers for CIDADE...
alter table CIDADE disable all triggers;
prompt Disabling triggers for CLIENTE...
alter table CLIENTE disable all triggers;
prompt Disabling triggers for FABRICANTE...
alter table FABRICANTE disable all triggers;
prompt Disabling triggers for FAMILIA...
alter table FAMILIA disable all triggers;
prompt Disabling triggers for REPRESENTANTE...
alter table REPRESENTANTE disable all triggers;
prompt Disabling triggers for PEDIDO_VENDA...
alter table PEDIDO_VENDA disable all triggers;
prompt Disabling triggers for PRODUTO...
alter table PRODUTO disable all triggers;
prompt Disabling triggers for PEDIDO_VENDA_ITEM...
alter table PEDIDO_VENDA_ITEM disable all triggers;
prompt Disabling foreign key constraints for ESTADO...
alter table ESTADO disable constraint ESTADO_PAIS_FK;
prompt Disabling foreign key constraints for CIDADE...
alter table CIDADE disable constraint CIDADE_ESTADO_FK;
alter table CIDADE disable constraint CIDADE_PAIS_FK;
prompt Disabling foreign key constraints for CLIENTE...
alter table CLIENTE disable constraint CLIENTE_CIDADE_FK;
prompt Disabling foreign key constraints for PEDIDO_VENDA...
alter table PEDIDO_VENDA disable constraint PEDIDO_VENDA_CLI_FK;
alter table PEDIDO_VENDA disable constraint PEDIDO_VENDA_REP_FK;
prompt Disabling foreign key constraints for PRODUTO...
alter table PRODUTO disable constraint PRODUTO_FABRICANTE_FK;
alter table PRODUTO disable constraint PRODUTO_FAMILIA_FK;
prompt Disabling foreign key constraints for PEDIDO_VENDA_ITEM...
alter table PEDIDO_VENDA_ITEM disable constraint PEDIDO_VENDA_ITEM_PED_FK;
alter table PEDIDO_VENDA_ITEM disable constraint PEDIDO_VENDA_ITEM_PRO_FK;
prompt Loading PAIS...
insert into PAIS (ID, CODIGO, NOME)
values (1, 'BR', 'BRASIL');
commit;
prompt 1 records loaded
prompt Loading ESTADO...
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (1, 'BR-SP', 'SAO PAULO', 'SP', 1);
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (2, 'BR-RJ', 'RIO DE JANEIRO', 'RJ', 1);
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (3, 'BR-MG', 'MINAS GERAIS', 'MG', 1);
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (4, 'BR-ES', 'ESPIRITO SANTO', 'ES', 1);
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (5, 'BR-PR', 'PARANA', 'PR', 1);
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (6, 'BR-SC', 'SANTA CATARINA', 'SC', 1);
insert into ESTADO (ID, CODIGO, NOME, SIGLA, ID_PAIS)
values (7, 'BR-RS', 'RIO GRANDE DO SUL', 'RS', 1);
commit;
prompt 7 records loaded
prompt Loading CIDADE...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1, 'CPS', 'CAMPINAS', 1, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2, 'SP', 'SAO PAULO', 1, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3, 'RJ', 'RIO DE JANEIRO', 2, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4, 'BH', 'BELO HORIZONTE', 3, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5, 'VIT', 'VITORIA', 4, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (6, 'CUR', 'CURITIBA', 5, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (7, 'FLO', 'FLORIANOPOLIS', 6, 1);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (8, 'POA', 'PORTO ALEGRE', 7, 1);
commit;
prompt 8 records loaded
prompt Loading CLIENTE...
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (1, '00001', 'CLIENTE 1', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (2, '00002', 'CLIENTE 2', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (3, '00003', 'CLIENTE 3', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (4, '00004', 'CLIENTE 4', 7);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (5, '00005', 'CLIENTE 5', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (6, '00006', 'CLIENTE 6', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (7, '00007', 'CLIENTE 7', 5);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (8, '00008', 'CLIENTE 8', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (9, '00009', 'CLIENTE 9', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (10, '00010', 'CLIENTE 10', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (11, '00011', 'CLIENTE 11', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (12, '00012', 'CLIENTE 12', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (13, '00013', 'CLIENTE 13', 4);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (14, '00014', 'CLIENTE 14', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (15, '00015', 'CLIENTE 15', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (16, '00016', 'CLIENTE 16', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (17, '00017', 'CLIENTE 17', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (18, '00018', 'CLIENTE 18', 7);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (19, '00019', 'CLIENTE 19', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (20, '00020', 'CLIENTE 20', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (21, '00021', 'CLIENTE 21', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (22, '00022', 'CLIENTE 22', 5);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (23, '00023', 'CLIENTE 23', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (24, '00024', 'CLIENTE 24', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (25, '00025', 'CLIENTE 25', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (26, '00026', 'CLIENTE 26', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (27, '00027', 'CLIENTE 27', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (28, '00028', 'CLIENTE 28', 4);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (29, '00029', 'CLIENTE 29', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (30, '00030', 'CLIENTE 30', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (31, '00031', 'CLIENTE 31', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (32, '00032', 'CLIENTE 32', 4);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (33, '00033', 'CLIENTE 33', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (34, '00034', 'CLIENTE 34', 7);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (35, '00035', 'CLIENTE 35', 3);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (36, '00036', 'CLIENTE 36', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (37, '00037', 'CLIENTE 37', 7);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (38, '00038', 'CLIENTE 38', 4);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (39, '00039', 'CLIENTE 39', 7);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (40, '00040', 'CLIENTE 40', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (41, '00041', 'CLIENTE 41', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (42, '00042', 'CLIENTE 42', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (43, '00043', 'CLIENTE 43', 2);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (44, '00044', 'CLIENTE 44', 4);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (45, '00045', 'CLIENTE 45', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (46, '00046', 'CLIENTE 46', 5);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (47, '00047', 'CLIENTE 47', 1);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (48, '00048', 'CLIENTE 48', 6);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (49, '00049', 'CLIENTE 49', 5);
insert into CLIENTE (ID, CODIGO, NOME, ID_CIDADE)
values (50, '00050', 'CLIENTE 50', 6);
commit;
prompt 50 records loaded
prompt Loading FABRICANTE...
insert into FABRICANTE (ID, CODIGO, NOME)
values (1, '001', 'STIEFEL');
insert into FABRICANTE (ID, CODIGO, NOME)
values (2, '002', 'SANDOZ');
insert into FABRICANTE (ID, CODIGO, NOME)
values (3, '003', 'FARMOQUIMICA');
insert into FABRICANTE (ID, CODIGO, NOME)
values (4, '004', 'MEDLEY');
insert into FABRICANTE (ID, CODIGO, NOME)
values (5, '005', 'MANTECORP');
insert into FABRICANTE (ID, CODIGO, NOME)
values (6, '006', 'JANSSEN-CILAG');
insert into FABRICANTE (ID, CODIGO, NOME)
values (7, '007', 'BIOSINTETICA FARMA');
insert into FABRICANTE (ID, CODIGO, NOME)
values (8, '008', 'NOVARTIS BIOCIENCI');
insert into FABRICANTE (ID, CODIGO, NOME)
values (9, '009', 'TORRENT');
insert into FABRICANTE (ID, CODIGO, NOME)
values (10, '010', 'LILLY');
insert into FABRICANTE (ID, CODIGO, NOME)
values (11, '011', 'ALTANA');
insert into FABRICANTE (ID, CODIGO, NOME)
values (12, '012', 'WYETH');
insert into FABRICANTE (ID, CODIGO, NOME)
values (13, '013', 'EUROFARMA');
insert into FABRICANTE (ID, CODIGO, NOME)
values (14, '014', 'BOEHRINGER');
insert into FABRICANTE (ID, CODIGO, NOME)
values (15, '015', 'ORGANON');
commit;
prompt 15 records loaded
prompt Loading FAMILIA...
insert into FAMILIA (ID, CODIGO, NOME)
values (1, '01', 'ANTIINFECCIOSOS EM GERAL');
insert into FAMILIA (ID, CODIGO, NOME)
values (2, '02', 'APARELHO DIGESTIVO E METABOLISMO');
insert into FAMILIA (ID, CODIGO, NOME)
values (3, '03', 'APARELHO RESPIRATORIO');
insert into FAMILIA (ID, CODIGO, NOME)
values (4, '04', 'DERMATOLOGIA');
insert into FAMILIA (ID, CODIGO, NOME)
values (5, '05', 'PARASITOLOGIA');
insert into FAMILIA (ID, CODIGO, NOME)
values (6, '06', 'PREPARADOS HORMONAIS (EXCLUINDO HORMONIOS SEXUAIS)');
insert into FAMILIA (ID, CODIGO, NOME)
values (7, '07', 'SANGUE E ORGAOS FORMADORES DE SANGUE');
insert into FAMILIA (ID, CODIGO, NOME)
values (8, '08', 'SISTEMA CARDIOVASCULAR');
insert into FAMILIA (ID, CODIGO, NOME)
values (9, '09', 'SISTEMA GENITURINARIO E HORMONIOS SEXUAIS');
insert into FAMILIA (ID, CODIGO, NOME)
values (10, '10', 'SISTEMA MUSCULO ESQUELETICO');
insert into FAMILIA (ID, CODIGO, NOME)
values (11, '11', 'SISTEMA NERVOSO CENTRAL');
insert into FAMILIA (ID, CODIGO, NOME)
values (12, '12', 'ORGAOS DOS SENTIDOS');
commit;
prompt 12 records loaded
prompt Loading REPRESENTANTE...
insert into REPRESENTANTE (ID, CODIGO, NOME)
values (1, '01', 'JOAO');
insert into REPRESENTANTE (ID, CODIGO, NOME)
values (2, '02', 'MARIA');
insert into REPRESENTANTE (ID, CODIGO, NOME)
values (3, '03', 'PEDRO');
insert into REPRESENTANTE (ID, CODIGO, NOME)
values (4, '04', 'JOSE');
commit;
prompt 4 records loaded
prompt Loading PEDIDO_VENDA...
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (1, '000001', to_date('31-01-2008', 'dd-mm-yyyy'), 2, 3, 3010.67);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (2, '000002', to_date('03-03-2007', 'dd-mm-yyyy'), 19, 3, 6346.12);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (3, '000003', to_date('11-12-2007', 'dd-mm-yyyy'), 8, 2, 42.9);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (4, '000004', to_date('24-04-2007', 'dd-mm-yyyy'), 32, 3, 13295.62);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (5, '000005', to_date('26-10-2007', 'dd-mm-yyyy'), 9, 2, 8847.04);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (6, '000006', to_date('09-10-2007', 'dd-mm-yyyy'), 16, 2, 12263.11);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (7, '000007', to_date('26-12-2007', 'dd-mm-yyyy'), 33, 1, 3688.04);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (8, '000008', to_date('12-04-2007', 'dd-mm-yyyy'), 29, 1, 10977.4);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (9, '000009', to_date('30-10-2007', 'dd-mm-yyyy'), 35, 2, 15292.04);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (10, '000010', to_date('27-05-2007', 'dd-mm-yyyy'), 2, 1, 1637.97);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (11, '000011', to_date('07-08-2007', 'dd-mm-yyyy'), 4, 2, 18153.96);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (12, '000012', to_date('28-02-2007', 'dd-mm-yyyy'), 24, 3, 5837.19);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (13, '000013', to_date('25-08-2007', 'dd-mm-yyyy'), 34, 3, 1260);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (14, '000014', to_date('15-08-2007', 'dd-mm-yyyy'), 9, 2, 1175.36);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (15, '000015', to_date('05-07-2007', 'dd-mm-yyyy'), 44, 1, 8027.62);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (16, '000016', to_date('19-01-2008', 'dd-mm-yyyy'), 30, 1, 1508.1);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (17, '000017', to_date('25-03-2007', 'dd-mm-yyyy'), 17, 1, 8746.16);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (18, '000018', to_date('15-02-2007', 'dd-mm-yyyy'), 2, 1, 13723.16);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (19, '000019', to_date('28-09-2007', 'dd-mm-yyyy'), 18, 2, 9724.46);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (20, '000020', to_date('17-11-2007', 'dd-mm-yyyy'), 41, 1, 9237.31);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (21, '000021', to_date('25-07-2007', 'dd-mm-yyyy'), 5, 3, 7377.17);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (22, '000022', to_date('24-09-2007', 'dd-mm-yyyy'), 23, 1, 2500.45);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (23, '000023', to_date('16-03-2007', 'dd-mm-yyyy'), 13, 2, 944.46);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (24, '000024', to_date('09-02-2007', 'dd-mm-yyyy'), 33, 3, 3785.44);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (25, '000025', to_date('27-04-2007', 'dd-mm-yyyy'), 35, 1, 18029.26);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (26, '000026', to_date('04-11-2007', 'dd-mm-yyyy'), 19, 2, 2065.4);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (27, '000027', to_date('02-09-2007', 'dd-mm-yyyy'), 2, 3, 7170.05);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (28, '000028', to_date('02-03-2007', 'dd-mm-yyyy'), 4, 1, 11964.25);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (29, '000029', to_date('29-08-2007', 'dd-mm-yyyy'), 35, 3, 7927.41);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (30, '000030', to_date('31-08-2007', 'dd-mm-yyyy'), 8, 1, 12636.71);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (31, '000031', to_date('18-12-2007', 'dd-mm-yyyy'), 21, 2, 9596.3);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (32, '000032', to_date('08-12-2007', 'dd-mm-yyyy'), 44, 1, 9778.17);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (33, '000033', to_date('21-10-2007', 'dd-mm-yyyy'), 7, 3, 13942.69);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (34, '000034', to_date('06-06-2007', 'dd-mm-yyyy'), 16, 2, 6841.06);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (35, '000035', to_date('24-12-2007', 'dd-mm-yyyy'), 49, 1, 16381.21);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (36, '000036', to_date('03-12-2007', 'dd-mm-yyyy'), 22, 1, 5553.9);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (37, '000037', to_date('19-01-2008', 'dd-mm-yyyy'), 37, 2, 4431.47);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (38, '000038', to_date('22-01-2008', 'dd-mm-yyyy'), 36, 2, 12058.97);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (39, '000039', to_date('05-01-2008', 'dd-mm-yyyy'), 42, 1, 12267.41);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (40, '000040', to_date('23-08-2007', 'dd-mm-yyyy'), 22, 3, 11972.27);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (41, '000041', to_date('24-08-2007', 'dd-mm-yyyy'), 21, 2, 1953.52);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (42, '000042', to_date('18-08-2007', 'dd-mm-yyyy'), 5, 3, 11329.03);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (43, '000043', to_date('19-06-2007', 'dd-mm-yyyy'), 26, 1, 7295.59);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (44, '000044', to_date('28-07-2007', 'dd-mm-yyyy'), 2, 2, 8484.76);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (45, '000045', to_date('24-12-2007', 'dd-mm-yyyy'), 45, 2, 15507.68);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (46, '000046', to_date('23-09-2007', 'dd-mm-yyyy'), 47, 2, 9909.11);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (47, '000047', to_date('08-07-2007', 'dd-mm-yyyy'), 2, 3, 13363.82);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (48, '000048', to_date('21-11-2007', 'dd-mm-yyyy'), 37, 3, 12971.24);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (49, '000049', to_date('11-02-2007', 'dd-mm-yyyy'), 6, 3, 2234.61);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (50, '000050', to_date('10-09-2007', 'dd-mm-yyyy'), 6, 3, 4141.46);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (51, '000051', to_date('13-12-2007', 'dd-mm-yyyy'), 48, 3, 15562.6);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (52, '000052', to_date('27-09-2007', 'dd-mm-yyyy'), 19, 1, 13495.38);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (53, '000053', to_date('01-01-2008', 'dd-mm-yyyy'), 23, 3, 7529.32);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (54, '000054', to_date('04-02-2007', 'dd-mm-yyyy'), 13, 3, 12227.7);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (55, '000055', to_date('05-05-2007', 'dd-mm-yyyy'), 18, 3, 21319.26);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (56, '000056', to_date('10-11-2007', 'dd-mm-yyyy'), 12, 2, 17352.57);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (57, '000057', to_date('18-09-2007', 'dd-mm-yyyy'), 18, 1, 13528.24);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (58, '000058', to_date('27-03-2007', 'dd-mm-yyyy'), 34, 1, 15772.4);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (59, '000059', to_date('08-09-2007', 'dd-mm-yyyy'), 8, 1, 501.5);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (60, '000060', to_date('08-12-2007', 'dd-mm-yyyy'), 29, 1, 7338.92);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (61, '000061', to_date('14-08-2007', 'dd-mm-yyyy'), 1, 3, 3086.9);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (62, '000062', to_date('21-03-2007', 'dd-mm-yyyy'), 46, 3, 7983.3);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (63, '000063', to_date('04-10-2007', 'dd-mm-yyyy'), 27, 1, 14844.04);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (64, '000064', to_date('19-07-2007', 'dd-mm-yyyy'), 48, 3, 2804.72);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (65, '000065', to_date('05-05-2007', 'dd-mm-yyyy'), 36, 3, 11676.07);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (66, '000066', to_date('15-06-2007', 'dd-mm-yyyy'), 40, 3, 5573.54);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (67, '000067', to_date('02-11-2007', 'dd-mm-yyyy'), 17, 3, 13053.7);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (68, '000068', to_date('28-09-2007', 'dd-mm-yyyy'), 36, 1, 6912.64);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (69, '000069', to_date('16-01-2008', 'dd-mm-yyyy'), 38, 3, 16944.05);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (70, '000070', to_date('24-10-2007', 'dd-mm-yyyy'), 42, 3, 3558.59);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (71, '000071', to_date('23-04-2007', 'dd-mm-yyyy'), 45, 3, 8019.03);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (72, '000072', to_date('19-09-2007', 'dd-mm-yyyy'), 31, 2, 10340.47);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (73, '000073', to_date('28-08-2007', 'dd-mm-yyyy'), 4, 2, 15971.43);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (74, '000074', to_date('29-08-2007', 'dd-mm-yyyy'), 14, 2, 1135.84);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (75, '000075', to_date('04-11-2007', 'dd-mm-yyyy'), 32, 2, 11261.23);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (76, '000076', to_date('20-06-2007', 'dd-mm-yyyy'), 32, 1, 13534.78);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (77, '000077', to_date('20-09-2007', 'dd-mm-yyyy'), 17, 2, 5252.86);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (78, '000078', to_date('19-01-2008', 'dd-mm-yyyy'), 14, 2, 15717.61);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (79, '000079', to_date('31-05-2007', 'dd-mm-yyyy'), 19, 2, 12687.82);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (80, '000080', to_date('23-12-2007', 'dd-mm-yyyy'), 3, 3, 18662.64);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (81, '000081', to_date('18-05-2007', 'dd-mm-yyyy'), 34, 1, 14699.76);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (82, '000082', to_date('11-02-2007', 'dd-mm-yyyy'), 36, 2, 5571.86);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (83, '000083', to_date('22-03-2007', 'dd-mm-yyyy'), 2, 3, 9951.01);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (84, '000084', to_date('24-01-2008', 'dd-mm-yyyy'), 27, 1, 6643.53);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (85, '000085', to_date('06-11-2007', 'dd-mm-yyyy'), 46, 3, 5628.3);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (86, '000086', to_date('30-08-2007', 'dd-mm-yyyy'), 24, 2, 3885.86);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (87, '000087', to_date('03-05-2007', 'dd-mm-yyyy'), 38, 1, 11167.2);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (88, '000088', to_date('08-11-2007', 'dd-mm-yyyy'), 21, 3, 10902.74);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (89, '000089', to_date('06-05-2007', 'dd-mm-yyyy'), 19, 2, 625.67);
insert into PEDIDO_VENDA (ID, CODIGO, DATA_EMISSAO, ID_CLIENTE, ID_REPRESENTANTE, VALOR_ITENS)
values (90, '000090', to_date('08-09-2007', 'dd-mm-yyyy'), 37, 2, 2512);
commit;
prompt 90 records loaded
prompt Loading PRODUTO...
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (1, '0001', 'AMOXI-PED', 1, 1, 1.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (2, '0002', 'AMOXICILINA', 1, 2, 43.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (3, '0003', 'AMOXICILINA+CLAVULANATO DE POTASSIO', 1, 2, 14.66);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (4, '0004', 'AZITRAX', 1, 3, 16.16);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (5, '0005', 'AZITROMICINA', 1, 4, 19.42);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (6, '0006', 'CELEXIN', 1, 5, 5.47);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (7, '0007', 'CETONAX', 1, 6, 4.83);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (8, '0008', 'CLORCIN', 1, 1, 3.29);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (9, '0009', 'CLORIDRATO DE CIPROFLOXACINO', 1, 7, 45.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (10, '0010', 'FLUCONAZOL', 1, 7, 38.32);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (11, '0011', 'LAMISIL', 1, 8, 35.83);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (12, '0012', 'LEVAQUIN', 1, 6, 36.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (13, '0013', 'NIZORAL', 1, 6, 8.32);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (14, '0014', 'SPORANOX', 1, 6, 23.24);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (15, '0015', 'UNIZOL', 1, 3, 41.27);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (16, '0016', 'AXID', 2, 3, 24.14);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (17, '0017', 'AZUKON', 2, 9, 43.28);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (18, '0018', 'AZULIX', 2, 9, 38.96);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (19, '0019', 'BROMOPRIDA', 2, 7, 25.87);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (20, '0020', 'CALCI-PED', 2, 1, 41.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (21, '0021', 'CALCIUM D3', 2, 8, 7.14);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (22, '0022', 'CLORIDRATO DE METFORMINA', 2, 7, 25.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (23, '0023', 'CLORIDRATO DE SIBUTRAMINA', 2, 2, 30);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (24, '0024', 'COENAPLEX', 2, 10, 38.64);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (25, '0025', 'DICETEL', 2, 11, 38.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (26, '0026', 'DIMEFOR', 2, 3, 28.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (27, '0027', 'DIMETICONA', 2, 4, 34.58);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (28, '0028', 'DOMPERIDONA', 2, 4, 47.63);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (29, '0029', 'GLIBENCLAMIDA', 2, 7, 49.24);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (30, '0030', 'GLIMEPIL', 2, 3, 34.29);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (31, '0031', 'GLIMEPIRIDA', 2, 7, 5.76);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (32, '0032', 'GLIMEPIRIDA', 2, 4, 25.87);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (33, '0033', 'HUMULIN', 2, 10, 25.56);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (34, '0034', 'MATERNA', 2, 12, 47.67);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (35, '0035', 'MATERVIT', 2, 3, 17);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (36, '0036', 'MOTILIUM', 2, 6, 35.97);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (37, '0037', 'MYLICON', 2, 6, 38.74);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (38, '0038', 'PANTOZOL', 2, 11, 10.14);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (39, '0039', 'PARIET', 2, 6, 45.77);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (40, '0040', 'SLOW K', 2, 8, 29.85);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (41, '0041', 'STARFORM', 2, 8, 34.28);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (42, '0042', 'STARLIX', 2, 8, 5.62);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (43, '0043', 'VITA-PED', 2, 1, 14.86);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (44, '0044', 'ZELMAC', 2, 8, 8.27);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (45, '0045', 'ABRILAR', 3, 3, 27.95);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (46, '0046', 'ACEBROFILINA', 3, 7, 9.15);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (47, '0047', 'ALENIA', 3, 7, 14.17);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (48, '0048', 'ALERGO FILINAL', 3, 13, 29.49);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (49, '0049', 'ATROVENT', 3, 14, 14.15);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (50, '0050', 'BROMETO DE IPATROPIO', 3, 7, 30.73);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (51, '0051', 'BUSONID', 3, 7, 37.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (52, '0052', 'CARBOCISTEINA', 3, 7, 4.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (53, '0053', 'CLORIDRATO DE AMBROXOL', 3, 7, 6.78);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (54, '0054', 'COMBIVENT', 3, 14, 40.37);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (55, '0055', 'DICLORIDRATO DE CETIRIZINA', 3, 7, 30.43);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (56, '0056', 'FLUIR', 3, 5, 37.48);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (57, '0057', 'FLUTICAPS', 3, 7, 17.81);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (58, '0058', 'FORADIL', 3, 8, 41.13);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (59, '0059', 'FORASEQ', 3, 8, 5.6);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (60, '0060', 'FORMOCAPS', 3, 7, 3.19);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (61, '0061', 'FUMARATO DE CETOTIFENO', 3, 7, 33.22);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (62, '0062', 'LORATADINA', 3, 7, 28.25);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (63, '0063', 'LORATADINA+PSEUDOEFEDRINA', 3, 7, 18.82);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (64, '0064', 'POLARAMINE', 3, 5, 16.31);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (65, '0065', 'RUPAFIN', 3, 7, 33.68);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (66, '0066', 'SPIRIVA', 3, 14, 45.31);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (67, '0067', 'ACNESOAP', 4, 1, 24.29);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (68, '0068', 'ADAPALENO', 4, 7, 38.73);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (69, '0069', 'BABIX', 4, 1, 28.71);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (70, '0070', 'BETADERM', 4, 1, 21.53);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (71, '0071', 'BETADERM N', 4, 1, 30.87);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (72, '0072', 'CETONAX', 4, 6, 33.11);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (73, '0073', 'CLARIPEL', 4, 1, 24.39);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (74, '0074', 'CLINAGEL', 4, 1, 6.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (75, '0075', 'DALAP', 4, 7, 27.66);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (76, '0076', 'DIPROGENTA', 4, 5, 4.91);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (77, '0077', 'DIPROSALIC', 4, 5, 42.67);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (78, '0078', 'DIPROSONE', 4, 5, 46.27);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (79, '0079', 'DUOFILM', 4, 1, 35.72);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (80, '0080', 'ELIDEL', 4, 8, 25.65);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (81, '0081', 'EPIDRAT', 4, 5, 8.22);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (82, '0082', 'EPISOL', 4, 5, 47.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (83, '0083', 'FINASTERIDA', 4, 7, 7.97);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (84, '0084', 'FUROATO DE MOMETASONA', 4, 7, 16.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (85, '0085', 'FUROATO DE MOMETASONA', 4, 4, 5.85);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (86, '0086', 'HIDRAFIL', 4, 1, 28.69);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (87, '0087', 'HIDRAPEL', 4, 1, 5.66);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (89, '0089', 'ISOTREXOL', 4, 1, 45.52);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (90, '0090', 'LACTICARE', 4, 1, 17.43);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (91, '0091', 'LAMISIL', 4, 8, 45.34);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (93, '0093', 'NIZORAL', 4, 6, 4.84);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (94, '0094', 'POLARAMINE', 4, 5, 38.17);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (95, '0095', 'PRURIX', 4, 1, 46.48);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (96, '0096', 'QUADRIDERM', 4, 5, 7.88);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (98, '0098', 'SOLUGEL', 4, 1, 40.58);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (99, '0099', 'SPECTRABAN', 4, 1, 6.61);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (100, '0100', 'STIEFCORTIL', 4, 1, 46.53);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (102, '0102', 'STIEMYCIN', 4, 1, 12.18);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (103, '0103', 'TARFLEX', 4, 1, 34.98);
commit;
prompt 100 records committed...
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (104, '0104', 'TRIANCINOLONA+GRAMICIDINA+NEOMICINA+NISTATINA', 4, 4, 31.68);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (105, '0105', 'VAL BETAMETASONA+GENTAMICINA+TOLNAFTATO+CLIOQ', 4, 4, 27.9);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (107, '0107', 'WARTEC', 4, 1, 12.87);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (108, '0108', 'ZN SHAMPOO', 4, 1, 35.43);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (109, '0109', 'MEBENDAZOL', 5, 4, 49.15);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (110, '0110', 'PANTELMIN', 5, 6, 2.18);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (111, '0111', 'CELESTAMINE', 6, 5, 1.37);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (113, '0113', 'DIPROSPAN', 6, 5, 5.44);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (114, '0114', 'PREDSIM', 6, 5, 25.45);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (115, '0115', 'DISGREN', 7, 7, 34.8);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (116, '0116', 'NORIPURUM', 7, 11, 28.25);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (117, '0117', 'NORIPURUM FOLICO', 7, 11, 19.57);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (118, '0118', 'NORIPURUM VITAMINADO', 7, 11, 43.6);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (119, '0119', 'PREMARIN', 7, 12, 13.68);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (120, '0120', 'VASOGARD', 7, 7, 28.86);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (121, '0121', 'AMLOCOR', 8, 9, 18.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (122, '0122', 'ANGIPRESS', 8, 7, 31.77);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (123, '0123', 'ANGIPRESS CD', 8, 7, 23.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (124, '0124', 'ATENOLOL+CLORTALIDONA', 8, 7, 35.82);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (125, '0125', 'BESILATO DE ANLODIPINO', 8, 7, 37.89);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (126, '0126', 'BETACARD', 8, 9, 10.76);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (127, '0127', 'CAPTOPRIL+HIDROCLOROTIAZIDA', 8, 7, 14.29);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (128, '0128', 'CARDIZEM', 8, 14, 35.45);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (129, '0129', 'CARVEDILOL', 8, 7, 48.18);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (130, '0130', 'CLORIDRATO DE AMILORIDA+HIDROCLOROTIAZIDA', 8, 7, 1.22);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (131, '0131', 'CLORIDRATO DE AMIODARONA', 8, 7, 45.31);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (132, '0132', 'CLORIDRATO DE DILTIAZEM', 8, 7, 43.75);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (133, '0133', 'CLORIDRATO DE SOTALOL', 8, 7, 48.27);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (134, '0134', 'CORDARENE', 8, 7, 20.82);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (135, '0135', 'CORDAREX', 8, 7, 2.24);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (136, '0136', 'CORUS', 8, 7, 3.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (137, '0137', 'CORUS H', 8, 7, 21);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (138, '0138', 'DILTOR', 8, 9, 8.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (139, '0139', 'DIOCOMB', 8, 8, 16.39);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (140, '0140', 'DIOVAN', 8, 8, 27.25);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (141, '0141', 'DIOVAN AMLO', 8, 8, 8.29);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (142, '0142', 'DIOVAN HCT', 8, 8, 4.69);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (143, '0143', 'ECATOR', 8, 9, 17.78);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (144, '0144', 'ECATOR H', 8, 9, 33.56);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (145, '0145', 'EUPRESSIN', 8, 7, 44.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (146, '0146', 'EUPRESSIN H', 8, 7, 13.87);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (147, '0147', 'FUROSEMIDA', 8, 7, 34.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (148, '0148', 'GENFIBROZILA', 8, 7, 8.15);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (149, '0149', 'INDAPEN', 8, 9, 21.41);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (150, '0150', 'KARVIL', 8, 9, 8);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (151, '0151', 'LESCOL', 8, 8, 26.75);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (152, '0152', 'LISINOPRIL', 8, 7, 28.22);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (153, '0153', 'LISINOPRIL+HIDROCLOROTIAZIDA', 8, 7, 43.6);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (154, '0154', 'LISTRIL', 8, 9, 24.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (155, '0155', 'LOSARTANA POTASSICA', 8, 7, 18.65);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (156, '0156', 'LOTAR', 8, 7, 11.79);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (157, '0157', 'MALEATO DE ENALAPRIL', 8, 7, 26.41);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (158, '0158', 'MALEATO DE ENALAPRIL+HIDROCLOROTIAZIDA', 8, 7, 2.98);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (159, '0159', 'METILDOPA', 8, 7, 8.4);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (160, '0160', 'MICARDIS', 8, 14, 3.1);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (161, '0161', 'MICARDIS HCT', 8, 14, 40.94);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (162, '0162', 'MINOR', 8, 7, 6.21);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (163, '0163', 'MIODARON', 8, 7, 38.97);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (164, '0164', 'MONONITRATO DE ISOSSORBIDA', 8, 7, 25.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (165, '0165', 'NIFELAT', 8, 7, 30.79);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (166, '0166', 'NITRENCORD', 8, 7, 46.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (167, '0167', 'NITRENDIPINO', 8, 7, 33.98);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (168, '0168', 'OXCORD', 8, 7, 38.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (169, '0169', 'OXIGEN', 8, 7, 44.98);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (170, '0170', 'PENTOXIFILINA', 8, 7, 36.77);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (171, '0171', 'RAMIPRIL', 8, 7, 1.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (172, '0172', 'SINERGEN', 8, 7, 16.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (173, '0173', 'STUGERON', 8, 6, 39.25);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (174, '0174', 'TARTARATO DE METROPOLOL', 8, 7, 42.9);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (175, '0175', 'TEBONIN', 8, 11, 3.88);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (176, '0176', 'TORLOS', 8, 9, 46.48);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (177, '0177', 'TORLOS H', 8, 9, 34.37);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (178, '0178', 'ACETATO DE CLOSTEBOL+SULF.NEOMICINA', 9, 4, 21.73);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (179, '0179', 'ADOLESS', 9, 3, 35.33);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (180, '0180', 'CERAZETTE', 9, 15, 31.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (181, '0181', 'CIALIS', 9, 10, 48.1);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (182, '0182', 'CLIMADERM', 9, 12, 49.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (183, '0183', 'COLPISTAR', 9, 3, 31.35);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (184, '0184', 'ESTALIS', 9, 8, 26.63);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (185, '0185', 'ESTRADOT', 9, 8, 40.62);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (186, '0186', 'EVANOR', 9, 12, 47.49);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (187, '0187', 'EVISTA', 9, 10, 24.98);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (188, '0188', 'EVRA', 9, 6, 12.19);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (189, '0189', 'FINASTERIDA', 9, 7, 22.68);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (190, '0190', 'GINESSE', 9, 3, 38.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (191, '0191', 'GRACIAL', 9, 15, 31.79);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (192, '0192', 'GYNOMAX', 9, 3, 23.16);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (193, '0193', 'HARMONET', 9, 12, 32.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (194, '0194', 'LIVIAL', 9, 15, 48.77);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (195, '0195', 'LOMEXIN', 9, 11, 43.42);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (196, '0196', 'MACRODANTINA', 9, 5, 1.21);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (197, '0197', 'MERCILON', 9, 15, 29.87);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (198, '0198', 'MINESSE', 9, 12, 3.46);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (199, '0199', 'MINULET', 9, 12, 46.86);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (200, '0200', 'NORDETTE', 9, 12, 43.71);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (201, '0201', 'NORTREL', 9, 12, 49.21);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (202, '0202', 'NUVARING', 9, 15, 8.65);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (203, '0203', 'POSTOVAL', 9, 12, 41.18);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (205, '0205', 'PREMARIN', 9, 12, 28.46);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (206, '0206', 'PREMELLE', 9, 12, 22.14);
commit;
prompt 200 records committed...
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (207, '0207', 'REDUCLIM', 9, 3, 40.86);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (208, '0208', 'SECNI-PLUS', 9, 3, 5.59);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (210, '0210', 'SYSTEN', 9, 6, 24.39);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (211, '0211', 'SYSTEN CONTI', 9, 6, 25.69);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (212, '0212', 'SYSTEN SEQUI', 9, 6, 39.31);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (214, '0214', 'TRINORDIOL', 9, 12, 15.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (215, '0215', 'ALENDIL', 10, 3, 23.21);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (216, '0216', 'ALENDRONATO SODICO', 10, 7, 5.64);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (217, '0217', 'CATAFLAM', 10, 8, 42.33);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (219, '0219', 'DICLOFENACO RESINATO', 10, 7, 45.71);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (220, '0220', 'FLOTAC', 10, 8, 21.8);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (221, '0221', 'INICOX', 10, 3, 40.24);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (222, '0222', 'MELOXICAM', 10, 7, 2.34);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (223, '0223', 'MOVATEC', 10, 14, 44.85);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (224, '0224', 'NAPROXENO', 10, 7, 22.24);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (225, '0225', 'PARALON', 10, 6, 21.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (226, '0226', 'PREXIGE', 10, 8, 32.42);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (227, '0227', 'SCAFLAM', 10, 5, 32.75);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (228, '0228', 'TENOXEN', 10, 7, 40.45);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (229, '0229', 'VOLTAREN', 10, 8, 27.6);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (230, '0230', 'ACIDO MEFENÂMICO', 11, 7, 16.23);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (231, '0231', 'ALCYTAM', 11, 9, 21.71);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (232, '0232', 'ALIVIUM', 11, 5, 33.17);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (233, '0233', 'ALPRAZOLAM', 11, 7, 48.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (234, '0234', 'ALTROX', 11, 9, 16.88);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (235, '0235', 'APRAZ', 11, 5, 23.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (236, '0236', 'ARTANE', 11, 12, 44.66);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (237, '0237', 'BROMAZEPAM', 11, 7, 21.57);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (238, '0238', 'CARBAMAZEPINA', 11, 4, 8.96);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (239, '0239', 'CARBIDOPA+LEVODOPA', 11, 7, 24.15);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (240, '0240', 'CITALOPRAM', 11, 7, 16.6);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (241, '0241', 'CITALOPRAM', 11, 2, 41.47);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (242, '0242', 'CLONAZEPAM', 11, 4, 7.46);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (243, '0243', 'CLONOTRIL', 11, 9, 8.32);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (244, '0244', 'CLORIDRATO DE PAROXETINA', 11, 7, 33.81);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (245, '0245', 'CLORIDRATO DE SELEGILINA', 11, 7, 42.15);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (246, '0246', 'CLORIDRATO DE SERTRALINA', 11, 7, 9.73);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (247, '0247', 'CLORIDRATO DE SERTRALINA', 11, 4, 14.34);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (248, '0248', 'CONCERTA', 11, 6, 13.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (249, '0249', 'CYMBALTA', 11, 10, 45.68);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (250, '0250', 'DEPRILAN', 11, 7, 4.65);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (251, '0251', 'DERMOMAX', 11, 7, 1.61);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (252, '0252', 'DIPIRONA SODICA', 11, 7, 29.76);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (253, '0253', 'DOLAMIN', 11, 3, 10.88);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (254, '0254', 'DUODOPA', 11, 9, 40.63);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (255, '0255', 'EFEXOR', 11, 12, 24.77);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (256, '0256', 'ERANZ', 11, 12, 37.18);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (257, '0257', 'EXELON', 11, 8, 19.89);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (258, '0258', 'GABAPENTINA', 11, 7, 26.86);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (259, '0259', 'JARSIN', 11, 7, 36.29);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (260, '0260', 'LAMITOR', 11, 9, 30.1);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (261, '0261', 'LIORAM', 11, 5, 17.34);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (262, '0262', 'LORAX', 11, 12, 21.56);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (263, '0263', 'OLCADIL', 11, 8, 45.67);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (264, '0264', 'PAMELOR', 11, 8, 37.98);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (265, '0265', 'PARACETAMOL', 11, 7, 18.9);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (266, '0266', 'PARACETAMOL', 11, 2, 20.27);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (267, '0267', 'PROMETAX', 11, 7, 46.23);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (268, '0268', 'PROZAC', 11, 10, 20.7);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (269, '0269', 'REMERON', 11, 15, 26.5);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (270, '0270', 'REMINYL', 11, 6, 27.22);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (271, '0271', 'RESPIDON', 11, 9, 10.41);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (272, '0272', 'RISPERDAL', 11, 6, 48.49);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (273, '0273', 'SERENATA', 11, 9, 29.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (274, '0274', 'TACRINAL', 11, 7, 19.78);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (275, '0275', 'TOLREST', 11, 7, 45.67);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (276, '0276', 'TOPAMAX', 11, 6, 29.52);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (277, '0277', 'TOPIRAMATO', 11, 2, 46.22);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (278, '0278', 'TORVAL', 11, 9, 2.96);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (279, '0279', 'TRILEPTAL', 11, 8, 25.96);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (280, '0280', 'ULTRACET', 11, 6, 11.81);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (281, '0281', 'VENLIFT', 11, 9, 5.42);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (282, '0282', 'ZARGUS', 11, 7, 3.98);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (283, '0283', 'ZYPREXA', 11, 10, 19.69);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (284, '0284', 'CETOROLACO DE TROMETAMINA', 12, 7, 43.81);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (285, '0285', 'CLORIDRATO DE DORZOLAMIDA', 12, 7, 20.64);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (286, '0286', 'GARASONE', 12, 5, 14.85);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (287, '0287', 'HYPOTEARS', 12, 8, 9.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (288, '0288', 'MALEATO DE TIMOLOL', 12, 7, 21.8);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (289, '0289', 'NYOLOL', 12, 8, 48);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (290, '0290', 'TOBRAMICINA', 12, 7, 10.1);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (291, '0291', 'TOBRAMICINA+DEXAMETASONA', 12, 7, 4.63);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (292, '0292', 'VISCOTEARS', 12, 8, 14.79);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (293, '0293', 'VOLTAREN', 12, 8, 6.68);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (294, '0294', 'ZADITEN COLIRIO', 12, 8, 20.48);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (88, '0088', 'ISOTREX', 4, 1, 1.3);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (92, '0092', 'MICETAL', 4, 7, 18.48);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (97, '0097', 'SASTID', 4, 1, 20.2);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (101, '0101', 'STIEFDERM', 4, 1, 16.44);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (106, '0106', 'VITANOL-A', 4, 1, 37.14);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (112, '0112', 'CELESTONE', 6, 5, 20.36);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (204, '0204', 'PREFEST', 9, 6, 1.8);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (209, '0209', 'SECOTEX', 9, 14, 40.21);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (213, '0213', 'TOTELLE', 9, 12, 2.59);
insert into PRODUTO (ID, CODIGO, NOME, ID_FAMILIA, ID_FABRICANTE, PRECO)
values (218, '0218', 'DICLOFENACO DE POTASSIO', 10, 7, 15.46);
commit;
prompt 294 records loaded
prompt Loading PEDIDO_VENDA_ITEM...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1239, 80, 128, 10, 35.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1240, 80, 254, 4, 40.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1241, 80, 162, 33, 6.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1242, 81, 5, 8, 19.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1243, 81, 249, 20, 45.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1244, 81, 160, 27, 3.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1245, 81, 226, 36, 32.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1246, 81, 80, 48, 25.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1248, 81, 127, 33, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1249, 81, 215, 44, 23.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1250, 81, 145, 20, 44.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1251, 81, 130, 30, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1252, 81, 198, 41, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1253, 81, 237, 46, 21.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1254, 81, 291, 19, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1255, 81, 166, 47, 46.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1256, 81, 281, 24, 5.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1257, 81, 190, 2, 38.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1258, 81, 107, 5, 12.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1259, 81, 255, 14, 24.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1260, 81, 247, 13, 14.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1261, 81, 191, 22, 31.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1262, 81, 31, 1, 5.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1263, 81, 258, 19, 26.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1264, 81, 11, 20, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1265, 81, 46, 21, 9.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1266, 81, 20, 10, 41.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1268, 81, 146, 7, 13.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1269, 81, 267, 27, 46.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1270, 81, 206, 29, 22.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1271, 82, 261, 43, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1272, 82, 42, 13, 5.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1273, 82, 127, 38, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1274, 82, 181, 19, 48.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1275, 82, 120, 24, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1276, 82, 22, 44, 25.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1277, 82, 31, 38, 5.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1278, 82, 212, 6, 39.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1279, 82, 158, 26, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1281, 82, 7, 34, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1282, 82, 259, 22, 36.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1283, 83, 68, 35, 38.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1284, 83, 75, 32, 27.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1285, 83, 154, 7, 24.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1286, 83, 74, 25, 6.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1287, 83, 211, 6, 25.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1288, 83, 263, 19, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1289, 83, 170, 44, 36.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1290, 83, 130, 15, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1291, 83, 204, 31, 1.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1292, 83, 168, 31, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1294, 83, 173, 42, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1295, 83, 52, 14, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1296, 83, 99, 33, 6.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1297, 83, 37, 4, 38.74);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1298, 83, 208, 18, 5.59);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1299, 83, 262, 47, 21.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1300, 83, 284, 6, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1301, 84, 138, 21, 8.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1302, 84, 50, 6, 30.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1303, 84, 11, 19, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1304, 84, 197, 46, 29.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1305, 84, 289, 46, 48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1306, 84, 182, 24, 49.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1307, 84, 78, 18, 46.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1308, 85, 241, 47, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1309, 85, 141, 45, 8.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1310, 85, 127, 41, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1311, 85, 167, 47, 33.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1312, 85, 222, 23, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1313, 85, 201, 1, 49.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1314, 85, 164, 16, 25.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1315, 85, 6, 36, 5.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1316, 85, 110, 31, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1317, 85, 285, 17, 20.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1318, 86, 252, 49, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1319, 86, 209, 17, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1320, 86, 230, 45, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1321, 86, 193, 31, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1322, 87, 174, 47, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1323, 87, 283, 29, 19.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1324, 87, 246, 10, 9.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1325, 87, 189, 26, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1326, 87, 19, 9, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1327, 87, 79, 44, 35.72);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1328, 87, 264, 11, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1329, 87, 267, 37, 46.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1330, 87, 169, 35, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1331, 87, 110, 2, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1332, 87, 67, 13, 24.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1333, 87, 97, 23, 20.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1334, 87, 99, 32, 6.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1335, 87, 86, 34, 28.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1336, 87, 290, 41, 10.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1337, 88, 251, 5, 1.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1338, 88, 110, 24, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1340, 88, 152, 36, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1341, 88, 206, 37, 22.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1342, 88, 173, 26, 39.25);
commit;
prompt 100 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1343, 88, 209, 13, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1344, 88, 57, 15, 17.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1345, 88, 156, 41, 11.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1346, 88, 183, 6, 31.35);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1347, 88, 71, 34, 30.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1349, 88, 204, 2, 1.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1350, 88, 253, 7, 10.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1351, 88, 245, 43, 42.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1352, 88, 90, 6, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1353, 88, 28, 7, 47.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1354, 88, 145, 16, 44.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1355, 88, 33, 27, 25.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1356, 88, 98, 19, 40.58);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1357, 88, 112, 48, 20.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1358, 89, 164, 3, 25.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1359, 89, 144, 7, 33.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1360, 89, 261, 8, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1361, 89, 117, 9, 19.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1362, 90, 41, 44, 34.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1363, 90, 276, 34, 29.52);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1057, 71, 63, 24, 18.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1058, 71, 68, 15, 38.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1059, 71, 186, 48, 47.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1060, 71, 81, 40, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1061, 71, 180, 14, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1062, 71, 160, 40, 3.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1063, 71, 178, 24, 21.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1065, 71, 182, 40, 49.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1066, 72, 236, 24, 44.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1067, 72, 143, 1, 17.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1068, 72, 244, 15, 33.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1069, 72, 27, 16, 34.58);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1070, 72, 38, 40, 10.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1071, 72, 177, 41, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1072, 72, 157, 30, 26.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1073, 72, 225, 46, 21.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1074, 72, 186, 38, 47.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1075, 72, 122, 41, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1076, 72, 220, 24, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1077, 72, 33, 3, 25.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1078, 72, 5, 5, 19.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1079, 72, 199, 17, 46.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1080, 73, 26, 43, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1081, 73, 293, 19, 6.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1082, 73, 5, 37, 19.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1083, 73, 137, 33, 21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1084, 73, 71, 44, 30.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1085, 73, 206, 38, 22.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1086, 73, 23, 20, 30);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1087, 73, 244, 43, 33.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1088, 73, 217, 9, 42.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1089, 73, 4, 12, 16.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1090, 73, 222, 27, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1091, 73, 125, 19, 37.89);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1092, 73, 240, 17, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1093, 73, 159, 33, 8.4);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1095, 73, 196, 3, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1096, 73, 175, 13, 3.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1097, 73, 29, 13, 49.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1098, 73, 209, 18, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1100, 73, 233, 34, 48.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1101, 73, 230, 3, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1102, 73, 141, 9, 8.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1103, 73, 19, 19, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1104, 73, 83, 42, 7.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1105, 73, 131, 5, 45.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1106, 73, 122, 31, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1107, 73, 219, 40, 45.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1108, 74, 175, 49, 3.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1109, 74, 33, 37, 25.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1110, 75, 112, 38, 20.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1111, 75, 61, 41, 33.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1113, 75, 133, 5, 48.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1114, 75, 165, 19, 30.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1115, 75, 229, 21, 27.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1116, 75, 266, 20, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1117, 75, 173, 8, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1118, 75, 86, 47, 28.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1119, 75, 248, 28, 13.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1120, 75, 267, 34, 46.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1121, 75, 226, 24, 32.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1123, 75, 177, 24, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1124, 75, 264, 36, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1125, 75, 210, 19, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1126, 75, 55, 9, 30.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1127, 76, 188, 43, 12.19);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1128, 76, 104, 28, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1129, 76, 109, 16, 49.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1130, 76, 63, 9, 18.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1131, 76, 43, 15, 14.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1132, 76, 190, 9, 38.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1133, 76, 22, 38, 25.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1134, 76, 233, 25, 48.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1135, 76, 145, 28, 44.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1137, 76, 241, 1, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1138, 76, 117, 2, 19.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1139, 76, 41, 44, 34.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1140, 76, 291, 15, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1141, 76, 16, 3, 24.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1142, 76, 88, 1, 1.3);
commit;
prompt 200 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1143, 76, 177, 5, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1144, 76, 24, 10, 38.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1145, 76, 93, 40, 4.84);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1146, 76, 220, 17, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1148, 76, 132, 26, 43.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1149, 76, 106, 23, 37.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1150, 76, 17, 2, 43.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1152, 76, 19, 33, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1153, 76, 156, 26, 11.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1154, 76, 149, 40, 21.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1155, 76, 280, 21, 11.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1156, 77, 26, 36, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1157, 77, 273, 3, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1158, 77, 52, 43, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1159, 77, 47, 1, 14.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1160, 77, 7, 39, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1161, 77, 127, 1, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1162, 77, 109, 35, 49.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1163, 77, 63, 27, 18.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1164, 77, 37, 39, 38.74);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1165, 78, 168, 29, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1166, 78, 282, 5, 3.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1167, 78, 52, 24, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1168, 78, 171, 2, 1.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1169, 78, 127, 23, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1170, 78, 239, 25, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1171, 78, 157, 36, 26.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1172, 78, 81, 4, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1173, 78, 155, 23, 18.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1174, 78, 143, 7, 17.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1175, 78, 207, 3, 40.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1176, 78, 230, 49, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1177, 78, 210, 41, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1178, 78, 260, 27, 30.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1179, 78, 53, 15, 6.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1180, 78, 37, 2, 38.74);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1181, 78, 252, 9, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1182, 78, 131, 34, 45.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1183, 78, 193, 32, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1184, 78, 180, 31, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1185, 78, 15, 28, 41.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1186, 78, 102, 2, 12.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1187, 78, 195, 34, 43.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1188, 78, 63, 21, 18.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1189, 78, 40, 4, 29.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1190, 78, 163, 43, 38.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1191, 78, 139, 5, 16.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1192, 78, 223, 7, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1193, 78, 156, 1, 11.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1194, 79, 277, 30, 46.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1195, 79, 113, 32, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1196, 79, 175, 6, 3.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1197, 79, 23, 35, 30);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1198, 79, 42, 45, 5.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1199, 79, 10, 24, 38.32);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1200, 79, 291, 14, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1201, 79, 261, 9, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1202, 79, 12, 24, 36.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1203, 79, 223, 6, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1204, 79, 173, 7, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1205, 79, 169, 35, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1206, 79, 26, 20, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1207, 79, 265, 33, 18.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1208, 79, 81, 30, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1209, 79, 3, 26, 14.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1210, 79, 218, 28, 15.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1211, 79, 68, 36, 38.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1212, 79, 1, 37, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1213, 79, 275, 29, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1214, 79, 159, 7, 8.4);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1215, 79, 193, 1, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1216, 79, 152, 20, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1217, 80, 79, 15, 35.72);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1218, 80, 267, 45, 46.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1219, 80, 201, 30, 49.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1220, 80, 72, 29, 33.11);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1221, 80, 191, 12, 31.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1222, 80, 275, 40, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1223, 80, 291, 48, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1224, 80, 181, 38, 48.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1225, 80, 159, 28, 8.4);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1226, 80, 61, 32, 33.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1227, 80, 169, 13, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1228, 80, 266, 6, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1229, 80, 230, 39, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1230, 80, 43, 45, 14.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1231, 80, 161, 42, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1232, 80, 152, 7, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1233, 80, 175, 34, 3.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1235, 80, 87, 33, 5.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1236, 80, 122, 48, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1237, 80, 51, 7, 37.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1238, 80, 104, 41, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (880, 58, 236, 20, 44.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (881, 59, 118, 5, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (882, 59, 180, 9, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (883, 60, 50, 18, 30.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (884, 60, 249, 4, 45.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (885, 60, 97, 13, 20.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (886, 60, 39, 27, 45.77);
commit;
prompt 300 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (887, 60, 205, 34, 28.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (888, 60, 17, 18, 43.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (889, 60, 215, 38, 23.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (890, 60, 89, 23, 45.52);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (891, 60, 46, 47, 9.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (892, 60, 229, 2, 27.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (893, 60, 12, 26, 36.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (894, 61, 90, 33, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (895, 61, 216, 11, 5.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (896, 61, 136, 9, 3.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (897, 61, 208, 21, 5.59);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (898, 61, 70, 11, 21.53);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (899, 61, 94, 43, 38.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (900, 61, 120, 7, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (901, 61, 170, 6, 36.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (902, 62, 217, 23, 42.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (903, 62, 133, 24, 48.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (904, 62, 115, 16, 34.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (905, 62, 166, 8, 46.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (906, 62, 15, 20, 41.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (907, 62, 167, 16, 33.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (908, 62, 260, 9, 30.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (909, 62, 147, 43, 34.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (910, 62, 227, 6, 32.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (911, 62, 290, 43, 10.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (912, 62, 45, 33, 27.95);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (913, 62, 136, 37, 3.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (914, 62, 187, 5, 24.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (916, 63, 282, 30, 3.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (917, 63, 177, 33, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (918, 63, 102, 11, 12.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (919, 63, 194, 41, 48.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (920, 63, 222, 10, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (921, 63, 114, 15, 25.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (922, 63, 53, 12, 6.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (923, 63, 279, 26, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (924, 63, 185, 9, 40.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (925, 63, 278, 40, 2.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (926, 63, 267, 22, 46.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (927, 63, 141, 44, 8.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (928, 63, 153, 16, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (929, 63, 202, 37, 8.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (930, 63, 182, 23, 49.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (932, 63, 67, 28, 24.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (933, 63, 211, 22, 25.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (934, 63, 21, 12, 7.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (935, 63, 171, 9, 1.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (936, 63, 224, 34, 22.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (937, 63, 174, 39, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (938, 63, 65, 20, 33.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (939, 63, 200, 23, 43.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (940, 63, 151, 7, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (941, 63, 105, 23, 27.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (942, 64, 64, 48, 16.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (943, 64, 271, 36, 10.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (944, 64, 38, 2, 10.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (945, 64, 95, 35, 46.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (946, 65, 202, 17, 8.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (947, 65, 48, 38, 29.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (948, 65, 207, 20, 40.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (949, 65, 224, 6, 22.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (950, 65, 73, 11, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (951, 65, 103, 20, 34.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (952, 65, 252, 28, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (953, 65, 241, 10, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (954, 65, 222, 15, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (955, 65, 264, 11, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (956, 65, 98, 24, 40.58);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (957, 65, 47, 19, 14.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (958, 65, 130, 27, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (959, 65, 57, 3, 17.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (960, 65, 197, 14, 29.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (961, 65, 119, 5, 13.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (962, 65, 7, 3, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (963, 65, 240, 4, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (964, 65, 196, 8, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (965, 65, 235, 8, 23.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (966, 65, 206, 14, 22.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (967, 65, 209, 23, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (968, 65, 15, 38, 41.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (969, 65, 223, 27, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (970, 65, 292, 46, 14.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (971, 66, 210, 35, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (972, 66, 103, 16, 34.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (973, 66, 266, 48, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (974, 66, 35, 9, 17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (975, 66, 97, 24, 20.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (976, 66, 177, 20, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (977, 66, 158, 19, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (978, 66, 57, 2, 17.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (979, 66, 278, 23, 2.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (980, 66, 65, 7, 33.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (981, 66, 172, 5, 16.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (982, 66, 127, 40, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (983, 66, 126, 7, 10.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (984, 66, 113, 44, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (985, 66, 261, 21, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (986, 66, 157, 5, 26.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (987, 67, 22, 43, 25.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (988, 67, 47, 5, 14.17);
commit;
prompt 400 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (989, 67, 271, 24, 10.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (990, 67, 195, 44, 43.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (991, 67, 262, 45, 21.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (992, 67, 79, 17, 35.72);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (993, 67, 225, 12, 21.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (994, 67, 193, 22, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (995, 67, 257, 12, 19.89);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (996, 67, 86, 26, 28.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (997, 67, 269, 37, 26.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (998, 67, 222, 36, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (999, 67, 84, 24, 16.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1000, 67, 31, 19, 5.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1001, 67, 215, 25, 23.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1002, 67, 41, 5, 34.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1003, 67, 113, 30, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1004, 67, 238, 27, 8.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1005, 67, 129, 36, 48.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1006, 67, 42, 30, 5.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1007, 67, 10, 41, 38.32);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1008, 68, 16, 39, 24.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1009, 68, 164, 7, 25.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1010, 68, 259, 27, 36.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1011, 68, 40, 17, 29.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1012, 68, 192, 25, 23.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1013, 68, 2, 14, 43.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1014, 68, 20, 42, 41.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1015, 68, 138, 8, 8.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1016, 68, 180, 42, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1018, 69, 198, 6, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1019, 69, 199, 5, 46.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1020, 69, 93, 1, 4.84);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1021, 69, 91, 9, 45.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1022, 69, 196, 41, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1023, 69, 204, 23, 1.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1024, 69, 117, 12, 19.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1025, 69, 240, 49, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1027, 69, 238, 1, 8.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1028, 69, 86, 14, 28.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1029, 69, 30, 39, 34.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1030, 69, 259, 18, 36.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1031, 69, 176, 39, 46.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1032, 69, 231, 36, 21.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1033, 69, 104, 5, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1034, 69, 178, 25, 21.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1035, 69, 41, 31, 34.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1036, 69, 158, 18, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1037, 69, 236, 46, 44.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1038, 69, 279, 10, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1039, 69, 124, 13, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1040, 69, 292, 35, 14.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1041, 69, 157, 44, 26.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1042, 69, 201, 35, 49.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1043, 69, 16, 40, 24.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1044, 69, 35, 34, 17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1045, 69, 172, 31, 16.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1046, 69, 221, 2, 40.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1047, 70, 114, 7, 25.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1048, 70, 287, 18, 9.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1049, 70, 87, 10, 5.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1050, 70, 239, 9, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1051, 70, 149, 17, 21.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1052, 70, 166, 28, 46.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1053, 70, 279, 49, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1054, 71, 119, 41, 13.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1055, 71, 189, 30, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1056, 71, 93, 17, 4.84);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (699, 51, 27, 32, 34.58);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (700, 51, 96, 3, 7.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (701, 51, 221, 42, 40.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (702, 51, 280, 46, 11.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (703, 51, 7, 20, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (704, 51, 202, 13, 8.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (705, 51, 253, 6, 10.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (706, 51, 75, 5, 27.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (707, 51, 131, 43, 45.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (708, 51, 2, 6, 43.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (709, 51, 135, 15, 2.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (710, 51, 286, 29, 14.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (711, 51, 117, 25, 19.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (712, 51, 133, 44, 48.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (714, 51, 289, 13, 48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (715, 51, 204, 5, 1.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (717, 51, 249, 18, 45.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (718, 51, 109, 41, 49.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (719, 51, 154, 27, 24.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (720, 51, 266, 20, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (722, 51, 51, 33, 37.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (723, 52, 72, 16, 33.11);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (724, 52, 285, 30, 20.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (725, 52, 26, 41, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (726, 52, 73, 42, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (727, 52, 110, 47, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (728, 52, 78, 44, 46.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (729, 52, 198, 21, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (730, 52, 253, 17, 10.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (731, 52, 226, 25, 32.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (732, 52, 192, 4, 23.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (734, 52, 42, 28, 5.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (735, 52, 193, 37, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (736, 52, 250, 8, 4.65);
commit;
prompt 500 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (737, 52, 113, 12, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (738, 52, 185, 14, 40.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (739, 52, 14, 32, 23.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (740, 52, 151, 28, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (741, 52, 121, 15, 18.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (742, 52, 264, 9, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (743, 52, 180, 41, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (745, 52, 94, 20, 38.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (746, 52, 241, 16, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (748, 53, 199, 27, 46.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (749, 53, 184, 17, 26.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (750, 53, 202, 45, 8.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (751, 53, 40, 33, 29.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (752, 53, 23, 10, 30);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (753, 53, 256, 34, 37.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (754, 53, 142, 11, 4.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (755, 53, 44, 11, 8.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (756, 53, 196, 31, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (757, 53, 235, 45, 23.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (758, 53, 145, 37, 44.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (759, 54, 85, 12, 5.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (760, 54, 189, 12, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (761, 54, 171, 4, 1.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (762, 54, 77, 23, 42.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (763, 54, 183, 9, 31.35);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (764, 54, 82, 14, 47.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (765, 54, 72, 17, 33.11);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (766, 54, 202, 11, 8.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (767, 54, 163, 47, 38.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (768, 54, 137, 43, 21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (769, 54, 193, 38, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (770, 54, 80, 6, 25.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (771, 54, 196, 10, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (772, 54, 40, 11, 29.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (773, 54, 38, 26, 10.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (774, 54, 58, 11, 41.13);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (775, 54, 15, 19, 41.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (776, 54, 7, 13, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (777, 54, 53, 11, 6.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (778, 54, 27, 32, 34.58);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (779, 54, 84, 41, 16.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (780, 54, 123, 31, 23.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (781, 54, 131, 13, 45.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (782, 54, 135, 34, 2.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (783, 54, 222, 8, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (784, 55, 261, 46, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (785, 55, 80, 16, 25.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (786, 55, 272, 41, 48.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (787, 55, 75, 11, 27.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (788, 55, 32, 18, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (789, 55, 285, 18, 20.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (790, 55, 177, 40, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (791, 55, 15, 25, 41.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (792, 55, 238, 35, 8.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (793, 55, 171, 27, 1.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (794, 55, 33, 18, 25.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (795, 55, 161, 41, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (796, 55, 99, 36, 6.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (797, 55, 284, 5, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (798, 55, 91, 48, 45.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (799, 55, 92, 39, 18.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (800, 55, 42, 26, 5.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (801, 55, 292, 30, 14.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (802, 55, 67, 39, 24.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (803, 55, 282, 32, 3.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (804, 55, 25, 3, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (805, 55, 207, 40, 40.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (806, 55, 143, 37, 17.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (807, 55, 71, 31, 30.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (808, 55, 154, 28, 24.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (809, 55, 239, 8, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (810, 55, 165, 42, 30.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (811, 55, 128, 43, 35.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (812, 56, 252, 29, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (813, 56, 21, 5, 7.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (814, 56, 33, 35, 25.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (815, 56, 161, 47, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (816, 56, 173, 12, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (817, 56, 272, 31, 48.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (818, 56, 223, 40, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (819, 56, 216, 25, 5.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (820, 56, 135, 20, 2.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (821, 56, 114, 3, 25.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (822, 56, 230, 18, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (823, 56, 178, 10, 21.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (824, 56, 53, 27, 6.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (825, 56, 22, 28, 25.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (826, 56, 289, 42, 48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (827, 56, 151, 12, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (828, 56, 232, 27, 33.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (829, 56, 239, 28, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (830, 56, 95, 24, 46.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (831, 56, 287, 49, 9.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (832, 56, 228, 16, 40.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (833, 56, 265, 12, 18.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (834, 56, 209, 46, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (835, 57, 205, 14, 28.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (836, 57, 177, 24, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (837, 57, 269, 40, 26.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (838, 57, 170, 43, 36.77);
commit;
prompt 600 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (839, 57, 149, 25, 21.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (840, 57, 124, 1, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (841, 57, 284, 39, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (842, 57, 59, 36, 5.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (843, 57, 234, 43, 16.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (844, 57, 226, 8, 32.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (845, 57, 189, 44, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (846, 57, 219, 14, 45.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (847, 57, 213, 2, 2.59);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (848, 57, 140, 22, 27.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (849, 57, 221, 23, 40.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (850, 57, 113, 44, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (851, 57, 283, 29, 19.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (852, 57, 129, 31, 48.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (853, 57, 7, 38, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (854, 57, 168, 14, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (855, 58, 197, 39, 29.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (856, 58, 261, 26, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (857, 58, 247, 25, 14.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (858, 58, 259, 15, 36.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (859, 58, 73, 27, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (861, 58, 88, 47, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (862, 58, 159, 10, 8.4);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (864, 58, 130, 1, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (865, 58, 161, 9, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (866, 58, 61, 37, 33.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (867, 58, 158, 25, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (868, 58, 52, 11, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (869, 58, 90, 23, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (870, 58, 94, 22, 38.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (871, 58, 74, 37, 6.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (872, 58, 109, 41, 49.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (873, 58, 106, 43, 37.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (874, 58, 163, 36, 38.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (875, 58, 240, 21, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (876, 58, 269, 28, 26.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (877, 58, 180, 15, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (878, 58, 104, 37, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (879, 58, 128, 17, 35.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (572, 43, 126, 42, 10.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (573, 43, 209, 2, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (574, 43, 60, 22, 3.19);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (575, 43, 241, 12, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (576, 43, 279, 12, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (577, 43, 129, 35, 48.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (578, 43, 11, 5, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (579, 44, 88, 1, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (580, 44, 51, 20, 37.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (581, 44, 290, 6, 10.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (582, 44, 28, 46, 47.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (583, 44, 235, 48, 23.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (584, 44, 26, 48, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (585, 44, 166, 27, 46.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (586, 44, 217, 16, 42.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (587, 44, 24, 5, 38.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (588, 44, 110, 43, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (590, 44, 86, 23, 28.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (591, 44, 196, 5, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (592, 44, 75, 4, 27.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (593, 45, 150, 10, 8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (594, 45, 265, 8, 18.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (595, 45, 214, 25, 15.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (596, 45, 122, 14, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (597, 45, 109, 44, 49.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (598, 45, 168, 43, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (599, 45, 1, 44, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (600, 45, 112, 22, 20.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (601, 45, 139, 20, 16.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (602, 45, 157, 44, 26.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (603, 45, 281, 7, 5.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (604, 45, 127, 13, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (605, 45, 151, 28, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (606, 45, 246, 31, 9.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (607, 45, 56, 27, 37.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (608, 45, 93, 9, 4.84);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (609, 45, 282, 19, 3.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (610, 45, 261, 1, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (611, 45, 27, 31, 34.58);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (612, 45, 172, 31, 16.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (613, 45, 194, 4, 48.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (614, 45, 237, 21, 21.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (615, 45, 104, 38, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (616, 45, 189, 1, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (617, 45, 227, 39, 32.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (618, 45, 187, 32, 24.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (619, 45, 242, 19, 7.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (621, 45, 4, 32, 16.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (622, 46, 256, 1, 37.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (623, 46, 59, 35, 5.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (624, 46, 200, 6, 43.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (625, 46, 191, 38, 31.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (626, 46, 233, 15, 48.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (627, 46, 34, 8, 47.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (628, 46, 207, 30, 40.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (629, 46, 83, 43, 7.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (630, 46, 225, 29, 21.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (631, 46, 205, 9, 28.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (632, 46, 100, 39, 46.53);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (633, 46, 154, 23, 24.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (634, 46, 122, 25, 31.77);
commit;
prompt 700 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (636, 46, 169, 13, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (637, 46, 113, 16, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (638, 46, 151, 10, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (639, 46, 178, 24, 21.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (640, 46, 158, 6, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (641, 47, 150, 17, 8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (642, 47, 115, 18, 34.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (643, 47, 153, 14, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (644, 47, 275, 24, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (645, 47, 234, 35, 16.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (646, 47, 293, 23, 6.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (647, 47, 220, 12, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (648, 47, 12, 31, 36.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (649, 47, 217, 3, 42.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (650, 47, 136, 38, 3.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (651, 47, 138, 4, 8.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (652, 47, 194, 8, 48.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (654, 47, 123, 9, 23.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (655, 47, 169, 26, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (656, 47, 101, 7, 16.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (657, 47, 279, 28, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (658, 47, 54, 36, 40.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (659, 47, 261, 20, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (660, 47, 90, 42, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (661, 47, 128, 29, 35.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (662, 47, 198, 18, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (663, 47, 226, 23, 32.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (664, 47, 9, 32, 45.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (665, 47, 196, 32, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (666, 48, 200, 8, 43.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (667, 48, 173, 6, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (668, 48, 289, 49, 48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (669, 48, 288, 8, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (670, 48, 95, 14, 46.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (671, 48, 254, 17, 40.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (672, 48, 178, 32, 21.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (673, 48, 82, 7, 47.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (674, 48, 283, 25, 19.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (675, 48, 240, 10, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (676, 48, 38, 34, 10.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (677, 48, 130, 36, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (678, 48, 120, 2, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (679, 48, 195, 21, 43.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (680, 48, 45, 22, 27.95);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (681, 48, 44, 42, 8.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (682, 48, 264, 9, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (683, 48, 20, 13, 41.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (685, 48, 199, 36, 46.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (686, 48, 183, 32, 31.35);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (687, 48, 4, 41, 16.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (688, 48, 116, 10, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (690, 49, 245, 7, 42.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (691, 49, 56, 28, 37.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (692, 49, 191, 28, 31.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (693, 50, 55, 42, 30.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (694, 50, 176, 48, 46.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (695, 50, 152, 16, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (696, 50, 101, 11, 16.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (697, 51, 142, 42, 4.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (698, 51, 140, 19, 27.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (500, 38, 54, 47, 40.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (501, 38, 24, 32, 38.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (502, 38, 186, 26, 47.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (503, 39, 49, 40, 14.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (504, 39, 173, 5, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (505, 39, 120, 3, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (506, 39, 263, 37, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (507, 39, 265, 24, 18.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (508, 39, 245, 9, 42.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (509, 39, 129, 27, 48.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (510, 39, 60, 13, 3.19);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (511, 39, 256, 22, 37.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (512, 39, 113, 34, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (513, 39, 22, 3, 25.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (514, 39, 13, 5, 8.32);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (515, 39, 147, 46, 34.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (516, 39, 56, 3, 37.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (517, 39, 197, 47, 29.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (518, 39, 8, 4, 3.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (519, 39, 34, 5, 47.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (520, 39, 69, 33, 28.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (521, 39, 160, 33, 3.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (522, 39, 189, 18, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (523, 39, 108, 46, 35.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (524, 40, 102, 29, 12.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (525, 40, 273, 44, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (526, 40, 122, 24, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (527, 40, 78, 15, 46.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (528, 40, 123, 23, 23.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (529, 40, 152, 46, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (530, 40, 280, 35, 11.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (531, 40, 80, 17, 25.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (532, 40, 200, 7, 43.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (533, 40, 64, 11, 16.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (534, 40, 124, 31, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (535, 40, 19, 14, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (536, 40, 288, 37, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (537, 40, 43, 17, 14.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (538, 40, 263, 11, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (539, 40, 290, 19, 10.1);
commit;
prompt 800 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (540, 40, 155, 2, 18.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (541, 40, 116, 7, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (542, 40, 45, 34, 27.95);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (543, 40, 253, 20, 10.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (544, 40, 3, 47, 14.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (545, 40, 96, 49, 7.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (546, 41, 162, 21, 6.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (547, 41, 36, 40, 35.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (548, 41, 28, 5, 47.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (549, 41, 102, 12, 12.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (550, 42, 276, 30, 29.52);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (551, 42, 153, 44, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (552, 42, 229, 10, 27.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (553, 42, 280, 48, 11.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (554, 42, 152, 14, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (555, 42, 197, 36, 29.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (556, 42, 210, 22, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (557, 42, 57, 39, 17.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (558, 42, 37, 48, 38.74);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (559, 42, 89, 27, 45.52);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (561, 42, 16, 17, 24.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (562, 42, 192, 21, 23.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (564, 42, 241, 24, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (565, 43, 177, 43, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (566, 43, 249, 6, 45.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (567, 43, 255, 5, 24.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (568, 43, 261, 26, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (569, 43, 244, 18, 33.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (570, 43, 187, 40, 24.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (571, 43, 136, 24, 3.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (429, 34, 220, 40, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (430, 34, 122, 1, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (431, 34, 273, 27, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (432, 34, 137, 23, 21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (433, 34, 160, 41, 3.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (434, 34, 30, 3, 34.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (435, 34, 186, 9, 47.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (436, 34, 3, 35, 14.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (437, 34, 260, 40, 30.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (438, 34, 16, 7, 24.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (439, 34, 252, 2, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (440, 34, 274, 1, 19.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (441, 35, 1, 4, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (442, 35, 20, 12, 41.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (443, 35, 90, 38, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (444, 35, 116, 40, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (445, 35, 218, 48, 15.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (446, 35, 107, 39, 12.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (447, 35, 59, 47, 5.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (449, 35, 82, 19, 47.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (450, 35, 274, 27, 19.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (451, 35, 79, 21, 35.72);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (452, 35, 81, 36, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (453, 35, 258, 27, 26.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (454, 35, 250, 4, 4.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (456, 35, 222, 10, 2.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (457, 35, 223, 38, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (458, 35, 227, 34, 32.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (459, 35, 198, 33, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (461, 35, 71, 12, 30.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (462, 35, 120, 36, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (463, 35, 131, 10, 45.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (465, 35, 77, 25, 42.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (466, 35, 221, 40, 40.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (467, 35, 215, 48, 23.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (468, 35, 266, 37, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (469, 36, 276, 4, 29.52);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (470, 36, 34, 44, 47.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (471, 36, 239, 44, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (472, 36, 70, 4, 21.53);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (473, 36, 195, 43, 43.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (474, 36, 238, 36, 8.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (475, 37, 11, 37, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (476, 37, 119, 2, 13.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (477, 37, 99, 35, 6.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (478, 37, 291, 28, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (479, 37, 109, 15, 49.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (480, 37, 273, 26, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (481, 37, 288, 24, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (482, 37, 115, 17, 34.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (483, 37, 35, 6, 17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (484, 38, 102, 12, 12.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (485, 38, 43, 7, 14.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (486, 38, 208, 44, 5.59);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (487, 38, 164, 3, 25.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (488, 38, 97, 46, 20.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (489, 38, 90, 31, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (490, 38, 291, 4, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (491, 38, 171, 37, 1.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (492, 38, 116, 42, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (493, 38, 101, 30, 16.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (494, 38, 82, 3, 47.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (495, 38, 127, 25, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (496, 38, 223, 1, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (497, 38, 33, 42, 25.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (498, 38, 174, 29, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (499, 38, 239, 43, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (364, 30, 84, 31, 16.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (365, 30, 161, 28, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (366, 30, 136, 39, 3.5);
commit;
prompt 900 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (367, 30, 53, 36, 6.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (368, 30, 73, 9, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (369, 30, 259, 44, 36.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (370, 30, 28, 13, 47.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (371, 30, 263, 34, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (372, 31, 230, 44, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (373, 31, 122, 44, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (374, 31, 167, 1, 33.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (375, 31, 258, 29, 26.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (376, 31, 116, 46, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (377, 31, 268, 29, 20.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (378, 31, 191, 20, 31.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (379, 31, 37, 5, 38.74);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (380, 31, 292, 26, 14.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (381, 31, 284, 14, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (382, 31, 118, 33, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (383, 31, 138, 4, 8.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (384, 31, 25, 38, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (385, 32, 47, 31, 14.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (386, 32, 188, 47, 12.19);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (387, 32, 287, 14, 9.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (388, 32, 4, 13, 16.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (389, 32, 58, 49, 41.13);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (390, 32, 282, 40, 3.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (391, 32, 44, 26, 8.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (392, 32, 84, 30, 16.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (393, 32, 150, 16, 8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (394, 32, 96, 39, 7.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (395, 32, 25, 34, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (396, 32, 261, 3, 17.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (397, 32, 115, 45, 34.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (398, 32, 141, 21, 8.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (399, 32, 235, 5, 23.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (400, 32, 200, 43, 43.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (401, 33, 26, 12, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (402, 33, 280, 20, 11.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (403, 33, 251, 39, 1.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (404, 33, 277, 6, 46.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (405, 33, 1, 14, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (406, 33, 209, 12, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (407, 33, 118, 6, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (408, 33, 198, 2, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (409, 33, 194, 48, 48.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (410, 33, 211, 34, 25.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (411, 33, 162, 17, 6.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (412, 33, 199, 28, 46.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (413, 33, 108, 16, 35.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (414, 33, 117, 5, 19.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (415, 33, 86, 39, 28.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (416, 33, 158, 27, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (417, 33, 9, 34, 45.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (418, 33, 147, 16, 34.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (419, 33, 87, 28, 5.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (420, 33, 64, 26, 16.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (421, 33, 266, 22, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (422, 33, 189, 14, 22.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (423, 33, 169, 36, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (424, 33, 62, 25, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (425, 34, 128, 7, 35.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (426, 34, 151, 39, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (427, 34, 208, 11, 5.59);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (428, 34, 127, 48, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (271, 23, 139, 41, 16.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (272, 23, 255, 11, 24.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (273, 24, 266, 12, 20.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (274, 24, 141, 18, 8.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (275, 24, 237, 30, 21.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (276, 24, 8, 21, 3.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (277, 24, 68, 25, 38.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (278, 24, 151, 13, 26.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (279, 24, 163, 30, 38.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (280, 24, 99, 29, 6.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (281, 25, 130, 36, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (282, 25, 164, 27, 25.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (283, 25, 152, 36, 28.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (284, 25, 263, 27, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (285, 25, 177, 42, 34.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (286, 25, 125, 2, 37.89);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (287, 25, 277, 2, 46.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (288, 25, 215, 45, 23.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (289, 25, 77, 32, 42.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (290, 25, 274, 39, 19.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (291, 25, 17, 5, 43.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (292, 25, 106, 44, 37.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (293, 25, 60, 47, 3.19);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (294, 25, 172, 49, 16.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (295, 25, 233, 19, 48.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (296, 25, 8, 2, 3.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (297, 25, 178, 39, 21.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (298, 25, 138, 25, 8.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (299, 25, 217, 46, 42.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (300, 25, 82, 8, 47.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (301, 25, 41, 49, 34.28);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (302, 25, 39, 17, 45.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (303, 25, 46, 21, 9.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (304, 25, 146, 6, 13.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (305, 25, 112, 15, 20.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (306, 25, 81, 4, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (307, 25, 88, 42, 1.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (308, 26, 78, 20, 46.27);
commit;
prompt 1000 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (309, 26, 23, 38, 30);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (310, 27, 130, 36, 1.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (311, 27, 2, 5, 43.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (312, 27, 71, 26, 30.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (313, 27, 237, 31, 21.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (314, 27, 78, 41, 46.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (315, 27, 140, 23, 27.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (316, 27, 13, 33, 8.32);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (317, 27, 196, 21, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (318, 27, 69, 29, 28.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (319, 27, 104, 5, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (320, 27, 251, 29, 1.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (321, 27, 246, 2, 9.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (322, 27, 197, 33, 29.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (323, 27, 248, 18, 13.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (324, 27, 243, 40, 8.32);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (325, 28, 219, 39, 45.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (326, 28, 132, 19, 43.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (327, 28, 50, 44, 30.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (328, 28, 139, 7, 16.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (329, 28, 273, 31, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (330, 28, 174, 5, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (331, 28, 131, 2, 45.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (332, 28, 205, 7, 28.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (333, 28, 57, 5, 17.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (334, 28, 103, 31, 34.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (335, 28, 128, 29, 35.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (336, 28, 89, 35, 45.52);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (337, 28, 121, 5, 18.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (338, 28, 209, 48, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (339, 28, 64, 40, 16.31);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (340, 29, 11, 37, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (341, 29, 32, 30, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (342, 29, 180, 44, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (343, 29, 179, 38, 35.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (344, 29, 94, 31, 38.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (345, 29, 256, 14, 37.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (346, 29, 77, 4, 42.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (347, 29, 111, 1, 1.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (348, 29, 96, 44, 7.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (349, 29, 52, 4, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (351, 29, 46, 13, 9.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (352, 29, 139, 45, 16.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (353, 30, 90, 20, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (354, 30, 168, 42, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (355, 30, 246, 9, 9.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (356, 30, 218, 38, 15.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (357, 30, 203, 8, 41.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (358, 30, 105, 15, 27.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (359, 30, 271, 21, 10.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (360, 30, 65, 12, 33.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (361, 30, 11, 43, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (363, 30, 54, 26, 40.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (204, 18, 92, 31, 18.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (205, 18, 240, 24, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (206, 18, 40, 23, 29.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (208, 18, 195, 41, 43.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (209, 18, 252, 8, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (210, 18, 52, 37, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (211, 18, 81, 17, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (212, 18, 73, 2, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (213, 18, 264, 34, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (214, 18, 24, 33, 38.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (215, 18, 5, 31, 19.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (216, 18, 171, 38, 1.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (217, 18, 57, 44, 17.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (218, 18, 238, 32, 8.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (219, 18, 143, 39, 17.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (220, 18, 220, 10, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (221, 18, 111, 45, 1.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (222, 18, 155, 43, 18.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (223, 18, 214, 15, 15.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (224, 18, 174, 6, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (225, 19, 268, 34, 20.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (226, 19, 217, 49, 42.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (227, 19, 105, 5, 27.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (228, 19, 118, 14, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (229, 19, 271, 12, 10.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (230, 19, 114, 4, 25.45);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (231, 19, 155, 26, 18.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (232, 19, 158, 11, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (233, 19, 58, 21, 41.13);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (234, 19, 285, 25, 20.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (235, 19, 170, 19, 36.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (236, 19, 111, 39, 1.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (237, 19, 269, 34, 26.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (238, 19, 169, 26, 44.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (239, 19, 273, 12, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (240, 19, 7, 48, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (241, 19, 146, 48, 13.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (242, 20, 18, 49, 38.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (243, 20, 113, 35, 5.44);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (244, 20, 254, 41, 40.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (245, 20, 116, 33, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (246, 20, 81, 43, 8.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (247, 20, 54, 18, 40.37);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (248, 20, 121, 5, 18.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (249, 20, 284, 1, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (250, 20, 55, 6, 30.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (251, 20, 19, 32, 25.87);
commit;
prompt 1100 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (252, 20, 80, 40, 25.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (253, 20, 35, 35, 17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (254, 20, 120, 24, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (255, 21, 279, 14, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (256, 21, 233, 42, 48.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (257, 21, 124, 25, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (258, 21, 84, 36, 16.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (259, 21, 99, 21, 6.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (260, 21, 127, 48, 14.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (261, 21, 106, 29, 37.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (262, 21, 209, 24, 40.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (263, 21, 52, 16, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (264, 21, 123, 24, 23.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (265, 22, 293, 27, 6.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (266, 22, 135, 44, 2.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (267, 22, 241, 29, 41.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (268, 22, 123, 15, 23.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (269, 22, 247, 29, 14.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (270, 22, 83, 32, 7.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (140, 11, 34, 11, 47.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (141, 11, 224, 49, 22.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (142, 11, 146, 2, 13.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (143, 11, 174, 40, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (144, 11, 271, 26, 10.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (145, 11, 194, 49, 48.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (146, 11, 226, 36, 32.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (147, 11, 262, 49, 21.56);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (148, 11, 215, 39, 23.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (149, 11, 5, 18, 19.42);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (150, 11, 94, 4, 38.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (151, 11, 230, 13, 16.23);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (152, 11, 251, 45, 1.61);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (153, 11, 15, 44, 41.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (154, 12, 124, 37, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (155, 12, 204, 17, 1.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (156, 12, 185, 25, 40.62);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (157, 12, 284, 5, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (158, 12, 291, 2, 4.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (159, 12, 181, 18, 48.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (160, 12, 150, 32, 8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (161, 12, 238, 32, 8.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (162, 12, 279, 25, 25.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (163, 12, 143, 49, 17.78);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (164, 12, 71, 10, 30.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (165, 13, 180, 40, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (166, 14, 282, 39, 3.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (167, 14, 255, 22, 24.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (168, 14, 2, 11, 43.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (169, 15, 273, 43, 29.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (170, 15, 252, 36, 29.76);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (171, 15, 288, 11, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (172, 15, 46, 33, 9.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (173, 15, 242, 10, 7.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (174, 15, 6, 41, 5.47);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (175, 15, 165, 23, 30.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (176, 15, 129, 8, 48.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (177, 15, 235, 43, 23.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (178, 15, 29, 30, 49.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (180, 15, 140, 20, 27.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (181, 15, 148, 35, 8.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (182, 15, 229, 16, 27.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (183, 16, 137, 11, 21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (184, 16, 25, 33, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (185, 17, 269, 36, 26.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (186, 17, 121, 5, 18.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (187, 17, 237, 13, 21.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (188, 17, 11, 18, 35.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (189, 17, 260, 43, 30.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (190, 17, 129, 13, 48.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (191, 17, 124, 19, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (192, 17, 191, 22, 31.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (193, 17, 187, 38, 24.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (194, 17, 239, 23, 24.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (195, 17, 158, 31, 2.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (196, 17, 91, 12, 45.34);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (197, 17, 120, 36, 28.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (198, 17, 193, 9, 32.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (199, 18, 137, 26, 21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (200, 18, 258, 33, 26.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (201, 18, 122, 29, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (202, 18, 43, 48, 14.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (203, 18, 138, 8, 8.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (71, 6, 38, 49, 10.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (72, 6, 90, 3, 17.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (73, 6, 30, 43, 34.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (74, 6, 163, 35, 38.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (75, 7, 265, 27, 18.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (76, 7, 96, 22, 7.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (77, 7, 264, 18, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (78, 7, 104, 24, 31.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (79, 7, 21, 42, 7.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (80, 7, 223, 9, 44.85);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (81, 7, 271, 25, 10.41);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (82, 7, 38, 44, 10.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (83, 7, 119, 11, 13.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (84, 8, 272, 27, 48.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (85, 8, 96, 22, 7.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (86, 8, 67, 10, 24.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (87, 8, 203, 49, 41.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (88, 8, 185, 34, 40.62);
commit;
prompt 1200 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (89, 8, 159, 5, 8.4);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (90, 8, 219, 8, 45.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (91, 8, 69, 44, 28.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (92, 8, 210, 22, 24.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (93, 8, 288, 8, 21.8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (94, 8, 12, 10, 36.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (95, 8, 3, 19, 14.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (96, 8, 116, 18, 28.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (97, 8, 25, 23, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (98, 8, 148, 23, 8.15);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (99, 8, 198, 41, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (100, 8, 167, 13, 33.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (101, 8, 110, 29, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (102, 8, 257, 30, 19.89);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (103, 9, 106, 18, 37.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (104, 9, 183, 39, 31.35);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (105, 9, 134, 11, 20.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (106, 9, 205, 42, 28.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (107, 9, 221, 45, 40.24);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (108, 9, 55, 39, 30.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (109, 9, 79, 15, 35.72);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (110, 9, 206, 23, 22.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (111, 9, 283, 10, 19.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (112, 9, 4, 12, 16.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (113, 9, 264, 16, 37.98);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (114, 9, 253, 38, 10.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (115, 9, 284, 14, 43.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (116, 9, 117, 41, 19.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (117, 9, 7, 13, 4.83);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (118, 9, 16, 25, 24.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (119, 9, 124, 1, 35.82);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (120, 9, 44, 35, 8.27);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (121, 9, 92, 20, 18.48);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (122, 9, 161, 13, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (123, 9, 45, 15, 27.95);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (124, 9, 23, 35, 30);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (125, 9, 97, 39, 20.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (126, 9, 192, 28, 23.16);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (127, 9, 263, 2, 45.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (128, 9, 76, 44, 4.91);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (129, 10, 122, 21, 31.77);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (130, 10, 43, 1, 14.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (131, 10, 156, 38, 11.79);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (132, 10, 168, 12, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (133, 10, 253, 4, 10.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (134, 11, 61, 40, 33.22);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (135, 11, 153, 21, 43.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (136, 11, 12, 49, 36.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (137, 11, 48, 3, 29.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (138, 11, 18, 5, 38.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (139, 11, 236, 47, 44.66);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (1, 1, 80, 33, 25.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (2, 1, 94, 8, 38.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (3, 1, 110, 21, 2.18);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (4, 1, 25, 24, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (5, 1, 21, 42, 7.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (6, 1, 18, 15, 38.96);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (7, 2, 205, 42, 28.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (8, 2, 211, 16, 25.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (9, 2, 48, 17, 29.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (10, 2, 137, 13, 21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (11, 2, 242, 14, 7.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (12, 2, 142, 8, 4.69);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (13, 2, 257, 15, 19.89);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (14, 2, 227, 48, 32.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (15, 2, 145, 44, 44.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (16, 2, 243, 1, 8.32);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (17, 3, 174, 1, 42.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (18, 4, 164, 11, 25.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (19, 4, 200, 30, 43.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (20, 4, 280, 32, 11.81);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (21, 4, 293, 12, 6.68);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (22, 4, 199, 15, 46.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (23, 4, 26, 38, 28.2);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (24, 4, 146, 44, 13.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (25, 4, 150, 29, 8);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (27, 4, 100, 1, 46.53);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (28, 4, 207, 49, 40.86);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (29, 4, 227, 37, 32.75);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (30, 4, 58, 8, 41.13);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (31, 4, 268, 39, 20.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (32, 4, 173, 43, 39.25);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (33, 4, 202, 15, 8.65);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (34, 4, 28, 31, 47.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (35, 4, 83, 43, 7.97);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (36, 4, 48, 14, 29.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (37, 4, 160, 48, 3.1);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (38, 4, 52, 8, 4.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (39, 5, 84, 8, 16.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (40, 5, 179, 37, 35.33);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (41, 5, 219, 4, 45.71);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (42, 5, 23, 3, 30);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (43, 5, 32, 39, 25.87);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (44, 5, 237, 19, 21.57);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (45, 5, 180, 22, 31.5);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (46, 5, 218, 25, 15.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (47, 5, 100, 41, 46.53);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (48, 5, 240, 7, 16.6);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (49, 5, 28, 4, 47.63);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (50, 5, 18, 10, 38.96);
commit;
prompt 1300 records committed...
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (51, 5, 198, 12, 3.46);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (52, 5, 168, 13, 38.7);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (53, 5, 108, 42, 35.43);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (54, 6, 265, 16, 18.9);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (55, 6, 141, 15, 8.29);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (56, 6, 225, 37, 21.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (57, 6, 162, 36, 6.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (58, 6, 121, 27, 18.36);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (59, 6, 175, 44, 3.88);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (60, 6, 196, 6, 1.21);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (61, 6, 139, 20, 16.39);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (62, 6, 34, 3, 47.67);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (63, 6, 161, 33, 40.94);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (64, 6, 24, 46, 38.64);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (65, 6, 246, 34, 9.73);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (66, 6, 272, 14, 48.49);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (67, 6, 206, 36, 22.14);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (68, 6, 147, 33, 34.3);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (69, 6, 47, 12, 14.17);
insert into PEDIDO_VENDA_ITEM (ID, ID_PEDIDO_VENDA, ID_PRODUTO, QUANTIDADE, PRECO)
values (70, 6, 278, 18, 2.96);
commit;
prompt 1319 records loaded
prompt Enabling foreign key constraints for ESTADO...
alter table ESTADO enable constraint ESTADO_PAIS_FK;
prompt Enabling foreign key constraints for CIDADE...
alter table CIDADE enable constraint CIDADE_ESTADO_FK;
alter table CIDADE enable constraint CIDADE_PAIS_FK;
prompt Enabling foreign key constraints for CLIENTE...
alter table CLIENTE enable constraint CLIENTE_CIDADE_FK;
prompt Enabling foreign key constraints for PEDIDO_VENDA...
alter table PEDIDO_VENDA enable constraint PEDIDO_VENDA_CLI_FK;
alter table PEDIDO_VENDA enable constraint PEDIDO_VENDA_REP_FK;
prompt Enabling foreign key constraints for PRODUTO...
alter table PRODUTO enable constraint PRODUTO_FABRICANTE_FK;
alter table PRODUTO enable constraint PRODUTO_FAMILIA_FK;
prompt Enabling foreign key constraints for PEDIDO_VENDA_ITEM...
alter table PEDIDO_VENDA_ITEM enable constraint PEDIDO_VENDA_ITEM_PED_FK;
alter table PEDIDO_VENDA_ITEM enable constraint PEDIDO_VENDA_ITEM_PRO_FK;
prompt Enabling triggers for PAIS...
alter table PAIS enable all triggers;
prompt Enabling triggers for ESTADO...
alter table ESTADO enable all triggers;
prompt Enabling triggers for CIDADE...
alter table CIDADE enable all triggers;
prompt Enabling triggers for CLIENTE...
alter table CLIENTE enable all triggers;
prompt Enabling triggers for FABRICANTE...
alter table FABRICANTE enable all triggers;
prompt Enabling triggers for FAMILIA...
alter table FAMILIA enable all triggers;
prompt Enabling triggers for REPRESENTANTE...
alter table REPRESENTANTE enable all triggers;
prompt Enabling triggers for PEDIDO_VENDA...
alter table PEDIDO_VENDA enable all triggers;
prompt Enabling triggers for PRODUTO...
alter table PRODUTO enable all triggers;
prompt Enabling triggers for PEDIDO_VENDA_ITEM...
alter table PEDIDO_VENDA_ITEM enable all triggers;
set feedback on
set define on
prompt Done.
