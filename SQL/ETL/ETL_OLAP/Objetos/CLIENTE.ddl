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

