create or replace package PKG_CONSISTENCIA is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  function CONSISTE_VALOR
  (
    p_id_mapeamento_coluna in consistencia.id_mapeamento_coluna%type,
    p_valor                in consistencia.valor_comparacao%type,
    p_c_mensagem_erro      out varchar2
  )
  return boolean;

end PKG_CONSISTENCIA;
/
create or replace package body PKG_CONSISTENCIA is

  function COMPARA_VALORES
  (
    p_valor               in consistencia.valor_comparacao%type,
    p_operador_comparacao in consistencia.operador_comparacao%type,
    p_valor_comparacao    in consistencia.valor_comparacao%type
  )
  return boolean
  is

    v_b_resultado_comparacao  boolean;

  begin

    v_b_resultado_comparacao := false;

    if (p_operador_comparacao = '=') and (p_valor = p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '<>') and (p_valor <> p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '>') and (p_valor > p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '<') and (p_valor < p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '>=') and (p_valor >= p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    elsif (p_operador_comparacao = '<=') and (p_valor <= p_valor_comparacao) then
      v_b_resultado_comparacao := true;
    end if;

    return v_b_resultado_comparacao;

  end;

  function CONSISTE_VALOR
  (
    p_id_mapeamento_coluna in consistencia.id_mapeamento_coluna%type,
    p_valor                in consistencia.valor_comparacao%type,
    p_c_mensagem_erro      out varchar2
  )
  return boolean
  is

    cursor c_consistencia
    (
      p_id_mapeamento_coluna in consistencia.id_mapeamento_coluna%type
    )
    is
      select
        cor.nome_coluna coluna_origem,
        tor.nome_tabela tabela_origem,
        tor.proprietario prop_tabela_origem,
        mc.formato,
        mc.funcao_grupo,
        c.operador_comparacao,
        c.valor_comparacao
      from
        consistencia      c,
        tabela            tor,
        coluna            cor,
        mapeamento_coluna mc
      where
        mc.id_mapeamento_coluna = p_id_mapeamento_coluna and
        cor.id_coluna = mc.id_coluna_origem and
        tor.id_tabela = cor.id_tabela and
        c.id_mapeamento_coluna = mc.id_mapeamento_coluna;

    r_consistencia  c_consistencia%rowtype;

    v_c_coluna      varchar2(4000);
    v_b_consistido  boolean;

  begin

    v_b_consistido := true;

    v_c_coluna := '';
    p_c_mensagem_erro := '';

    open c_consistencia (p_id_mapeamento_coluna);

    fetch c_consistencia into r_consistencia;

    if c_consistencia%found then

      v_c_coluna := r_consistencia.prop_tabela_origem || '.' || r_consistencia.tabela_origem || '.' || r_consistencia.coluna_origem;

      if r_consistencia.funcao_grupo is not null then
        v_c_coluna := r_consistencia.funcao_grupo || '(' || v_c_coluna || ')';
      end if;

      if r_consistencia.formato is not null then
        v_c_coluna := 'to_char(' || v_c_coluna || ', ''' || r_consistencia.formato || ''')';
      end if;

      while (c_consistencia%found) and v_b_consistido loop

        if not compara_valores(p_valor, r_consistencia.operador_comparacao, r_consistencia.valor_comparacao) then

          v_b_consistido := false;

          p_c_mensagem_erro := p_c_mensagem_erro || chr(13) || chr(10) || '  ' || r_consistencia.operador_comparacao || ' ' || r_consistencia.valor_comparacao;

        end if;

        fetch c_consistencia into r_consistencia;

      end loop;

    end if;

    if not v_b_consistido then

      p_c_mensagem_erro := v_c_coluna || ' não satisfaz as seguintes condições:' || chr(13) || chr(10) || p_c_mensagem_erro;

    end if;

    close c_consistencia;

    return v_b_consistido;

  end;

end PKG_CONSISTENCIA;
/
