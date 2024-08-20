create or replace trigger TRG_IUD_B_R_PROCESSO
  before insert or update or delete on processo  
  for each row
declare
begin

  -- Caso haja mudança na data da última execução...
  if :new.dat_ultima_execucao <> :old.dat_ultima_execucao then
  
    if :new.dat_ultima_execucao is not null then
    
      -- Calcula data da próxima execução
      :new.dat_proxima_execucao := :new.dat_ultima_execucao + ((:new.intervalo_minutos / 60) / 24);
    
    end if;
  
  end if;
  
end TRG_IUD_B_R_PROCESSO;
/
