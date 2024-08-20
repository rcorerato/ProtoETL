/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "TEMPO"
 (
"ANO_ANO" NUMBER,
"ANO_ID" NUMBER,
"DIA_DATA" DATE,
"DIA_DIA" NUMBER,
"DIA_ID" NUMBER,
"DIA_SMART_KEY" NUMBER,
"MES_ID" NUMBER,
"MES_MES" NUMBER,
"MES_NOME_MES" VARCHAR2(9),
"TRIMESTRE_ID" NUMBER,
"TRIMESTRE_TRIMESTRE" NUMBER)
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : PRIMARY KEY
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "TEMPO" ADD 
CONSTRAINT "TEMPO_SMART_KEY_PK" PRIMARY KEY(
"DIA_SMART_KEY");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "TEMPO" ADD 
CONSTRAINT "TEMPO_ACTUAL_DATE_UK" UNIQUE(
"DIA_DATA");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "TEMPO" ADD 
CONSTRAINT "TEMPO_DAY_L_UK" UNIQUE(
"DIA_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : DIMENSION
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


 CREATE  DIMENSION "TEMPO_DIM" 
LEVEL  "N_TRIMESTRE" IS  "TEMPO"."TRIMESTRE_ID"
LEVEL  "N_ANO" IS  "TEMPO"."ANO_ID"
LEVEL  "N_MES" IS  "TEMPO"."MES_ID"
LEVEL  "N_DIA" IS  "TEMPO"."DIA_SMART_KEY"
HIERARCHY "H_DMA"(
"N_DIA" CHILD OF 
"N_MES" CHILD OF 
"N_ANO" ) 
HIERARCHY "H_DMTA"(
"N_DIA" CHILD OF 
"N_MES" CHILD OF 
"N_TRIMESTRE" CHILD OF 
"N_ANO" ) 
ATTRIBUTE "N_TRIMESTRE" DETERMINES ("TRIMESTRE_TRIMESTRE" )
ATTRIBUTE "N_ANO" DETERMINES ("ANO_ANO" )
ATTRIBUTE "N_MES" DETERMINES ("MES_MES","MES_NOME_MES" )
ATTRIBUTE "N_DIA" DETERMINES ("DIA_DATA","DIA_DIA","DIA_ID" )
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "TEMPO" ESTIMATE STATISTICS SAMPLE 99 PERCENT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : INSERT
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;



SELECT wb_rt_week_seq.NEXTVAL FROM dual;
SELECT wb_rt_month_seq.NEXTVAL FROM dual;
SELECT wb_rt_quarter_seq.NEXTVAL FROM dual;
SELECT wb_rt_year_seq.NEXTVAL FROM dual;

INSERT INTO "TEMPO" (
    "ANO_ANO",
    "ANO_ID",
    "DIA_DATA",
    "DIA_DIA",
    "DIA_ID",
    "DIA_SMART_KEY",
    "MES_ID",
    "MES_MES",
    "MES_NOME_MES",
    "TRIMESTRE_ID",
    "TRIMESTRE_TRIMESTRE"
  ) SELECT 
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
  FROM wb_rt_time_src
  WHERE (to_date('01-01-1990','MM-DD-YYYY')+ID_COL)<=to_date('12-31-2000','MM-DD-YYYY')
;
COMMIT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : PRODUTO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "PRODUTO"
 (
"PRODUTO_CODIGO" VARCHAR2(20),
"PRODUTO_ID" NUMBER,
"PRODUTO_NOME" VARCHAR2(100),
"FABRICANTE_CODIGO" VARCHAR2(20),
"FABRICANTE_ID" NUMBER,
"FABRICANTE_NOME" VARCHAR2(100))
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : PRODUTO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "PRODUTO" ADD 
CONSTRAINT "PRODUTO_N_PRODUTO_UK" UNIQUE(
"PRODUTO_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : PRODUTO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "PRODUTO" ADD 
CONSTRAINT "PRODUTO_N_FABRICANTE_UK" UNIQUE(
"FABRICANTE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : DIMENSION
-- Generated Object Name     : PRODUTO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


 CREATE  DIMENSION "PRODUTO_DIM" 
LEVEL  "N_FABRICANTE" IS  "PRODUTO"."FABRICANTE_ID"
LEVEL  "N_PRODUTO" IS  "PRODUTO"."PRODUTO_ID"
HIERARCHY "H_FABRICANTE"(
"N_PRODUTO" CHILD OF 
"N_FABRICANTE" ) 
HIERARCHY "H_PRODUTO"(
"N_FABRICANTE" CHILD OF 
"N_PRODUTO" ) 
ATTRIBUTE "N_FABRICANTE" DETERMINES ("FABRICANTE_CODIGO","FABRICANTE_NOME" )
ATTRIBUTE "N_PRODUTO" DETERMINES ("PRODUTO_CODIGO","PRODUTO_NOME" )
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:49 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : PRODUTO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "PRODUTO" ESTIMATE STATISTICS SAMPLE 99 PERCENT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : FAMILIA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "FAMILIA"
 (
"FAMILIA_CODIGO" VARCHAR2(20),
"FAMILIA_ID" NUMBER,
"FAMILIA_NOME" VARCHAR2(100))
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : FAMILIA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FAMILIA" ADD 
CONSTRAINT "FAMILIA_N_FAMILIA_UK" UNIQUE(
"FAMILIA_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : DIMENSION
-- Generated Object Name     : FAMILIA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


 CREATE  DIMENSION "FAMILIA_DIM" 
LEVEL  "N_FAMILIA" IS  "FAMILIA"."FAMILIA_ID"
ATTRIBUTE "N_FAMILIA" DETERMINES ("FAMILIA_CODIGO","FAMILIA_NOME" )
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : FAMILIA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "FAMILIA" ESTIMATE STATISTICS SAMPLE 99 PERCENT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : LOCALIZACAO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "LOCALIZACAO"
 (
"CIDADE_CODIGO" VARCHAR2(20),
"CIDADE_ID" NUMBER,
"CIDADE_NOME" VARCHAR2(100),
"ESTADO_CODIGO" VARCHAR2(20),
"ESTADO_ID" NUMBER,
"ESTADO_NOME" VARCHAR2(100),
"PAIS_CODIGO" VARCHAR2(20),
"PAIS_ID" NUMBER,
"PAIS_NOME" VARCHAR2(100))
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : LOCALIZACAO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "LOCALIZACAO" ADD 
CONSTRAINT "LOCALIZ_N_CIDADE_UK" UNIQUE(
"CIDADE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : LOCALIZACAO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "LOCALIZACAO" ADD 
CONSTRAINT "LOCALIZ_N_ESTADO_UK" UNIQUE(
"ESTADO_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : LOCALIZACAO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "LOCALIZACAO" ADD 
CONSTRAINT "LOCALIZ_N_PAIS_UK" UNIQUE(
"PAIS_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : DIMENSION
-- Generated Object Name     : LOCALIZACAO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


 CREATE  DIMENSION "LOCALIZACAO_DIM" 
LEVEL  "N_PAIS" IS  "LOCALIZACAO"."PAIS_ID"
LEVEL  "N_CIDADE" IS  "LOCALIZACAO"."CIDADE_ID"
LEVEL  "N_ESTADO" IS  "LOCALIZACAO"."ESTADO_ID"
HIERARCHY "H_ESTADO"(
"N_ESTADO" CHILD OF 
"N_PAIS" ) 
HIERARCHY "H_CIDADE"(
"N_CIDADE" CHILD OF 
"N_ESTADO" CHILD OF 
"N_PAIS" ) 
ATTRIBUTE "N_PAIS" DETERMINES ("PAIS_CODIGO","PAIS_NOME" )
ATTRIBUTE "N_CIDADE" DETERMINES ("CIDADE_CODIGO","CIDADE_NOME" )
ATTRIBUTE "N_ESTADO" DETERMINES ("ESTADO_CODIGO","ESTADO_NOME" )
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : LOCALIZACAO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "LOCALIZACAO" ESTIMATE STATISTICS SAMPLE 99 PERCENT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : REPRESENTANTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "REPRESENTANTE"
 (
"REPRESENTANTE_CODIGO" VARCHAR2(20),
"REPRESENTANTE_ID" NUMBER,
"REPRESENTANTE_NOME" VARCHAR2(100))
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : REPRESENTANTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "REPRESENTANTE" ADD 
CONSTRAINT "REPRESE_N_REPRESENTANTE_UK" UNIQUE(
"REPRESENTANTE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : DIMENSION
-- Generated Object Name     : REPRESENTANTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


 CREATE  DIMENSION "REPRESENTANTE_DIM" 
LEVEL  "N_REPRESENTANTE" IS  "REPRESENTANTE"."REPRESENTANTE_ID"
ATTRIBUTE "N_REPRESENTANTE" DETERMINES ("REPRESENTANTE_CODIGO","REPRESENTANTE_NOME" )
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : REPRESENTANTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "REPRESENTANTE" ESTIMATE STATISTICS SAMPLE 99 PERCENT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : CLIENTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "CLIENTE"
 (
"CLIENTE_CODIGO" VARCHAR2(20),
"CLIENTE_ID" NUMBER,
"CLIENTE_NOME" VARCHAR2(100))
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : CLIENTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "CLIENTE" ADD 
CONSTRAINT "CLIENTE_N_CLIENTE_UK" UNIQUE(
"CLIENTE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : DIMENSION
-- Generated Object Name     : CLIENTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


 CREATE  DIMENSION "CLIENTE_DIM" 
LEVEL  "N_CLIENTE" IS  "CLIENTE"."CLIENTE_ID"
ATTRIBUTE "N_CLIENTE" DETERMINES ("CLIENTE_CODIGO","CLIENTE_NOME" )
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : CLIENTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "CLIENTE" ESTIMATE STATISTICS SAMPLE 99 PERCENT;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : TABLE
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "FATO_VENDA"
 (
"CIDADE_ID" NUMBER,
"CLIENTE_ID" NUMBER,
"DIA_ID" NUMBER,
"FAMILIA_ID" NUMBER,
"PRODUTO_ID" NUMBER,
"QUANTIDADE" NUMBER,
"REPRESENTANTE_ID" NUMBER,
"VALOR" NUMBER)
TABLESPACE "USERS" 
  PARALLEL 
  LOGGING 
;


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "SEG_UK_FATO_VENDA" UNIQUE(
"CLIENTE_ID", "REPRESENTANTE_ID", "PRODUTO_ID", "FAMILIA_ID", "CIDADE_ID", "DIA_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : FOREIGN KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "FK_FATO_VENDA_6115_1" FOREIGN KEY (
"CLIENTE_ID")
REFERENCES "CLIENTE"("CLIENTE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : FOREIGN KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "FK_FATO_VENDA_6222_1" FOREIGN KEY (
"REPRESENTANTE_ID")
REFERENCES "REPRESENTANTE"("REPRESENTANTE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : FOREIGN KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "FK_FATO_VENDA_6240_1" FOREIGN KEY (
"PRODUTO_ID")
REFERENCES "PRODUTO"("PRODUTO_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : FOREIGN KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "FK_FATO_VENDA_6258_1" FOREIGN KEY (
"FAMILIA_ID")
REFERENCES "FAMILIA"("FAMILIA_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : FOREIGN KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "FK_FATO_VENDA_6276_1" FOREIGN KEY (
"CIDADE_ID")
REFERENCES "LOCALIZACAO"("CIDADE_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : FOREIGN KEY
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "FATO_VENDA" ADD 
CONSTRAINT "FK_FATO_VENDA_6387_1" FOREIGN KEY (
"DIA_ID")
REFERENCES "TEMPO"("DIA_ID");


/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : OPTIONAL
-- Generated Object Name     : FATO_VENDA
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ANALYZE TABLE "FATO_VENDA" ESTIMATE STATISTICS SAMPLE 99 PERCENT;

