create or replace package PKG_PREVISAO_CAIXA is

  -- Author  : RODRIGO
  -- Created : 29/07/2006 22:59:24
  -- Purpose : 

  function inclui_previsao_caixa
  (
    p_id_conta_contabil  in previsao_caixa.id_conta_contabil%type,
    p_data_vencimento    in previsao_caixa.data_vencimento%type,
    p_id_entidade        in previsao_caixa.id_entidade%type,
    p_valor              in previsao_caixa.valor%type,
    p_id_lancamento_fixo in previsao_caixa.id_lancamento_fixo%type
  )
  return previsao_caixa.id_previsao_caixa%type;

  procedure inclui_lancamentos_fixos
  (
    p_n_mes in integer,
    p_n_ano in integer
  );

  procedure inclui_fluxo_caixa
  (
    p_id_previsao_caixa           in fluxo_caixa.id_previsao_caixa%type,
    p_data_pagamento              in fluxo_caixa.data_pagamento%type,
    p_valor                       in fluxo_caixa.valor%type,
    p_id_conta_contabil_excedente in fluxo_caixa.id_conta_contabil%type
  );

  procedure executa_liquidacao
  (
    p_id_previsao_caixa in previsao_caixa.id_previsao_caixa%type,
    p_data_liquidacao   in previsao_caixa.data_liquidacao%type
  );
  
  function total_pago
  (
    p_id_previsao_caixa in previsao_caixa.id_previsao_caixa%type
  )
  return number;
  
end PKG_PREVISAO_CAIXA;
/
create or replace package body PKG_PREVISAO_CAIXA is

  function inclui_previsao_caixa
  (
    p_id_conta_contabil  in previsao_caixa.id_conta_contabil%type,
    p_data_vencimento    in previsao_caixa.data_vencimento%type,
    p_id_entidade        in previsao_caixa.id_entidade%type,
    p_valor              in previsao_caixa.valor%type,
    p_id_lancamento_fixo in previsao_caixa.id_lancamento_fixo%type
  )
  return previsao_caixa.id_previsao_caixa%type
  is
  
    v_id_previsao_caixa  previsao_caixa.id_previsao_caixa%type;
  
  begin

    select
      seq_previsao_caixa.nextval
    into
      v_id_previsao_caixa
    from
      dual;
  
    insert into previsao_caixa
    (
      id_previsao_caixa,
      id_conta_contabil,
      data_vencimento,
      id_entidade,
      valor,
      id_lancamento_fixo
    )
    values
    (
      v_id_previsao_caixa,
      p_id_conta_contabil,
      p_data_vencimento,
      p_id_entidade,
      p_valor,
      p_id_lancamento_fixo  
    );

    return v_id_previsao_caixa;
  
  end;
  
  procedure inclui_lancamentos_fixos
  (
    p_n_mes in integer,
    p_n_ano in integer
  )
  is
  
    cursor c_lancamento_fixo
    is
      select
        id_lancamento_fixo
      from
        lancamento_fixo
      where
        ativo = 'S';
  
    r_lancamento_fixo  c_lancamento_fixo%rowtype;
  
  begin
  
    open c_lancamento_fixo;
    
    loop
    
      fetch c_lancamento_fixo into r_lancamento_fixo;
      
      exit when c_lancamento_fixo%notfound;
    
      pkg_lancamento_fixo.lanca_previsao_caixa(r_lancamento_fixo.id_lancamento_fixo, p_n_mes, p_n_ano);
    
    end loop;
    
    close c_lancamento_fixo;
  
  end;

  procedure inclui_fluxo_caixa
  (
    p_id_previsao_caixa           in fluxo_caixa.id_previsao_caixa%type,
    p_data_pagamento              in fluxo_caixa.data_pagamento%type,
    p_valor                       in fluxo_caixa.valor%type,
    p_id_conta_contabil_excedente in fluxo_caixa.id_conta_contabil%type
  )
  is
  
    v_id_fluxo_caixa   fluxo_caixa.id_fluxo_caixa%type;
    v_valor            number;
    v_valor_previsto   number;
    v_valor_pago       number;
    v_valor_excedente  number;
  
  begin
  
    v_valor := nvl(p_valor, 0);
  
    begin
    
      select
        pc.valor,
        sum(fc.valor)
      into
        v_valor_previsto,
        v_valor_pago
      from
        fluxo_caixa    fc,
        previsao_caixa pc
      where
        pc.id_previsao_caixa = p_id_previsao_caixa and
        fc.id_previsao_caixa(+) = pc.id_previsao_caixa
      group by
        pc.valor;
    
    exception
    
      when NO_DATA_FOUND then
        null;
    
    end;
  
    v_valor_excedente := (nvl(v_valor_pago, 0) + nvl(p_valor, 0)) - nvl(v_valor_previsto, 0);

    if (v_valor_excedente > 0) and (p_id_conta_contabil_excedente is not null) then

      v_valor := v_valor - v_valor_excedente;
  
      v_id_fluxo_caixa := pkg_fluxo_caixa.inclui_fluxo_caixa(p_id_previsao_caixa, p_data_pagamento, v_valor_excedente, p_id_conta_contabil_excedente);
    
    end if;
  
    v_id_fluxo_caixa := pkg_fluxo_caixa.inclui_fluxo_caixa(p_id_previsao_caixa, p_data_pagamento, v_valor, null);
    
  end;

  procedure executa_liquidacao
  (
    p_id_previsao_caixa in previsao_caixa.id_previsao_caixa%type,
    p_data_liquidacao   in previsao_caixa.data_liquidacao%type
  )
  is
  begin
  
    update previsao_caixa
    set
      data_liquidacao = p_data_liquidacao
    where
      id_previsao_caixa = p_id_previsao_caixa;
  
  end;
  
  function total_pago
  (
    p_id_previsao_caixa in previsao_caixa.id_previsao_caixa%type
  )
  return number
  is
  
    v_n_valor_pago  number;
  
  begin
  
    begin
    
      select 
        sum(fc.valor)
      into
        v_n_valor_pago
      from
        fluxo_caixa fc
      where
        fc.id_previsao_caixa = p_id_previsao_caixa;
    
    exception
    
      when NO_DATA_FOUND then
        null;
    
    end;
  
    return v_n_valor_pago;
  
  end;
  
end PKG_PREVISAO_CAIXA;
/
