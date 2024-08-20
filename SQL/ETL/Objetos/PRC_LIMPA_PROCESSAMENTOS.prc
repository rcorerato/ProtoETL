create or replace procedure PRC_LIMPA_PROCESSAMENTOS 
(
  p_id_processo in processo.id_processo%type
)
is
begin

  pkg_processo.limpa_processamentos(p_id_processo);
  
end PRC_LIMPA_PROCESSAMENTOS;
/
