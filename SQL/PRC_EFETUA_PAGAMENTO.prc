create or replace procedure PRC_EFETUA_PAGAMENTO 
(
  p_id_previsao_caixa in fluxo_caixa.id_previsao_caixa%type,
  p_data_pagamento in fluxo_caixa.data_pagamento%type, 
  p_valor in fluxo_caixa.valor%type, 
  p_id_conta_contabil_excedente in fluxo_caixa.id_conta_contabil%type
)
is
begin
  
  pkg_previsao_caixa.inclui_fluxo_caixa(p_id_previsao_caixa, p_data_pagamento, p_valor, p_id_conta_contabil_excedente);
  
end PRC_EFETUA_PAGAMENTO;
/
