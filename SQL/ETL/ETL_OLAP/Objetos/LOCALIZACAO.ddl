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

