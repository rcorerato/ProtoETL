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

