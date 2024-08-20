prompt Criando função...
declare

  v_id_funcao  number;

begin

  v_id_funcao := pkg_udf_funcao.novo('CALCULO_ICMS', 'Calcula valor do ICMS', 'begin valor_imposto := valor_base * (aliquota / 100); end;');
  pkg_udf_funcao.adiciona_parametro_numerico(v_id_funcao, 'VALOR_BASE');
  pkg_udf_funcao.adiciona_parametro_numerico(v_id_funcao, 'ALIQUOTA');
  pkg_udf_funcao.adiciona_parametro_numerico(v_id_funcao, 'VALOR_IMPOSTO');

end;
/

commit;

var v_n_valor_imposto number;

prompt Executando função...
declare

  v_id_funcao         number;
  v_id_processamento  number;

begin

  :v_n_valor_base := 10000;
  :v_n_aliquota   := 18;

  v_id_funcao := pkg_udf_funcao.recupera_id('CALCULO_ICMS');

  v_id_processamento := pkg_udf_processamento.novo(v_id_funcao);
  pkg_udf_processamento.define_entrada_numerico(v_id_processamento, 'VALOR_BASE', :v_n_valor_base);
  pkg_udf_processamento.define_entrada_numerico(v_id_processamento, 'ALIQUOTA',   :v_n_aliquota);

  pkg_udf_processamento.executa_processamento(v_id_processamento);

  :v_n_valor_imposto := pkg_udf_processamento.recupera_valor_numerico(v_id_processamento, 'VALOR_IMPOSTO');

end;
/

commit;
