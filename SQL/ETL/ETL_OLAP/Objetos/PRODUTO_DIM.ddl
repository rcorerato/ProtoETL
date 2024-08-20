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
