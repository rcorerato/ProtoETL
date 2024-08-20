create or replace procedure PRC_EXECUTA_PROCESSO
(
  p_id_processo in processo.id_processo%type
)
is
begin

  pkg_processo.executa_processo(p_id_processo);

end PRC_EXECUTA_PROCESSO;
/
