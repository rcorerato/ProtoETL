create or replace package PKG_TRANSFORMACAO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  function TRANFORMA_VALOR
  (
    p_id_mapeamento_coluna in transformacao.id_mapeamento_coluna%type,
    p_valor_coluna         in transformacao.valor_origem%type
  )
  return transformacao.valor_destino%type;

end PKG_TRANSFORMACAO;
/
create or replace package body PKG_TRANSFORMACAO is

  function TRANFORMA_VALOR
  (
    p_id_mapeamento_coluna in transformacao.id_mapeamento_coluna%type,
    p_valor_coluna         in transformacao.valor_origem%type
  )
  return transformacao.valor_destino%type
  is

    cursor c_transformacao
    (
      p_id_mapeamento_coluna in transformacao.id_mapeamento_coluna%type,
      p_valor_coluna         in transformacao.valor_origem%type
    )
    is
      select
        t.valor_destino
      from
        transformacao t
      where
        t.id_mapeamento_coluna = p_id_mapeamento_coluna and
        t.valor_origem = p_valor_coluna;

    r_transformacao  c_transformacao%rowtype;

    v_result  transformacao.valor_destino%type;

  begin

    v_result := p_valor_coluna;

    open c_transformacao (p_id_mapeamento_coluna, v_result);

    fetch c_transformacao into r_transformacao;

    if c_transformacao%found then

      v_result := r_transformacao.valor_destino;

    end if;

    close c_transformacao;

    return v_result;

  end;

end PKG_TRANSFORMACAO;
/
