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

