-----------------------------------------------
-- Export file for user ETL                  --
-- Created by Rodrigo on 18/2/2008, 23:31:17 --
-----------------------------------------------

spool etl.log

prompt
prompt Creating table TABELA
prompt =====================
prompt
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

prompt
prompt Creating table COLUNA
prompt =====================
prompt
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

prompt
prompt Creating table MAPEAMENTO
prompt =========================
prompt
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

prompt
prompt Creating table MAPEAMENTO_COLUNA
prompt ================================
prompt
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

prompt
prompt Creating table CONSISTENCIA
prompt ===========================
prompt
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

prompt
prompt Creating table FILTRO
prompt =====================
prompt
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

prompt
prompt Creating table JUNCAO
prompt =====================
prompt
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

prompt
prompt Creating table NOTIFICACAO
prompt ==========================
prompt
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

prompt
prompt Creating table PROCESSO
prompt =======================
prompt
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

prompt
prompt Creating table PROCESSAMENTO
prompt ============================
prompt
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

prompt
prompt Creating table TRANSFORMACAO
prompt ============================
prompt
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

prompt
prompt Creating sequence SEQ_COLUNA
prompt ============================
prompt
create sequence SEQ_COLUNA
minvalue 1
maxvalue 999999999999999999999999999
start with 373
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_CONSISTENCIA
prompt ==================================
prompt
create sequence SEQ_CONSISTENCIA
minvalue 1
maxvalue 999999999999999999999999999
start with 9
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_FILTRO
prompt ============================
prompt
create sequence SEQ_FILTRO
minvalue 1
maxvalue 999999999999999999999999999
start with 10
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_JUNCAO
prompt ============================
prompt
create sequence SEQ_JUNCAO
minvalue 1
maxvalue 999999999999999999999999999
start with 53
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_MAPEAMENTO
prompt ================================
prompt
create sequence SEQ_MAPEAMENTO
minvalue 1
maxvalue 999999999999999999999999999
start with 27
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_MAPEAMENTO_COLUNA
prompt =======================================
prompt
create sequence SEQ_MAPEAMENTO_COLUNA
minvalue 1
maxvalue 999999999999999999999999999
start with 69
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_PROCESSAMENTO
prompt ===================================
prompt
create sequence SEQ_PROCESSAMENTO
minvalue 1
maxvalue 999999999999999999999999999
start with 338
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_PROCESSO
prompt ==============================
prompt
create sequence SEQ_PROCESSO
minvalue 1
maxvalue 999999999999999999999999999
start with 23
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_TABELA
prompt ============================
prompt
create sequence SEQ_TABELA
minvalue 1
maxvalue 999999999999999999999999999
start with 65
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_TESTE_CLIENTE_DESTINO
prompt ===========================================
prompt
create sequence SEQ_TESTE_CLIENTE_DESTINO
minvalue 1
maxvalue 999999999999999999999999999
start with 133
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_TRANSFORMACAO
prompt ===================================
prompt
create sequence SEQ_TRANSFORMACAO
minvalue 1
maxvalue 999999999999999999999999999
start with 12
increment by 1
nocache;

prompt
prompt Creating view PROCESSO_DISPARAR
prompt ===============================
prompt
create or replace view processo_disparar as
select
  id_processo,
  dat_proxima_execucao
from
  processo
where
  ativo = 'S' and
  dat_proxima_execucao <= sysdate
/

prompt
prompt Creating package PKG_COLUNA
prompt ===========================
prompt
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

prompt
prompt Creating package PKG_CONSISTENCIA
prompt =================================
prompt
create or replace package PKG_CONSISTENCIA is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  function CONSISTE_VALOR
  (
    p_id_mapeamento_coluna in consistencia.id_mapeamento_coluna%type,
    p_valor                in consistencia.valor_comparacao%type,
    p_c_mensagem_erro      out varchar2
  )
  return boolean;

end PKG_CONSISTENCIA;
/

prompt
prompt Creating package PKG_JUNCAO
prompt ===========================
prompt
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

prompt
prompt Creating package PKG_MAPEAMENTO
prompt ===============================
prompt
create or replace package PKG_MAPEAMENTO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  TD_TABELA constant char := 'T';
  TD_CUBO   constant char := 'C';

  TA_ALTERAR constant char := '1';
  TA_INCLUIR constant char := '2';

  SO_TODAS_COLUNAS constant integer := 0;
  SO_ROWID         constant integer := 1;

  SD_REGISTRO_ENCONTRADO constant integer := 0;
  SD_REGISTRO_ATUALIZADO constant integer := 1;

  UO_LINHA constant integer := 0;
  UO_LOTE  constant integer := 1;

  type t_mapeamento_coluna is record
  (
    id_mapeamento_coluna            integer,
    prop_tabela_origem              varchar2(30),
    tabela_origem                   varchar2(30),
    coluna_origem                   varchar2(30),
    coluna_destino                  varchar2(30),
    formato                         varchar2(10),
    funcao_grupo                    varchar2(10),
    chave_pesquisa                  varchar2(1),
    prop_tabela_pesquisa_dimensao   varchar2(30),
    tabela_pesquisa_dimensao        varchar2(30),
    coluna_pesquisa_dimensao        varchar2(30),
    coluna_chave_primaria_dimensao  varchar2(30)
  );

  type t_a_mapeamento_coluna is table of t_mapeamento_coluna index by binary_integer;

  type t_mapeamento is record
  (
    id_mapeamento                   integer,
    prop_tabela_origem              varchar2(30),
    tabela_origem                   varchar2(30),
    coluna_chave_primaria_origem    varchar2(30),
    origem_tempo                    varchar2(1),
    prop_tabela_destino             varchar2(30),
    tabela_destino                  varchar2(30),
    tipo_atualizacao                varchar2(1),
    coluna_data_inclusao            varchar2(30),
    coluna_data_alteracao           varchar2(30),
    colunas                         t_a_mapeamento_coluna,
    numero_colunas                  integer
  );

  mapa   t_mapeamento;

  procedure CARREGA_MAPEAMENTO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  );

  procedure DESCARREGA_MAPEAMENTO;

  function COMANDO_SELECT_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2;

  function COMANDO_UPDATE_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2;

  function COMANDO_SELECT_DESTINO
  (
    p_n_tipo in integer
  )
  return varchar2;

  function COMANDO_INSERT_DESTINO
  return varchar2;

  function COMANDO_UPDATE_DESTINO
  return varchar2;

end PKG_MAPEAMENTO;
/

prompt
prompt Creating package PKG_METADADOS
prompt ==============================
prompt
create or replace package PKG_METADADOS is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  SA_PENDENTE    constant integer := 0;
  SA_PROCESSANDO constant integer := 1;
  SA_CONCLUIDO   constant integer := 2;
  SA_COM_ERRO    constant integer := 3;

  function NOME_TABELA
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return tabela.nome_tabela%type;

  function ID_TABELA
  (
    p_nome_tabela in tabela.nome_tabela%type
  )
  return tabela.id_tabela%type;

  function NOME_COLUNA
  (
    p_id_coluna in coluna.id_coluna%type
  )
  return coluna.nome_coluna%type;

  function ID_COLUNA
  (
    p_id_tabela   in coluna.id_tabela%type,
    p_nome_coluna in coluna.nome_coluna%type
  )
  return coluna.id_coluna%type;

  function ID_COLUNA_PK
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return coluna.id_coluna%type;

end PKG_METADADOS;
/

prompt
prompt Creating package PKG_NOTIFICACAO
prompt ================================
prompt
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

prompt
prompt Creating package PKG_PROCESSAMENTO
prompt ==================================
prompt
create or replace package PKG_PROCESSAMENTO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  procedure ABRE_PROCESSAMENTO
  (
    p_id_processo      in  processamento.id_processo%type,
    p_id_processamento out processamento.id_processamento%type
  );

  procedure FECHA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  );

  procedure EXECUTA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  );

end PKG_PROCESSAMENTO;
/

prompt
prompt Creating package PKG_PROCESSO
prompt =============================
prompt
create or replace package PKG_PROCESSO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  procedure EXECUTA_PROCESSO
  (
    p_id_processo in processo.id_processo%type
  );

  procedure LIMPA_PROCESSAMENTOS
  (
    p_id_processo in processo.id_processo%type
  );

end PKG_PROCESSO;
/

prompt
prompt Creating package PKG_TABELA
prompt ===========================
prompt
create or replace package PKG_TABELA is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  procedure POPULA_TABELAS
  (
    p_proprietario in tabela.proprietario%type
  );

end PKG_TABELA;
/

prompt
prompt Creating package PKG_TEMPO
prompt ==========================
prompt
create or replace package PKG_TEMPO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  data_inicial   date;
  data_final     date;
  incremento     integer := 1;
  unidade_tempo  char(1) := 'D';
  data_atual     date;

  procedure inicializa;

  procedure proxima_data;

end PKG_TEMPO;
/

prompt
prompt Creating package PKG_TRANSFORMACAO
prompt ==================================
prompt
create or replace package PKG_TRANSFORMACAO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  function TRANFORMA_VALOR
  (
    p_id_mapeamento_coluna in transformacao.id_mapeamento_coluna%type,
    p_valor_coluna         in transformacao.valor_origem%type
  )
  return transformacao.valor_destino%type;

end PKG_TRANSFORMACAO;
/

prompt
prompt Creating procedure PRC_EXECUTA_PROCESSO
prompt =======================================
prompt
create or replace procedure PRC_EXECUTA_PROCESSO
(
  p_id_processo in processo.id_processo%type
)
is
begin

  pkg_processo.executa_processo(p_id_processo);

end PRC_EXECUTA_PROCESSO;
/

prompt
prompt Creating procedure PRC_LIMPA_PROCESSAMENTOS
prompt ===========================================
prompt
create or replace procedure PRC_LIMPA_PROCESSAMENTOS
(
  p_id_processo in processo.id_processo%type
)
is
begin

  pkg_processo.limpa_processamentos(p_id_processo);

end PRC_LIMPA_PROCESSAMENTOS;
/

prompt
prompt Creating procedure PRC_POPULA_COLUNAS
prompt =====================================
prompt
create or replace procedure PRC_POPULA_COLUNAS
(
  p_id_tabela in tabela.id_tabela%type
)
is
begin

  pkg_coluna.popula_colunas(p_id_tabela);

end PRC_POPULA_COLUNAS;
/

prompt
prompt Creating procedure PRC_POPULA_JUNCOES
prompt =====================================
prompt
create or replace procedure PRC_POPULA_JUNCOES
is
begin

  pkg_juncao.popula_juncoes;

end PRC_POPULA_JUNCOES;
/

prompt
prompt Creating procedure PRC_POPULA_TABELAS
prompt =====================================
prompt
create or replace procedure PRC_POPULA_TABELAS
(
  p_proprietario in tabela.proprietario%type
)
is
begin

  pkg_tabela.popula_tabelas(p_proprietario);

end PRC_POPULA_TABELAS;
/

prompt
prompt Creating package body PKG_COLUNA
prompt ================================
prompt
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

prompt
prompt Creating package body PKG_CONSISTENCIA
prompt ======================================
prompt
create or replace package body PKG_CONSISTENCIA is

  function COMPARA_VALORES
  (
    p_valor               in consistencia.valor_comparacao%type,
    p_operador_comparacao in consistencia.operador_comparacao%type,
    p_valor_comparacao    in consistencia.valor_comparacao%type
  )
  return boolean
  is

    v_b_resultado_comparacao  boolean;

  begin

    v_b_resultado_comparacao := false;

    if (p_operador_comparacao = '=') and (p_valor = p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '<>') and (p_valor <> p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '>') and (p_valor > p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '<') and (p_valor < p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '>=') and (p_valor >= p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '<=') and (p_valor <= p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    end if;

    return v_b_resultado_comparacao;

  end;

  function CONSISTE_VALOR
  (
    p_id_mapeamento_coluna in consistencia.id_mapeamento_coluna%type,
    p_valor                in consistencia.valor_comparacao%type,
    p_c_mensagem_erro      out varchar2
  )
  return boolean
  is

    cursor c_consistencia
    (
      p_id_mapeamento_coluna in consistencia.id_mapeamento_coluna%type
    )
    is
      select
        cor.nome_coluna coluna_origem,
        tor.nome_tabela tabela_origem,
        tor.proprietario prop_tabela_origem,
        mc.formato,
        mc.funcao_grupo,
        c.operador_comparacao,
        c.valor_comparacao
      from
        consistencia      c,
        tabela            tor,
        coluna            cor,
        mapeamento_coluna mc
      where
        mc.id_mapeamento_coluna = p_id_mapeamento_coluna and
        cor.id_coluna = mc.id_coluna_origem and
        tor.id_tabela = cor.id_tabela and
        c.id_mapeamento_coluna = mc.id_mapeamento_coluna;

    r_consistencia  c_consistencia%rowtype;

    v_c_coluna      varchar2(4000);
    v_b_consistido  boolean;

  begin

    v_b_consistido := true;

    v_c_coluna := '';
    p_c_mensagem_erro := '';

    open c_consistencia (p_id_mapeamento_coluna);

    fetch c_consistencia into r_consistencia;

    if c_consistencia%found then

      v_c_coluna := r_consistencia.prop_tabela_origem || '.' || r_consistencia.tabela_origem || '.' || r_consistencia.coluna_origem;

      if r_consistencia.funcao_grupo is not null then
        v_c_coluna := r_consistencia.funcao_grupo || '(' || v_c_coluna || ')';
      end if;

      if r_consistencia.formato is not null then
        v_c_coluna := 'to_char(' || v_c_coluna || ', ''' || r_consistencia.formato || ''')';
      end if;

      while (c_consistencia%found) and v_b_consistido loop

        if not compara_valores(p_valor, r_consistencia.operador_comparacao, r_consistencia.valor_comparacao) then

          v_b_consistido := false;

          p_c_mensagem_erro := p_c_mensagem_erro || chr(13) || chr(10) || '  ' || r_consistencia.operador_comparacao || ' ' || r_consistencia.valor_comparacao;

        end if;

        fetch c_consistencia into r_consistencia;

      end loop;

    end if;

    if not v_b_consistido then

      p_c_mensagem_erro := v_c_coluna || ' não satisfaz as seguintes condições:' || chr(13) || chr(10) || p_c_mensagem_erro;

    end if;

    close c_consistencia;

    return v_b_consistido;

  end;

end PKG_CONSISTENCIA;
/

prompt
prompt Creating package body PKG_JUNCAO
prompt ================================
prompt
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

prompt
prompt Creating package body PKG_MAPEAMENTO
prompt ====================================
prompt
create or replace package body PKG_MAPEAMENTO is

  -- Carrega mapeamento para a memória
  procedure CARREGA_MAPEAMENTO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  )
  is

    cursor c_mapeamento
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        m.id_mapeamento     id_mapeamento,
        tor.proprietario    prop_tabela_origem,
        tor.nome_tabela     tabela_origem,
        (
          select
            c.nome_coluna
          from
            coluna c
          where
            c.id_tabela = m.id_tabela_origem and
            c.chave_primaria = 'S'
        )                   coluna_chave_primaria_origem,
        m.origem_tempo      origem_tempo,
        tde.proprietario    prop_tabela_destino,
        tde.nome_tabela     tabela_destino,
        m.tipo_atualizacao  tipo_atualizacao,
        cdi.nome_coluna     coluna_data_inclusao,
        cda.nome_coluna     coluna_data_alteracao
      from
        coluna      cda,
        coluna      cdi,
        tabela      tde,
        tabela      tor,
        mapeamento  m
      where
        m.id_mapeamento = p_id_mapeamento and
        tor.id_tabela(+) = m.id_tabela_origem and
        tde.id_tabela = m.id_tabela_destino and
        cdi.id_coluna(+) = m.id_coluna_data_inclusao and
        cda.id_coluna(+) = m.id_coluna_data_alteracao;

    cursor c_mapeamento_coluna
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        mc.id_mapeamento_coluna  id_mapeamento_coluna,
        tcor.proprietario        prop_tabela_origem,
        tcor.nome_tabela         tabela_origem,
        cor.nome_coluna          coluna_origem,
        cde.nome_coluna          coluna_destino,
        mc.formato               formato,
        mc.funcao_grupo          funcao_grupo,
        mc.chave_pesquisa        chave_pesquisa,
        tpd.proprietario         prop_tabela_pesquisa_dimensao,
        tpd.nome_tabela          tabela_pesquisa_dimensao,
        cpd.nome_coluna          coluna_pesquisa_dimensao,
        (
          select
            nome_coluna
          from
            coluna
          where
            id_tabela = tpd.id_tabela and
            chave_primaria = 'S'
        )                        coluna_chave_primaria_dimensao
      from
        tabela             tpd,
        coluna             cpd,
        coluna             cde,
        tabela             tcor,
        coluna             cor,
        mapeamento_coluna  mc
      where
        mc.id_mapeamento = p_id_mapeamento and
        cor.id_coluna(+) = mc.id_coluna_origem and
        tcor.id_tabela(+) = cor.id_tabela and
        cde.id_coluna = mc.id_coluna_destino and
        cpd.id_coluna(+) = mc.id_coluna_pesquisa_dimensao and
        tpd.id_tabela(+) = cpd.id_tabela
      order by
        tabela_origem,
        funcao_grupo nulls first,
        coluna_destino;

    r_mapeamento  c_mapeamento%rowtype;
    r_mapeamento_coluna  c_mapeamento_coluna%rowtype;

  begin

    mapa.numero_colunas := 0;

    open c_mapeamento (p_id_mapeamento);

    fetch c_mapeamento into r_mapeamento;

    if c_mapeamento%found then

      mapa.id_mapeamento                  := r_mapeamento.id_mapeamento;
      mapa.prop_tabela_origem             := r_mapeamento.prop_tabela_origem;
      mapa.tabela_origem                  := r_mapeamento.tabela_origem;
      mapa.coluna_chave_primaria_origem   := r_mapeamento.coluna_chave_primaria_origem;
      mapa.origem_tempo                   := r_mapeamento.origem_tempo;
      mapa.prop_tabela_destino            := r_mapeamento.prop_tabela_destino;
      mapa.tabela_destino                 := r_mapeamento.tabela_destino;
      mapa.tipo_atualizacao               := r_mapeamento.tipo_atualizacao;
      mapa.coluna_data_inclusao           := r_mapeamento.coluna_data_inclusao;
      mapa.coluna_data_alteracao          := r_mapeamento.coluna_data_alteracao;

      open c_mapeamento_coluna (p_id_mapeamento);

      loop

        fetch c_mapeamento_coluna into r_mapeamento_coluna;

        exit when c_mapeamento_coluna%notfound;

        mapa.numero_colunas := mapa.numero_colunas + 1;

        mapa.colunas(mapa.numero_colunas).id_mapeamento_coluna           := r_mapeamento_coluna.id_mapeamento_coluna;
        mapa.colunas(mapa.numero_colunas).prop_tabela_origem             := r_mapeamento_coluna.prop_tabela_origem;
        mapa.colunas(mapa.numero_colunas).tabela_origem                  := r_mapeamento_coluna.tabela_origem;
        mapa.colunas(mapa.numero_colunas).coluna_origem                  := r_mapeamento_coluna.coluna_origem;
        mapa.colunas(mapa.numero_colunas).coluna_destino                 := r_mapeamento_coluna.coluna_destino;
        mapa.colunas(mapa.numero_colunas).formato                        := r_mapeamento_coluna.formato;
        mapa.colunas(mapa.numero_colunas).funcao_grupo                   := r_mapeamento_coluna.funcao_grupo;
        mapa.colunas(mapa.numero_colunas).chave_pesquisa                 := r_mapeamento_coluna.chave_pesquisa;
        mapa.colunas(mapa.numero_colunas).prop_tabela_pesquisa_dimensao  := r_mapeamento_coluna.prop_tabela_pesquisa_dimensao;
        mapa.colunas(mapa.numero_colunas).tabela_pesquisa_dimensao       := r_mapeamento_coluna.tabela_pesquisa_dimensao;
        mapa.colunas(mapa.numero_colunas).coluna_pesquisa_dimensao       := r_mapeamento_coluna.coluna_pesquisa_dimensao;
        mapa.colunas(mapa.numero_colunas).coluna_chave_primaria_dimensao := r_mapeamento_coluna.coluna_chave_primaria_dimensao;

      end loop;

      close c_mapeamento_coluna;

    end if;

    close c_mapeamento;

  end;

  procedure DESCARREGA_MAPEAMENTO
  is
  begin

    mapa.numero_colunas := 0;

  end;

  -- Constrói comando select na tabela de origem
  function COMANDO_SELECT_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2
  is

    type t_tabela is record
    (
      proprietario  varchar2(30),
      nome_tabela   varchar2(30)
    );

    type t_a_tabela is table of t_tabela index by binary_integer;

    cursor c_juncao
    (
      p_prop_tabela_pai   in tabela.proprietario%type,
      p_nome_tabela_pai   in tabela.nome_tabela%type,
      p_prop_tabela_filho in tabela.proprietario%type,
      p_nome_tabela_filho in tabela.nome_tabela%type
    )
    is
      select
        tp.nome_tabela tabela_pai,
        cp.nome_coluna coluna_pai,
        j.relacionamento_pai_opcional,
        tf.nome_tabela tabela_filho,
        cf.nome_coluna coluna_filho,
        j.relacionamento_filho_opcional
      from
        juncao j,
        coluna cf,
        coluna cp,
        tabela tf,
        tabela tp
      where
        tp.nome_tabela = p_nome_tabela_pai and
        tp.proprietario = p_prop_tabela_pai and
        tf.nome_tabela = p_nome_tabela_filho and
        tf.proprietario = p_prop_tabela_filho and
        cp.id_tabela = tp.id_tabela and
        cf.id_tabela = tf.id_tabela and
        j.id_coluna_tabela_pai = cp.id_coluna and
        j.id_coluna_tabela_filho = cf.id_coluna;

    cursor c_filtro
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        c.nome_coluna         coluna,
        t.nome_tabela         tabela,
        f.operador_comparacao operador_comparacao,
        f.valor_comparacao    valor_comparacao
      from
        tabela t,
        coluna c,
        filtro f
      where
        f.id_mapeamento = p_id_mapeamento and
        c.id_coluna = f.id_coluna and
        t.id_tabela = c.id_tabela;

    r_juncao  c_juncao%rowtype;
    r_filtro  c_filtro%rowtype;

    v_c_result                varchar2(4000);
    v_c_column                varchar2(4000);
    v_c_columns               varchar2(4000);
    v_c_from                  varchar2(4000);
    v_c_where                 varchar2(4000);
    v_c_group_by              varchar2(4000);
    v_n_i                     integer;
    v_n_num_tabelas_origem    integer;
    v_c_prop_tabela_origem    varchar2(30);
    v_c_tabela_origem         varchar2(30);
    v_a_tabela_origem         t_a_tabela;
    v_c_relacionamento_pai    varchar2(3);
    v_c_relacionamento_filho  varchar2(3);
    v_b_agrupamento           boolean;

  begin

    v_b_agrupamento := false;

    --
    -- Monta clásulas select e group by
    --

    v_c_columns  := '';
    v_c_group_by := '';

    if p_n_tipo = SO_TODAS_COLUNAS then

      for v_n_i in 1..mapa.numero_colunas loop

        v_c_column := mapa.colunas(v_n_i).tabela_origem || '.' || mapa.colunas(v_n_i).coluna_origem;

        if mapa.colunas(v_n_i).funcao_grupo is not null then

          -- Adiciona função de grupo
          v_c_column := mapa.colunas(v_n_i).funcao_grupo || '(' || v_c_column || ')';

          v_b_agrupamento := true;

        else

          if v_c_group_by is not null then
            v_c_group_by := v_c_group_by || ',';
          end if;

          v_c_group_by := v_c_group_by || v_c_column;

          if mapa.colunas(v_n_i).coluna_pesquisa_dimensao is not null then

            v_c_column := '(select max(' || mapa.colunas(v_n_i).coluna_chave_primaria_dimensao || ') from ' || mapa.colunas(v_n_i).prop_tabela_pesquisa_dimensao || '.' || mapa.colunas(v_n_i).tabela_pesquisa_dimensao || ' where ' || mapa.colunas(v_n_i).tabela_pesquisa_dimensao || '.' || mapa.colunas(v_n_i).coluna_pesquisa_dimensao || ' = ' || v_c_column || ')';

          end if;

        end if;

        if mapa.colunas(v_n_i).formato is not null then

          v_c_column := 'to_char(' || v_c_column || ', ''' || mapa.colunas(v_n_i).formato || ''')';

        end if;

        if v_c_columns is not null then
          v_c_columns := v_c_columns || ',';
        end if;

        v_c_columns := v_c_columns || v_c_column;

      end loop;

      if not v_b_agrupamento then

        v_c_column := 'notificacao.rowid';

        if v_c_columns is not null then
          v_c_columns := v_c_columns || ',';
        end if;

        v_c_columns := v_c_columns || v_c_column;

        if v_c_group_by is not null then
          v_c_group_by := v_c_group_by || ',';
        end if;

        v_c_group_by := v_c_group_by || v_c_column;

      end if;

    elsif p_n_tipo = SO_ROWID then

      v_c_column := 'notificacao.rowid';

      if v_c_columns is not null then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_column;

    end if;

    --
    -- Monta clásula from
    --

    v_n_num_tabelas_origem := 1;

    v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := null;
    v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := 'notificacao';

    v_n_num_tabelas_origem := 2;

    v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := mapa.prop_tabela_origem;
    v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := mapa.tabela_origem;

    v_n_i := 1;

    while v_n_i <= mapa.numero_colunas loop

      v_c_prop_tabela_origem := mapa.colunas(v_n_i).prop_tabela_origem;
      v_c_tabela_origem      := mapa.colunas(v_n_i).tabela_origem;

      if (v_c_tabela_origem = mapa.tabela_origem) and (v_c_prop_tabela_origem = mapa.prop_tabela_origem) then

        v_n_i := v_n_i + 1;

      else

        v_n_num_tabelas_origem := v_n_num_tabelas_origem + 1;

        v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := v_c_prop_tabela_origem;
        v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := v_c_tabela_origem;

        while (v_n_i <= mapa.numero_colunas) and (mapa.colunas(v_n_i).tabela_origem = v_c_tabela_origem) and (mapa.colunas(v_n_i).prop_tabela_origem = v_c_prop_tabela_origem) loop

          v_n_i := v_n_i + 1;

        end loop;

      end if;

    end loop;

    v_c_from := '';

    for i in reverse 1..v_n_num_tabelas_origem loop

      if v_c_from is not null then
        v_c_from := v_c_from || ',';
      end if;

      if v_a_tabela_origem(i).proprietario is not null then
        v_c_from := v_c_from || v_a_tabela_origem(i).proprietario || '.';
      end if;

      v_c_from := v_c_from || v_a_tabela_origem(i).nome_tabela;

    end loop;

    --
    -- Monta cláusula where
    --

    v_c_where := 'notificacao.proprietario = ''' || mapa.prop_tabela_origem || ''' and notificacao.tabela = ''' || mapa.tabela_origem || ''' and notificacao.status = :p_status and ' || mapa.tabela_origem || '.' || mapa.coluna_chave_primaria_origem || ' = notificacao.chave_pk';

    if v_n_num_tabelas_origem > 1 then

      for i in 1..v_n_num_tabelas_origem loop

        for j in 1..v_n_num_tabelas_origem loop

          open c_juncao (v_a_tabela_origem(i).proprietario, v_a_tabela_origem(i).nome_tabela, v_a_tabela_origem(j).proprietario, v_a_tabela_origem(j).nome_tabela);

          loop

            fetch c_juncao into r_juncao;

            exit when c_juncao%notfound;

            if v_c_where is not null then
              v_c_where := v_c_where || ' and ';
            end if;

            v_c_relacionamento_pai := '';
            if r_juncao.relacionamento_pai_opcional = 'S' then
              v_c_relacionamento_pai := '(+)';
            end if;

            v_c_relacionamento_filho := '';
            if r_juncao.relacionamento_filho_opcional = 'S' then
              v_c_relacionamento_filho := '(+)';
            end if;

            v_c_where := v_c_where || r_juncao.tabela_pai || '.' || r_juncao.coluna_pai || v_c_relacionamento_pai || ' = ' || r_juncao.tabela_filho || '.' || r_juncao.coluna_filho || v_c_relacionamento_filho;

          end loop;

          close c_juncao;

        end loop;

      end loop;

    end if;

    open c_filtro (mapa.id_mapeamento);

    loop

      fetch c_filtro into r_filtro;

      exit when c_filtro%notfound;

      if v_c_where is not null then
        v_c_where := v_c_where || ' and ';
      end if;

      v_c_where := v_c_where || r_filtro.tabela || '.' || r_filtro.coluna || ' ' || r_filtro.operador_comparacao || ' ' || case when upper(r_filtro.operador_comparacao) = 'IN' then '(' else '' end || '''' || r_filtro.valor_comparacao || '''' || case when upper(r_filtro.operador_comparacao) = 'IN' then ')' else '' end;

    end loop;

    close c_filtro;

    -- Monta comando
    v_c_result := 'select ' || v_c_columns || ' from ' || v_c_from;
    if v_c_where is not null then
      v_c_result := v_c_result || ' where ' || v_c_where;
    end if;
    if v_b_agrupamento then
      v_c_result := v_c_result || ' group by ' || v_c_group_by;
    end if;

    return v_c_result;

  end;

  -- Constrói comando update na tabela de origem
  function COMANDO_UPDATE_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2
  is

    v_c_result          varchar2(4000);
    v_c_column          varchar2(4000);
    v_c_value           varchar2(4000);
    v_c_columns_values  varchar2(4000);
    v_c_where           varchar2(4000);

  begin

    v_c_result := null;

    v_c_columns_values := '';

    --
    -- Monta clásula set
    --

    if p_n_tipo = UO_LINHA then
      v_c_column := 'status';
      v_c_value  := ':p_status';
    elsif p_n_tipo = UO_LOTE then
      v_c_column := 'status';
      v_c_value  := ':p_status_novo';
    end if;

    if v_c_columns_values is not null then
      v_c_columns_values := v_c_columns_values || ',';
    end if;

    v_c_columns_values := v_c_columns_values || v_c_column || ' = ' || v_c_value;

    --
    -- Monta cláusula where
    --
    if p_n_tipo = UO_LINHA then

      v_c_where := 'rowid = :p_rowid';

    elsif p_n_tipo = UO_LOTE then

      v_c_where := 'proprietario = ''' || mapa.prop_tabela_origem || ''' and tabela = ''' || mapa.tabela_origem || ''' and status = :p_status';

    end if;

    -- Monta comando
    v_c_result := 'update notificacao set ' || v_c_columns_values || ' where ' || v_c_where;

    return v_c_result;

  end;

  -- Constrói comando select na tabela de destino
  function COMANDO_SELECT_DESTINO
  (
    p_n_tipo in integer
  )
  return varchar2
  is

    v_c_result       varchar2(4000);
    v_c_columns      varchar2(4000);
    v_c_from         varchar2(4000);
    v_c_where        varchar2(4000);

  begin

    --
    -- Monta cláusula select
    --
    v_c_columns := 'rowid';

    --
    -- Monta cláusula from
    --
    v_c_from := mapa.prop_tabela_destino || '.' || mapa.tabela_destino;

    --
    -- Monta clásula where
    --

    v_c_where := '';

    if p_n_tipo = SD_REGISTRO_ENCONTRADO then

      for v_n_i in 1..mapa.numero_colunas loop

        if mapa.colunas(v_n_i).chave_pesquisa = 'S' then

          if v_c_where is not null then
            v_c_where := v_c_where || ' and ';
          end if;

          v_c_where := v_c_where || mapa.tabela_destino || '.' || mapa.colunas(v_n_i).coluna_destino || ' = :' || mapa.colunas(v_n_i).coluna_destino;

        end if;

      end loop;

    elsif p_n_tipo = SD_REGISTRO_ATUALIZADO then

      for v_n_i in 1..mapa.numero_colunas loop

        if v_c_where is not null then
          v_c_where := v_c_where || ' and ';
        end if;

        v_c_where := v_c_where || mapa.tabela_destino || '.' || mapa.colunas(v_n_i).coluna_destino || ' = :' || mapa.colunas(v_n_i).coluna_destino;

      end loop;

    end if;

    -- Monta comando
    v_c_result := 'select ' || v_c_columns || ' from ' || v_c_from;
    if v_c_where is not null then
      v_c_result := v_c_result || ' where ' || v_c_where;
    end if;

    return v_c_result;

  end;

  -- Constrói comando insert na tabela de destino
  function COMANDO_INSERT_DESTINO
  return varchar2
  is

    cursor c_coluna
    (
      p_nome_tabela  in tabela.nome_tabela%type,
      p_proprietario in tabela.proprietario%type
    )
    is
      select
        c.nome_coluna,
        c.nome_sequencia
      from
        coluna c,
        tabela t
      where
        t.nome_tabela = p_nome_tabela and
        t.proprietario = p_proprietario and
        c.id_tabela = t.id_tabela;

    r_coluna  c_coluna%rowtype;

    v_c_result   varchar2(4000);
    v_c_column   varchar2(4000);
    v_c_value    varchar2(4000);
    v_c_columns  varchar2(4000);
    v_c_values   varchar2(4000);
    v_n_i        integer;

  begin

    --
    -- Monta cláusulas columns e values
    --

    v_c_columns := '';
    v_c_values  := '';

    open c_coluna (pkg_mapeamento.mapa.tabela_destino, pkg_mapeamento.mapa.prop_tabela_destino);

    loop

      fetch c_coluna into r_coluna;

      exit when c_coluna%notfound;

      v_c_column := r_coluna.nome_coluna;
      v_c_value  := null;

      v_n_i := 1;

      while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (v_c_value is null) loop

        -- Caso coluna tenha mapeamento...
        if v_c_column = pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino then

          -- Coluna será igual à parâmetro
          v_c_value := ':' || r_coluna.nome_coluna;

        end if;

        v_n_i := v_n_i + 1;

      end loop;

      -- Caso seja campo para data de inclusão...
      if v_c_column = mapa.coluna_data_inclusao then

        v_c_value := 'sysdate';

      end if;

      if v_c_value is null then

        -- Caso coluna tenha sequência vinculada...
        if r_coluna.nome_sequencia is not null then

          -- Sequência gerará valor para coluna
          v_c_value := pkg_mapeamento.mapa.prop_tabela_destino || '.' || r_coluna.nome_sequencia || '.NEXTVAL';

        else

          -- Coluna será null
          v_c_value := 'null';

        end if;

      end if;

      if v_c_columns is not null then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_column;

      if v_c_values is not null then
        v_c_values := v_c_values || ',';
      end if;

      v_c_values := v_c_values || v_c_value;

    end loop;

    close c_coluna;

    -- Monta comando
    v_c_result := 'insert into ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' (' || v_c_columns || ') values (' || v_c_values || ')';

    return v_c_result;

  end;

  -- Constrói comando update na tabela de destino
  function COMANDO_UPDATE_DESTINO
  return varchar2
  is

    v_c_result          varchar2(4000);
    v_c_column          varchar2(4000);
    v_c_value           varchar2(4000);
    v_c_columns_values  varchar2(4000);

  begin

    v_c_columns_values := '';

    --
    -- Monta clásula set
    --

    for i in 1..pkg_mapeamento.mapa.numero_colunas loop

      v_c_column := pkg_mapeamento.mapa.colunas(i).coluna_destino;
      v_c_value  := ':' || v_c_column;

      if v_c_columns_values is not null then
        v_c_columns_values := v_c_columns_values || ',';
      end if;

      v_c_columns_values := v_c_columns_values || v_c_column || ' = ' || v_c_value;

    end loop;

    -- Caso haja campo para data de alteração...
    if mapa.coluna_data_alteracao is not null then

      v_c_column := mapa.coluna_data_alteracao;
      v_c_value  := 'sysdate';

    end if;

    if v_c_columns_values is not null then
      v_c_columns_values := v_c_columns_values || ',';
    end if;

    v_c_columns_values := v_c_columns_values || v_c_column || ' = ' || v_c_value;

    -- Monta comando
    v_c_result := 'update ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' set ' || v_c_columns_values || ' where rowid = :p_rowid';

    return v_c_result;

  end;

begin

  mapa.numero_colunas := 0;

end PKG_MAPEAMENTO;
/

prompt
prompt Creating package body PKG_METADADOS
prompt ===================================
prompt
create or replace package body PKG_METADADOS is

  -- Retorna nome da tabela correspondente ao id
  function NOME_TABELA
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return tabela.nome_tabela%type
  is

    v_result  tabela.nome_tabela%type;

  begin

    select
      t.nome_tabela
    into
      v_result
    from
      tabela t
    where
      t.id_tabela = p_id_tabela;

    return v_result;

  end;

  -- Retorna id correspondente ao nome da tabela
  function ID_TABELA
  (
    p_nome_tabela in tabela.nome_tabela%type
  )
  return tabela.id_tabela%type
  is

    v_result  tabela.id_tabela%type;

  begin

    select
      t.id_tabela
    into
      v_result
    from
      tabela t
    where
      t.nome_tabela = p_nome_tabela;

    return v_result;

  end;

  -- Retorna nome da coluna correspondente ao id
  function NOME_COLUNA
  (
    p_id_coluna in coluna.id_coluna%type
  )
  return coluna.nome_coluna%type
  is

    v_result  coluna.nome_coluna%type;

  begin

    select
      c.nome_coluna
    into
      v_result
    from
      coluna c
    where
      c.id_coluna = p_id_coluna;

    return v_result;

  end;

  -- Retorna id correspondente ao nome da coluna
  function ID_COLUNA
  (
    p_id_tabela   in coluna.id_tabela%type,
    p_nome_coluna in coluna.nome_coluna%type
  )
  return coluna.id_coluna%type
  is

    v_result  coluna.id_coluna%type;

  begin

    select
      c.id_coluna
    into
      v_result
    from
      coluna c
    where
      c.id_tabela = p_id_tabela and
      c.nome_coluna = p_nome_coluna;

    return v_result;

  end;

  -- Retorna id da coluna chave primária da tabela
  function ID_COLUNA_PK
  (
    p_id_tabela in tabela.id_tabela%type
  )
  return coluna.id_coluna%type
  is

    v_result  coluna.id_coluna%type;

  begin

    select
      c.id_coluna
    into
      v_result
    from
      coluna c
    where
      c.id_tabela = p_id_tabela and
      c.chave_primaria = 'S';

    return v_result;

  end;

end PKG_METADADOS;
/

prompt
prompt Creating package body PKG_NOTIFICACAO
prompt =====================================
prompt
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

prompt
prompt Creating package body PKG_PROCESSAMENTO
prompt =======================================
prompt
create or replace package body PKG_PROCESSAMENTO is

  procedure ESCREVE_LINHA_LOG
  (
    p_log   in out processamento.log%type,
    p_linha in varchar2
  )
  is
  begin

    p_log := nvl(p_log, ' ') || chr(13) || chr(10) || p_linha;

  end;

  procedure ABRE_PROCESSAMENTO
  (
    p_id_processo      in  processamento.id_processo%type,
    p_id_processamento out processamento.id_processamento%type
  )
  is
  begin

    select
      seq_processamento.nextval
    into
      p_id_processamento
    from
      dual;

    insert into processamento
    (
      id_processamento,
      id_processo,
      dat_inicio
    )
    values
    (
      p_id_processamento,
      p_id_processo,
      sysdate
    );

  end;

  procedure FECHA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  )
  is
  begin

    update processamento
    set
      dat_termino = sysdate
    where
      id_processamento = p_id_processamento;

  end;

  procedure PROCESSA_LINHA
  (
    p_qtd_registros      in out processamento.qtd_registros%type,
    p_qtd_registros_erro in out processamento.qtd_registros_erro%type,
    p_log                in out processamento.log%type
  )
  is

    v_c_select_origem              varchar2(4000);
    v_n_select_origem              integer;
    v_c_update_origem              varchar2(4000);
    v_c_select_destino_encontrado  varchar2(4000);
    v_c_select_destino_atualizado  varchar2(4000);
    v_n_select_destino             integer;
    v_c_insert_destino             varchar2(4000);
    v_c_update_destino             varchar2(4000);
    v_n_atualizacao                integer;
    v_n_rows                       integer;
    v_n_i                          integer;
    v_c_valor                      varchar2(4000);
    v_rowid                        rowid;
    v_b_encontrado                 boolean;
    v_b_atualizado                 boolean;
    v_b_incluir                    boolean;
    v_b_alterar                    boolean;
    v_c_erro                       varchar2(4000);

  begin

    -- Monta comandos do destino
    v_c_select_destino_encontrado := pkg_mapeamento.comando_select_destino(pkg_mapeamento.sd_registro_encontrado);
    v_c_select_destino_atualizado := pkg_mapeamento.comando_select_destino(pkg_mapeamento.sd_registro_atualizado);
    v_c_insert_destino := pkg_mapeamento.comando_insert_destino;
    v_c_update_destino := pkg_mapeamento.comando_update_destino;

    if pkg_mapeamento.mapa.origem_tempo = 'S' then

      pkg_tempo.data_inicial := to_date('01/01/1900', 'dd/mm/yyyy');
      pkg_tempo.data_final   := to_date('31/12/2100', 'dd/mm/yyyy');
      pkg_tempo.inicializa;

      pkg_tempo.unidade_tempo := 'D';
      pkg_tempo.incremento    := 1;

      while pkg_tempo.data_atual <= pkg_tempo.data_final loop

        v_c_erro := null;

        v_n_atualizacao := dbms_sql.open_cursor;

        begin

          -- Comando insert no destino
          dbms_sql.parse(v_n_atualizacao, v_c_insert_destino, dbms_sql.native);

          --
          -- Carrega valores das colunas de destino
          --

          for i in 1..pkg_mapeamento.mapa.numero_colunas loop

            v_c_valor := to_char(pkg_tempo.data_atual, nvl(pkg_mapeamento.mapa.colunas(i).formato, 'dd/mm/yyyy'));

            -- Faz transformação
            v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

            -- Faz consistência
            if not pkg_consistencia.consiste_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor, v_c_erro) then

              -- Força erro
              raise_application_error(-20000, v_c_erro);

            end if;

            -- Transfere valor transformado da origem para destino
            dbms_sql.bind_variable(v_n_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

          end loop;

          -- Atualiza tabela de destino
          v_n_rows := dbms_sql.execute(v_n_atualizacao);

        exception

          when others then
            v_c_erro := sqlerrm;

        end;

        dbms_sql.close_cursor(v_n_atualizacao);

        if v_c_erro is not null then

          -- Atualiza quantidade de registros
          p_qtd_registros_erro := p_qtd_registros_erro + 1;

          -- Gera log
          escreve_linha_log(p_log, v_c_erro);

        end if;

        pkg_tempo.proxima_data;

      end loop;

    else

      --
      -- Muda status para "PROCESSANDO"
      --

      v_c_update_origem := pkg_mapeamento.comando_update_origem(pkg_mapeamento.uo_lote);

      v_n_atualizacao := dbms_sql.open_cursor;

      -- Comando update na origem
      dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

      dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_pendente);
      dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_processando);

      -- Atualiza tabela de origem
      v_n_rows := dbms_sql.execute(v_n_atualizacao);

      dbms_sql.close_cursor(v_n_atualizacao);

      -- Monta comandos da origem
      v_c_select_origem := pkg_mapeamento.comando_select_origem(pkg_mapeamento.so_todas_colunas);
      v_c_update_origem := pkg_mapeamento.comando_update_origem(pkg_mapeamento.uo_linha);

      --
      -- Inicia seleção dos dados da origem
      --

      v_n_select_origem := dbms_sql.open_cursor;

      dbms_sql.parse(v_n_select_origem, v_c_select_origem, dbms_sql.native);

      -- Define colunas da consulta na origem
      for i in 1..pkg_mapeamento.mapa.numero_colunas loop
        dbms_sql.define_column(v_n_select_origem, i, v_c_valor, 4000);
      end loop;
      dbms_sql.define_column(v_n_select_origem, pkg_mapeamento.mapa.numero_colunas+1, v_c_valor, 4000);
      dbms_sql.bind_variable_char(v_n_select_origem, ':p_status', pkg_metadados.sa_processando);

      -- Executa select na origem
      v_n_rows := dbms_sql.execute(v_n_select_origem);

      loop

        -- Recebe linha do select na origem
        exit when dbms_sql.fetch_rows(v_n_select_origem) = 0;

        -- Atualiza quantidade de registros
        p_qtd_registros := p_qtd_registros + 1;

        --
        --  Verifica se registro existe no destino
        --

        v_n_select_destino := dbms_sql.open_cursor;

        dbms_sql.parse(v_n_select_destino, v_c_select_destino_encontrado, dbms_sql.native);
        dbms_sql.define_column(v_n_select_destino, 1, v_rowid);

        v_n_i := 1;

        for i in 1..pkg_mapeamento.mapa.numero_colunas loop

          if pkg_mapeamento.mapa.colunas(i).chave_pesquisa = 'S' then

            -- Recebe valor da origem
            dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

            -- Faz transformação
            v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

            -- Transfere valor transformado da origem para destino
            dbms_sql.bind_variable_char(v_n_select_destino, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

            v_n_i := v_n_i + 1;

          end if;

        end loop;

        -- Executa select no destino
        v_n_rows := dbms_sql.execute(v_n_select_destino);

        -- Sinaliza se registro foi encontrado
        v_b_encontrado := (dbms_sql.fetch_rows(v_n_select_destino) > 0);

        -- Obtém rowid do registro de destino
        v_rowid := null;
        if v_b_encontrado then
          dbms_sql.column_value(v_n_select_destino, 1, v_rowid);
        end if;

        dbms_sql.close_cursor(v_n_select_destino);

        v_b_incluir := false;
        v_b_alterar := false;

        -- Caso o registro não tenha sido encontrado no destino...
        if not v_b_encontrado then

          v_b_incluir := true;

        else

          v_n_select_destino := dbms_sql.open_cursor;

          dbms_sql.parse(v_n_select_destino, v_c_select_destino_atualizado, dbms_sql.native);

          for i in 1..pkg_mapeamento.mapa.numero_colunas loop

            -- Recebe valor da origem
            dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

            -- Faz transformação
            v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

            -- Transfere valor transformado da origem para destino
            dbms_sql.bind_variable_char(v_n_select_destino, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

          end loop;

          -- Executa select no destino
          v_n_rows := dbms_sql.execute(v_n_select_destino);

          -- Sinaliza se registro está atualizado
          v_b_atualizado := (dbms_sql.fetch_rows(v_n_select_destino) > 0);

          dbms_sql.close_cursor(v_n_select_destino);

          -- Caso o registro não esteja atualizado no destino...
          if not v_b_atualizado then

            -- Tipo de atualização 1 - alterar
            if pkg_mapeamento.mapa.tipo_atualizacao = pkg_mapeamento.ta_alterar then

              v_b_alterar := true;

            -- Tipo de atualização 2 - incluir
            elsif pkg_mapeamento.mapa.tipo_atualizacao = pkg_mapeamento.ta_incluir then

              v_b_incluir := true;

            end if;

          end if;

        end if;

        -- Caso registro precise ser atualizado...
        if v_b_incluir or v_b_alterar then

          v_c_erro := null;

          v_n_atualizacao := dbms_sql.open_cursor;

          begin

            if v_b_incluir then

              -- Comando insert no destino
              dbms_sql.parse(v_n_atualizacao, v_c_insert_destino, dbms_sql.native);

            elsif v_b_alterar then

              -- Comando update no destino
              dbms_sql.parse(v_n_atualizacao, v_c_update_destino, dbms_sql.native);

              -- Transfere rowid para o comando update
              dbms_sql.bind_variable(v_n_atualizacao, ':p_rowid', v_rowid);

            end if;

            --
            -- Carrega valores das colunas origem x destino
            --

            for i in 1..pkg_mapeamento.mapa.numero_colunas loop

              -- Recebe valor da origem
              dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

              -- Faz transformação
              v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

              -- Faz consistência
              if not pkg_consistencia.consiste_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor, v_c_erro) then

                -- Força erro
                raise_application_error(-20000, v_c_erro);

              end if;

              -- Transfere valor transformado da origem para destino
              dbms_sql.bind_variable(v_n_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

            end loop;

            -- Atualiza tabela de destino
            v_n_rows := dbms_sql.execute(v_n_atualizacao);

          exception

            when others then
              v_c_erro := sqlerrm;

          end;

          dbms_sql.close_cursor(v_n_atualizacao);

          if v_c_erro is not null then

            -- Atualiza quantidade de registros
            p_qtd_registros_erro := p_qtd_registros_erro + 1;

            -- Gera log
            escreve_linha_log(p_log, v_c_erro);

          end if;

        end if;

        v_n_atualizacao := dbms_sql.open_cursor;

        -- Comando update na origem
        dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

        if v_c_erro is not null then
          dbms_sql.bind_variable(v_n_atualizacao, ':p_status', pkg_metadados.sa_com_erro);
        else
          dbms_sql.bind_variable(v_n_atualizacao, ':p_status', pkg_metadados.sa_concluido);
        end if;

        -- Transfere valor do rowid da tabela de origem para comando update
        dbms_sql.column_value(v_n_select_origem, pkg_mapeamento.mapa.numero_colunas+1, v_c_valor);
        dbms_sql.bind_variable(v_n_atualizacao, ':p_rowid', v_c_valor);

        -- Atualiza tabela de origem
        v_n_rows := dbms_sql.execute(v_n_atualizacao);

        dbms_sql.close_cursor(v_n_atualizacao);

      end loop;

      dbms_sql.close_cursor(v_n_select_origem);

    end if;

  end;

  procedure PROCESSA_LOTE
  (
    p_qtd_registros      in out processamento.qtd_registros%type,
    p_qtd_registros_erro in out processamento.qtd_registros_erro%type,
    p_log                in out processamento.log%type
  )
  is

    v_c_select_origem              varchar2(4000);
    v_n_select_origem              integer;
    v_c_update_origem              varchar2(4000);
    v_c_insert_destino             varchar2(4000);
    v_n_atualizacao                integer;
    v_n_rows                       integer;
    v_n_i                          integer;
    v_c_valor                      varchar2(4000);
    v_rowid                        rowid;
    v_b_encontrado                 boolean;
    v_b_atualizado                 boolean;
    v_b_incluir                    boolean;
    v_b_alterar                    boolean;
    v_c_erro                       varchar2(4000);
    v_b_erro                       boolean;

  begin

    v_b_erro := false;

    -- Monta comandos da origem
    v_c_select_origem := pkg_mapeamento.comando_select_origem(pkg_mapeamento.so_todas_colunas);
    v_c_update_origem := pkg_mapeamento.comando_update_origem(pkg_mapeamento.uo_lote);

    -- Monta comandos do destino
    v_c_insert_destino := pkg_mapeamento.comando_insert_destino;

    --
    -- Muda status para "PROCESSANDO"
    --

    v_n_atualizacao := dbms_sql.open_cursor;

    -- Comando update na origem
    dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

    dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_pendente);
    dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_processando);

    -- Atualiza tabela de origem
    v_n_rows := dbms_sql.execute(v_n_atualizacao);

    dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_com_erro);
    dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_processando);

    -- Atualiza tabela de origem
    v_n_rows := dbms_sql.execute(v_n_atualizacao);

    dbms_sql.close_cursor(v_n_atualizacao);

    --
    -- Inicia seleção dos dados da origem
    --

    v_n_select_origem := dbms_sql.open_cursor;

    dbms_sql.parse(v_n_select_origem, v_c_select_origem, dbms_sql.native);

    -- Define colunas da consulta na origem
    for i in 1..pkg_mapeamento.mapa.numero_colunas loop
      dbms_sql.define_column(v_n_select_origem, i, v_c_valor, 4000);
    end loop;

    dbms_sql.bind_variable_char(v_n_select_origem, ':p_status', pkg_metadados.sa_processando);

    -- Executa select na origem
    v_n_rows := dbms_sql.execute(v_n_select_origem);

    loop

      -- Recebe linha do select na origem
      exit when dbms_sql.fetch_rows(v_n_select_origem) = 0;

      -- Atualiza quantidade de registros
      p_qtd_registros := p_qtd_registros + 1;

      v_c_erro := null;

      v_n_atualizacao := dbms_sql.open_cursor;

      begin

        -- Comando insert no destino
        dbms_sql.parse(v_n_atualizacao, v_c_insert_destino, dbms_sql.native);

        --
        -- Carrega valores das colunas origem x destino
        --

        for i in 1..pkg_mapeamento.mapa.numero_colunas loop

          -- Recebe valor da origem
          dbms_sql.column_value(v_n_select_origem, i, v_c_valor);

          -- Faz transformação
          v_c_valor := pkg_transformacao.tranforma_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor);

          -- Faz consistência
          if not pkg_consistencia.consiste_valor(pkg_mapeamento.mapa.colunas(i).id_mapeamento_coluna, v_c_valor, v_c_erro) then

            -- Força erro
            raise_application_error(-20000, v_c_erro);

          end if;

          -- Transfere valor transformado da origem para destino
          dbms_sql.bind_variable(v_n_atualizacao, ':' || pkg_mapeamento.mapa.colunas(i).coluna_destino, v_c_valor);

        end loop;

        -- Atualiza tabela de destino
        v_n_rows := dbms_sql.execute(v_n_atualizacao);

      exception

        when others then
          v_c_erro := sqlerrm;

      end;

      dbms_sql.close_cursor(v_n_atualizacao);

      if v_c_erro is not null then

        -- Atualiza quantidade de registros
        p_qtd_registros_erro := p_qtd_registros_erro + 1;

        -- Gera log
        escreve_linha_log(p_log, v_c_erro);

        v_b_erro := true;

      end if;

    end loop;

    dbms_sql.close_cursor(v_n_select_origem);

    if v_b_erro then

      --
      -- Muda status para "COM ERRO"
      --

      v_n_atualizacao := dbms_sql.open_cursor;

      -- Comando update na origem
      dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

      dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_processando);
      dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_com_erro);

      -- Atualiza tabela de origem
      v_n_rows := dbms_sql.execute(v_n_atualizacao);

      dbms_sql.close_cursor(v_n_atualizacao);

    else

      --
      -- Muda status para "CONCLUÍDO"
      --

      v_n_atualizacao := dbms_sql.open_cursor;

      -- Comando update na origem
      dbms_sql.parse(v_n_atualizacao, v_c_update_origem, dbms_sql.native);

      dbms_sql.bind_variable(v_n_atualizacao, ':p_status',      pkg_metadados.sa_processando);
      dbms_sql.bind_variable(v_n_atualizacao, ':p_status_novo', pkg_metadados.sa_concluido);

      -- Atualiza tabela de origem
      v_n_rows := dbms_sql.execute(v_n_atualizacao);

      dbms_sql.close_cursor(v_n_atualizacao);

    end if;

  end;

  procedure EXECUTA_PROCESSAMENTO
  (
    p_id_processamento in processamento.id_processamento%type
  )
  is

    cursor c_processamento
    (
      p_id_processamento in processamento.id_processamento%type
    )
    is
      select
        p2.id_processo,
        p2.id_mapeamento,
        m.tipo_destino
      from
        mapeamento m,
        processo p2,
        processamento p1
      where
        p1.id_processamento = p_id_processamento and
        p2.id_processo = p1.id_processo and
        m.id_mapeamento = p2.id_mapeamento;

    r_processamento  c_processamento%rowtype;

    v_qtd_registros        processamento.qtd_registros%type;
    v_qtd_registros_erro   processamento.qtd_registros_erro%type;
    v_log                  processamento.log%type;

  begin

    open c_processamento (p_id_processamento);

    fetch c_processamento into r_processamento;

    if c_processamento%found then

      v_qtd_registros      := 0;
      v_qtd_registros_erro := 0;
      v_log                := null;

      begin
      
        -- Carrega mapeamento para a memória
        pkg_mapeamento.carrega_mapeamento(r_processamento.id_mapeamento);
  
        -- Caso tipo de destino seja cubo...
        if r_processamento.tipo_destino = pkg_mapeamento.td_cubo then
  
          -- Processa registros em lote
          processa_lote(v_qtd_registros, v_qtd_registros_erro, v_log);
  
        else
  
          -- Processa cada registro
          processa_linha(v_qtd_registros, v_qtd_registros_erro, v_log);
  
        end if;
  
        -- Descarrega mapeamento da memória
        pkg_mapeamento.descarrega_mapeamento;

      exception
      
        when others then
          escreve_linha_log(v_log, sqlerrm);
        
      end;
      
      -- Atualiza registro de processamento
      update processamento
      set
        qtd_registros      = v_qtd_registros,
        qtd_registros_erro = v_qtd_registros_erro,
        log                = v_log
      where
        id_processamento = p_id_processamento;

      -- Atualiza registro de processo
      update processo
      set
        qtd_execucoes      = nvl(qtd_execucoes, 0) + 1,
        qtd_execucoes_erro = nvl(qtd_execucoes_erro, 0) + case when nvl(v_qtd_registros_erro, 0) <> 0 then 1 else 0 end
      where
        id_processo = r_processamento.id_processo;

    end if;

    close c_processamento;

  end;

end PKG_PROCESSAMENTO;
/

prompt
prompt Creating package body PKG_PROCESSO
prompt ==================================
prompt
create or replace package body PKG_PROCESSO is

  procedure EXECUTA_PROCESSO
  (
    p_id_processo in processo.id_processo%type
  )
  is

    v_id_processamento  processamento.id_processamento%type;

  begin

    -- Processo em execução
    update processo
    set
      executando = 'S'
    where
      id_processo = p_id_processo;

    -- Abre processamento
    pkg_processamento.abre_processamento(p_id_processo, v_id_processamento);

    commit;

    -- Executa processamento
    pkg_processamento.executa_processamento(v_id_processamento);

    -- Fecha processamento
    pkg_processamento.fecha_processamento(v_id_processamento);

    -- Processo executado
    update processo
    set
      executando          = 'N',
      dat_ultima_execucao = sysdate
    where
      id_processo = p_id_processo;

    commit;

  end;

  procedure LIMPA_PROCESSAMENTOS
  (
    p_id_processo in processo.id_processo%type
  )
  is
  begin

    -- Apaga processamentos
    delete from processamento
    where
      id_processo = p_id_processo;

    -- Atualiza processo
    update processo
    set
      dat_ultima_execucao   = null,
      qtd_execucoes         = null,
      qtd_execucoes_erro    = null
    where
      id_processo = p_id_processo;

  end;

end PKG_PROCESSO;
/

prompt
prompt Creating package body PKG_TABELA
prompt ================================
prompt
create or replace package body PKG_TABELA is

  procedure INCLUI_TABELA
  (
    p_nome_tabela  in tabela.nome_tabela%type,
    p_proprietario in tabela.proprietario%type
  )
  is
  begin

    insert into tabela
    (
      id_tabela,
      nome_tabela,
      proprietario
    )
    values
    (
      seq_tabela.nextval,
      p_nome_tabela,
      p_proprietario
    );

  end;

  procedure GRAVA_TABELA
  (
    p_nome_tabela  in tabela.nome_tabela%type,
    p_proprietario in tabela.proprietario%type
  )
  is

    v_id_tabela  tabela.id_tabela%type;

  begin

    begin

      select
        id_tabela
      into
        v_id_tabela
      from
        tabela
      where
        nome_tabela = p_nome_tabela and
        proprietario = p_proprietario;

    exception

      when NO_DATA_FOUND then
        null;

    end;

    if v_id_tabela is null then

      inclui_tabela(p_nome_tabela, p_proprietario);

    end if;

  end;

  procedure POPULA_TABELAS
  (
    p_proprietario in tabela.proprietario%type
  )
  is

    cursor c_tabela
    (
      p_proprietario in tabela.proprietario%type
    )
    is
      select
        t.owner,
        t.table_name
      from
        all_tables t
      where
        t.owner = p_proprietario;

    r_tabela  c_tabela%rowtype;

    v_id_tabela  tabela.id_tabela%type;

  begin

    open c_tabela (p_proprietario);

    loop

      fetch c_tabela into r_tabela;

      exit when c_tabela%notfound;

      grava_tabela(r_tabela.table_name, r_tabela.owner);

      begin

      select
        id_tabela
      into
        v_id_tabela
      from
        tabela
      where
        nome_tabela = r_tabela.table_name and
        proprietario = r_tabela.owner;

      exception

        when NO_DATA_FOUND then
          null;

      end;

      pkg_coluna.popula_colunas(v_id_tabela);

    end loop;

    close c_tabela;

  end;

end PKG_TABELA;
/

prompt
prompt Creating package body PKG_TEMPO
prompt ===============================
prompt
create or replace package body PKG_TEMPO is

  procedure inicializa
  is
  begin

    data_atual := data_inicial;

  end;

  procedure proxima_data
  is
  begin

    if unidade_tempo = 'M' then

      data_atual := add_months(data_atual, incremento);

    elsif unidade_tempo = 'A' then

      data_atual := data_atual + (365 * incremento);

    else

      data_atual := data_atual + incremento;

    end if;

  end;

end PKG_TEMPO;
/

prompt
prompt Creating package body PKG_TRANSFORMACAO
prompt =======================================
prompt
create or replace package body PKG_TRANSFORMACAO is

  function TRANFORMA_VALOR
  (
    p_id_mapeamento_coluna in transformacao.id_mapeamento_coluna%type,
    p_valor_coluna         in transformacao.valor_origem%type
  )
  return transformacao.valor_destino%type
  is

    cursor c_transformacao
    (
      p_id_mapeamento_coluna in transformacao.id_mapeamento_coluna%type,
      p_valor_coluna         in transformacao.valor_origem%type
    )
    is
      select
        t.valor_destino
      from
        transformacao t
      where
        t.id_mapeamento_coluna = p_id_mapeamento_coluna and
        t.valor_origem = p_valor_coluna;

    r_transformacao  c_transformacao%rowtype;

    v_result  transformacao.valor_destino%type;

  begin

    v_result := p_valor_coluna;

    open c_transformacao (p_id_mapeamento_coluna, v_result);

    fetch c_transformacao into r_transformacao;

    if c_transformacao%found then

      v_result := r_transformacao.valor_destino;

    end if;

    close c_transformacao;

    return v_result;

  end;

end PKG_TRANSFORMACAO;
/

prompt
prompt Creating trigger TRG_IUD_B_R_PROCESSO
prompt =====================================
prompt
create or replace trigger TRG_IUD_B_R_PROCESSO
  before insert or update or delete on processo  
  for each row
declare
begin

  -- Caso haja mudança na data da última execução...
  if :new.dat_ultima_execucao <> :old.dat_ultima_execucao then
  
    if :new.dat_ultima_execucao is not null then
    
      -- Calcula data da próxima execução
      :new.dat_proxima_execucao := :new.dat_ultima_execucao + ((:new.intervalo_minutos / 60) / 24);
    
    end if;
  
  end if;
  
end TRG_IUD_B_R_PROCESSO;
/


spool off
