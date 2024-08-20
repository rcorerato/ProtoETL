create or replace package PKG_FLUXO_CAIXA is

  -- Author  : RODRIGO
  -- Created : 30/07/2006 01:28:26
  -- Purpose : 
  
  function inclui_fluxo_caixa
  (
    p_id_previsao_caixa  in fluxo_caixa.id_previsao_caixa%type,
    p_data_pagamento     in fluxo_caixa.data_pagamento%type,
    p_valor              in fluxo_caixa.valor%type,
    p_id_conta_contabil  in fluxo_caixa.id_conta_contabil%type
  )
  return fluxo_caixa.id_fluxo_caixa%type;

end PKG_FLUXO_CAIXA;
/
create or replace package body PKG_FLUXO_CAIXA is

  function inclui_fluxo_caixa
  (
    p_id_previsao_caixa in fluxo_caixa.id_previsao_caixa%type,
    p_data_pagamento    in fluxo_caixa.data_pagamento%type,
    p_valor             in fluxo_caixa.valor%type,
    p_id_conta_contabil in fluxo_caixa.id_conta_contabil%type
  )
  return fluxo_caixa.id_fluxo_caixa%type
  is
  
    v_id_fluxo_caixa     fluxo_caixa.id_fluxo_caixa%type;
    v_id_conta_contabil  fluxo_caixa.id_conta_contabil%type;
  
  begin

    v_id_conta_contabil := p_id_conta_contabil;
  
    if v_id_conta_contabil is null then
    
      begin
      
        select
          id_conta_contabil
        into
          v_id_conta_contabil
        from
          previsao_caixa
        where
          id_previsao_caixa = p_id_previsao_caixa;
      
      exception
      
        when NO_DATA_FOUND then
          null;
      
      end;
    
    end if;
  
    select
      seq_fluxo_caixa.nextval
    into
      v_id_fluxo_caixa
    from
      dual;
  
    insert into fluxo_caixa
    (
      id_fluxo_caixa,
      id_previsao_caixa,
      data_pagamento,
      valor,
      id_conta_contabil
    )
    values
    (
      v_id_fluxo_caixa,
      p_id_previsao_caixa,
      p_data_pagamento,
      p_valor,
      v_id_conta_contabil
    );

    return v_id_fluxo_caixa;
  
  end;

end PKG_FLUXO_CAIXA;
/
