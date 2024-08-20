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
