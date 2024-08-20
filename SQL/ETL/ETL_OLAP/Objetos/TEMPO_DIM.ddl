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
