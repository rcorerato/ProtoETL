------------------------------------------------
-- Export file for user SINAPSE               --
-- Created by Rodrigo on 08/01/2007, 22:30:06 --
------------------------------------------------

spool sinapse.log

prompt
prompt Creating table APLICACAO
prompt ========================
prompt
create table APLICACAO
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(40)
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
alter table APLICACAO
  add constraint APLICACAO_PK primary key (ID)
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
alter table APLICACAO
  add constraint APLICACAO_UK unique (CODIGO)
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
prompt Creating table APLICACAO_MENU_ITEM
prompt ==================================
prompt
create table APLICACAO_MENU_ITEM
(
  ID                  NUMBER not null,
  ID_APLICACAO        NUMBER not null,
  CODIGO              VARCHAR2(60) not null,
  DESCRICAO           VARCHAR2(80) not null,
  COD_MENU_PAI        VARCHAR2(20),
  POSICAO             NUMBER,
  ID_APLICACAO_MODULO NUMBER
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
alter table APLICACAO_MENU_ITEM
  add constraint PK_APLICACAO_MENU_ITEM primary key (ID)
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
prompt Creating table APLICACAO_MODULO
prompt ===============================
prompt
create table APLICACAO_MODULO
(
  ID           NUMBER not null,
  ID_APLICACAO NUMBER not null,
  CODIGO       VARCHAR2(20) not null,
  NOME         VARCHAR2(40)
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
alter table APLICACAO_MODULO
  add constraint PK_APLICACAO_MODULO primary key (ID)
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
create unique index APLICACAO_MODULO_CODIGO_IDX_0 on APLICACAO_MODULO (CODIGO)
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
prompt Creating table CARTEIRA_CLIENTES
prompt ================================
prompt
create table CARTEIRA_CLIENTES
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(10) not null,
  DESCRICAO VARCHAR2(40)
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
alter table CARTEIRA_CLIENTES
  add constraint PK_CARTEIRA_CLIENTES primary key (ID)
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
prompt Creating table PAIS
prompt ===================
prompt
create table PAIS
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(2) not null,
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
prompt Creating table CIDADE
prompt =====================
prompt
create table CIDADE
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(40) not null,
  NOME      VARCHAR2(40) not null,
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
  add constraint CIDADE_UK1 unique (CODIGO)
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
  add constraint CIDADE_UK2 unique (ID_PAIS,ID_ESTADO,NOME)
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
  add constraint C_PAIS_FK foreign key (ID_PAIS)
  references PAIS (ID);

prompt
prompt Creating table CLIENTE
prompt ======================
prompt
create table CLIENTE
(
  ID NUMBER not null
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
  add constraint PK_CLIENTE primary key (ID)
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
prompt Creating table CONDICAO_PAGAMENTO
prompt =================================
prompt
create table CONDICAO_PAGAMENTO
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(10) not null,
  DESCRICAO VARCHAR2(50)
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
alter table CONDICAO_PAGAMENTO
  add constraint PK_CONDICAO_PAGAMENTO primary key (ID)
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
prompt Creating table CONDICAO_PAGAMENTO_PRAZO
prompt =======================================
prompt
create table CONDICAO_PAGAMENTO_PRAZO
(
  ID                    NUMBER not null,
  ID_CONDICAO_PAGAMENTO NUMBER not null,
  DIAS_PRAZO            NUMBER
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
alter table CONDICAO_PAGAMENTO_PRAZO
  add constraint PK_CONDICAO_PAGAMENTO_PRAZO primary key (ID)
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
prompt Creating table CONDICAO_VENDA
prompt =============================
prompt
create table CONDICAO_VENDA
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(3) not null,
  DESCRICAO VARCHAR2(30)
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
alter table CONDICAO_VENDA
  add constraint PK_CONDICAO_VENDA primary key (ID)
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
prompt Creating table CONDICAO_VENDA_VIA_TRANSP
prompt ========================================
prompt
create table CONDICAO_VENDA_VIA_TRANSP
(
  ID                NUMBER not null,
  ID_CONDICAO_VENDA NUMBER not null,
  ID_VIA_TRANSPORTE NUMBER not null
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
alter table CONDICAO_VENDA_VIA_TRANSP
  add constraint PK_CONDICAO_VENDA_VIA_TRANSP primary key (ID)
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
prompt Creating table CONSTRAINT
prompt =========================
prompt
create table CONSTRAINT
(
  ID               NUMBER not null,
  NAME             VARCHAR2(40) not null,
  CHECK_CONSTRAINT VARCHAR2(200) not null,
  ERROR_MESSAGE    VARCHAR2(100)
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
alter table CONSTRAINT
  add constraint PK_CONSTRAINT primary key (ID)
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
create unique index CONSTRAINT_NAME_IDX_0 on CONSTRAINT (NAME)
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
prompt Creating table EMPRESA
prompt ======================
prompt
create table EMPRESA
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(40)
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
alter table EMPRESA
  add constraint PK_EMPRESA primary key (ID)
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
  ID_PAIS NUMBER not null,
  CODIGO  VARCHAR2(20) not null,
  NOME    VARCHAR2(40) not null,
  SIGLA   VARCHAR2(2) not null
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
  add constraint ESTADO_UK1 unique (CODIGO)
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
  add constraint ESTADO_UK2 unique (ID_PAIS,SIGLA)
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
  add constraint E_PAIS_FK foreign key (ID_PAIS)
  references PAIS (ID);

prompt
prompt Creating table FAMILIA_COMERCIAL
prompt ================================
prompt
create table FAMILIA_COMERCIAL
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(10) not null,
  DESCRICAO VARCHAR2(40)
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
alter table FAMILIA_COMERCIAL
  add constraint PK_FAMILIA_COMERCIAL primary key (ID)
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
prompt Creating table FAMILIA_MATERIAIS
prompt ================================
prompt
create table FAMILIA_MATERIAIS
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(10) not null,
  DESCRICAO VARCHAR2(40)
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
alter table FAMILIA_MATERIAIS
  add constraint PK_FAMILIA_MATERIAIS primary key (ID)
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
prompt Creating table FORNECEDOR
prompt =========================
prompt
create table FORNECEDOR
(
  ID NUMBER not null
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
alter table FORNECEDOR
  add constraint PK_FORNECEDOR primary key (ID)
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
prompt Creating table IDIOMA
prompt =====================
prompt
create table IDIOMA
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(2) not null,
  NOME   VARCHAR2(30)
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
alter table IDIOMA
  add constraint PK_IDIOMA primary key (ID)
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
prompt Creating table MATERIAL
prompt =======================
prompt
create table MATERIAL
(
  ID        NUMBER not null,
  CODIGO    VARCHAR2(40) not null,
  DESCRICAO VARCHAR2(40)
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
alter table MATERIAL
  add constraint PK_MATERIAL primary key (ID)
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
create unique index MATERIAL_CODIGO_IDX_0 on MATERIAL (CODIGO)
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
prompt Creating table ORGANIZACAO
prompt ==========================
prompt
create table ORGANIZACAO
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(40)
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
alter table ORGANIZACAO
  add constraint PK_ORGANIZACAO primary key (ID)
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
prompt Creating table PERFIL
prompt =====================
prompt
create table PERFIL
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(40)
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
alter table PERFIL
  add constraint PK_PERFIL primary key (ID)
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
create unique index PERFIL_CODIGO_IDX_0 on PERFIL (CODIGO)
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
prompt Creating table PERFIL_APLICACAO
prompt ===============================
prompt
create table PERFIL_APLICACAO
(
  ID           NUMBER not null,
  ID_PERFIL    NUMBER not null,
  ID_APLICACAO NUMBER not null
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
alter table PERFIL_APLICACAO
  add constraint PK_PERFIL_APLICACAO primary key (ID)
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
prompt Creating table PERFIL_APLICACAO_MENU_ITEM
prompt =========================================
prompt
create table PERFIL_APLICACAO_MENU_ITEM
(
  ID                     NUMBER not null,
  ID_PERFIL_APLICACAO    NUMBER not null,
  ID_APLICACAO_MENU_ITEM NUMBER not null
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
alter table PERFIL_APLICACAO_MENU_ITEM
  add constraint PK_PERFIL_APLICACAO_MENU_ITEM primary key (ID)
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
prompt Creating table PERFIL_USUARIO
prompt =============================
prompt
create table PERFIL_USUARIO
(
  ID         NUMBER not null,
  ID_PERFIL  NUMBER not null,
  ID_USUARIO NUMBER not null
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
alter table PERFIL_USUARIO
  add constraint PK_PERFIL_USUARIO primary key (ID)
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
prompt Creating table PESSOA
prompt =====================
prompt
create table PESSOA
(
  ID        NUMBER not null,
  NOME      VARCHAR2(40),
  ENDERECO  VARCHAR2(60),
  BAIRRO    VARCHAR2(20),
  ID_CIDADE NUMBER,
  CODIGO    VARCHAR2(20)
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
alter table PESSOA
  add constraint PESSOA_PK primary key (ID)
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
alter table PESSOA
  add constraint P_CIDADE_FK foreign key (ID_CIDADE)
  references CIDADE (ID);

prompt
prompt Creating table PLANTA
prompt =====================
prompt
create table PLANTA
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(40)
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
alter table PLANTA
  add constraint PK_PLANTA primary key (ID)
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
prompt Creating table PRODUTO
prompt ======================
prompt
create table PRODUTO
(
  ID          NUMBER not null,
  ID_MATERIAL NUMBER,
  CODIGO      VARCHAR2(40) not null,
  DESCRICAO   VARCHAR2(40)
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
  add constraint PK_PRODUTO primary key (ID)
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
prompt Creating table SEQUENCE
prompt =======================
prompt
create table SEQUENCE
(
  ID           NUMBER not null,
  NAME         VARCHAR2(40) not null,
  INCREMENT_BY NUMBER not null,
  CURR_VAL     NUMBER
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
alter table SEQUENCE
  add constraint SEQUENCE_PK primary key (ID)
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
alter table SEQUENCE
  add constraint SEQUENCE_UK unique (NAME)
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
prompt Creating table UNIDADE_MONETARIA
prompt ================================
prompt
create table UNIDADE_MONETARIA
(
  ID      NUMBER not null,
  CODIGO  VARCHAR2(10) not null,
  NOME    VARCHAR2(30),
  SIMBOLO VARCHAR2(5)
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
alter table UNIDADE_MONETARIA
  add constraint PK_UNIDADE_MONETARIA primary key (ID)
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
prompt Creating table TAXA_CAMBIO
prompt ==========================
prompt
create table TAXA_CAMBIO
(
  ID                       NUMBER not null,
  ID_UNIDADE_MONETARIA     NUMBER not null,
  ID_UNIDADE_MONETARIA_COT NUMBER not null,
  DAT_COTACAO              DATE not null,
  VLR_COTACAO              NUMBER not null
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
alter table TAXA_CAMBIO
  add constraint TAXA_CAMBIO_PK primary key (ID)
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
alter table TAXA_CAMBIO
  add constraint TAXA_CAMBIO_FK1 foreign key (ID_UNIDADE_MONETARIA)
  references UNIDADE_MONETARIA (ID);
alter table TAXA_CAMBIO
  add constraint TAXA_CAMBIO_FK2 foreign key (ID_UNIDADE_MONETARIA_COT)
  references UNIDADE_MONETARIA (ID);

prompt
prompt Creating table TESTE
prompt ====================
prompt
create table TESTE
(
  ID         NUMBER,
  DATA_TESTE DATE
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

prompt
prompt Creating table UNIDADE_MEDIDA
prompt =============================
prompt
create table UNIDADE_MEDIDA
(
  ID      NUMBER not null,
  CODIGO  VARCHAR2(10) not null,
  NOME    VARCHAR2(30),
  SIMBOLO VARCHAR2(3)
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
alter table UNIDADE_MEDIDA
  add constraint PK_UNIDADE_MEDIDA primary key (ID)
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
prompt Creating table USUARIO
prompt ======================
prompt
create table USUARIO
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(20) not null,
  NOME   VARCHAR2(40),
  SENHA  VARCHAR2(10)
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
alter table USUARIO
  add constraint USUARIO_PK primary key (ID)
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
alter table USUARIO
  add constraint USUARIO_UK unique (CODIGO)
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
prompt Creating table VIA_TRANSPORTE
prompt =============================
prompt
create table VIA_TRANSPORTE
(
  ID     NUMBER not null,
  CODIGO VARCHAR2(10) not null,
  NOME   VARCHAR2(30)
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
alter table VIA_TRANSPORTE
  add constraint PK_VIA_TRANSPORTE primary key (ID)
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


spool off
