create or replace procedure PRC_EXECUTA_LIQUIDACAO 
(
  p_id_previsao_caixa in previsao_caixa.id_previsao_caixa%type,
  p_data_liquidacao   in previsao_caixa.data_liquidacao%type
)
is
begin
  
  pkg_previsao_caixa.executa_liquidacao(p_id_previsao_caixa, p_data_liquidacao);
  
end PRC_EXECUTA_LIQUIDACAO;
/
