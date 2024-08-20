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
