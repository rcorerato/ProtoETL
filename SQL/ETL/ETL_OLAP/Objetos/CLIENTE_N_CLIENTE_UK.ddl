/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : UNIQUE KEY
-- Generated Object Name     : CLIENTE
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


ALTER TABLE "CLIENTE" ADD 
CONSTRAINT "CLIENTE_N_CLIENTE_UK" UNIQUE(
"CLIENTE_ID");

