/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 9.0.2.62.3 
-- Created Date              : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Modified Date             : Wed Dec 10 06:38:50 GMT-02:00 2008
-- Created By                : DW
-- Modified By               : DW
-- Generated Object Type     : INSERT
-- Generated Object Name     : TEMPO
-- Comments                  : 
-- Copyright(c) 1999-2001 Oracle Corporation.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;



SELECT wb_rt_week_seq.NEXTVAL FROM dual;
SELECT wb_rt_month_seq.NEXTVAL FROM dual;
SELECT wb_rt_quarter_seq.NEXTVAL FROM dual;
SELECT wb_rt_year_seq.NEXTVAL FROM dual;

INSERT INTO "TEMPO" (
    "ANO_ANO",
    "ANO_ID",
    "DIA_DATA",
    "DIA_DIA",
    "DIA_ID",
    "DIA_SMART_KEY",
    "MES_ID",
    "MES_MES",
    "MES_NOME_MES",
    "TRIMESTRE_ID",
    "TRIMESTRE_TRIMESTRE"
  ) SELECT 
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
  FROM wb_rt_time_src
  WHERE (to_date('01-01-1990','MM-DD-YYYY')+ID_COL)<=to_date('12-31-2000','MM-DD-YYYY')
;
COMMIT;
