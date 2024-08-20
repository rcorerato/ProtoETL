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
