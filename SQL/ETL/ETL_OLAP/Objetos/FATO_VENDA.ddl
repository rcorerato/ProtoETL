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

