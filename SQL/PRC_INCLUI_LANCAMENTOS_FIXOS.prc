create or replace procedure PRC_INCLUI_LANCAMENTOS_FIXOS 
(
  p_n_mes in integer,
  p_n_ano in integer  
)
is
begin
  
  pkg_previsao_caixa.inclui_lancamentos_fixos(p_n_mes, p_n_ano);
  
end PRC_INCLUI_LANCAMENTOS_FIXOS;
/
