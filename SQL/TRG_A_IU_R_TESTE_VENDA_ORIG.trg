create or replace trigger TRG_A_IU_R_TESTE_VENDA_ORIG
  before insert or update on teste_venda_origem  
  for each row
declare
begin
  
  :new.status_atualizacao := '0';
  
end TRG_A_IU_R_TESTE_VENDA_ORIG;
/
