create or replace package PKG_LANCAMENTO_FIXO is

  -- Author  : RODRIGO
  -- Created : 30/07/2006 01:01:54
  -- Purpose : 
  
  procedure lanca_previsao_caixa
  (
    p_id_lancamento_fixo in lancamento_fixo.id_lancamento_fixo%type,
    p_n_mes              in integer,
    p_n_ano              in integer
  );

end PKG_LANCAMENTO_FIXO;
/
create or replace package body PKG_LANCAMENTO_FIXO is

  function existe_previsao_caixa
  (
    p_id_lancamento_fixo in previsao_caixa.id_lancamento_fixo%type,
    p_data_vencimento    in previsao_caixa.data_vencimento%type
  )
  return boolean
  is
  
    cursor c_previsao_caixa
    (
      p_id_lancamento_fixo in previsao_caixa.id_lancamento_fixo%type,
      p_data_vencimento    in previsao_caixa.data_vencimento%type
    )
    is
      select 
        id_previsao_caixa
      from
        previsao_caixa
      where
        id_lancamento_fixo = p_id_lancamento_fixo and
        data_vencimento = p_data_vencimento;
  
    r_previsao_caixa  c_previsao_caixa%rowtype;
  
    v_b_lancamento_feito  boolean;
  
  begin
  
    v_b_lancamento_feito := false;
    
    open c_previsao_caixa (p_id_lancamento_fixo, p_data_vencimento);
    
    fetch c_previsao_caixa into r_previsao_caixa;
    
    if c_previsao_caixa%found then
     
      v_b_lancamento_feito := true;
     
    end if;
    
    close c_previsao_caixa;
  
    return v_b_lancamento_feito;
  
  end;

  procedure lanca_previsao_caixa
  (
    p_id_lancamento_fixo in lancamento_fixo.id_lancamento_fixo%type,
    p_n_mes              in integer,
    p_n_ano              in integer
  )
  is
  
    cursor c_lancamento_fixo
    (
      p_id_lancamento_fixo in lancamento_fixo.id_lancamento_fixo%type,
      p_n_mes              in integer
    )
    is
      select
        lf.id_lancamento_fixo,
        lf.id_conta_contabil,
        lf.dia_vencimento,
        lf.mes_vencimento,
        lf.id_entidade,
        lf.valor
      from 
        lancamento_fixo lf
      where
        lf.id_lancamento_fixo = p_id_lancamento_fixo and
        lf.ativo = 'S' and
        (
          lf.mes_vencimento is null or
          lf.mes_vencimento = p_n_mes
        );
  
    r_lancamento_fixo  c_lancamento_fixo%rowtype;
  
    v_data_vencimento    previsao_caixa.data_vencimento%type;
    v_id_previsao_caixa  previsao_caixa.id_previsao_caixa%type;
  
  begin
  
    open c_lancamento_fixo (p_id_lancamento_fixo, p_n_mes);
  
    fetch c_lancamento_fixo into r_lancamento_fixo;
    
    if c_lancamento_fixo%found then
  
      v_data_vencimento := to_date(to_char(r_lancamento_fixo.dia_vencimento, '00') || '/' || to_char(p_n_mes, '00') || '/' || to_char(p_n_ano, '0000'), 'dd/mm/yyyy');
    
      if not existe_previsao_caixa(r_lancamento_fixo.id_lancamento_fixo, v_data_vencimento) then
    
        v_id_previsao_caixa := pkg_previsao_caixa.inclui_previsao_caixa(r_lancamento_fixo.id_conta_contabil, v_data_vencimento, r_lancamento_fixo.id_entidade, r_lancamento_fixo.valor, r_lancamento_fixo.id_lancamento_fixo);
    
      end if;
    
    end if;
    
    close c_lancamento_fixo;
  
  end;  

end PKG_LANCAMENTO_FIXO;
/
