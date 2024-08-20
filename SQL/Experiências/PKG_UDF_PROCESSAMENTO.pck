create or replace package PKG_UDF_PROCESSAMENTO is

  -- Author  : Rodrigo Queija Corerato
  -- Created : 7/3/2008 18:12:40
  -- Purpose : 

  function novo
  (
    p_id_udf_funcao in udf_processamento.id_udf_funcao%type
  )
  return udf_processamento.id%type;
  
  procedure modifica
  (
    p_id            in udf_processamento.id%type,
    p_id_udf_funcao in udf_processamento.id_udf_funcao%type
  );

  procedure apaga
  (
    p_id in udf_processamento.id%type
  );
  
  function recupera_valor_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type
  )
  return varchar2;

  function recupera_valor_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type
  )
  return number;

  function recupera_valor_date
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type
  )
  return date;
  
  procedure define_entrada_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type,
    p_valor_texto      in udf_processamento_valor.valor_texto%type
  );

  procedure define_entrada_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type,
    p_valor_numerico   in udf_processamento_valor.valor_numerico%type
  );

  procedure define_entrada_data
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type,
    p_valor_data       in udf_processamento_valor.valor_data%type
  );

  procedure define_saida_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type,
    p_valor_texto      in udf_processamento_valor.valor_texto%type
  );

  procedure define_saida_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type,
    p_valor_numerico   in udf_processamento_valor.valor_numerico%type
  );

  procedure define_saida_data
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_processo_parametro.nome_parametro%type,
    p_valor_data       in udf_processamento_valor.valor_data%type
  );

  procedure executa_processamento
  (
    p_id_processamento in udf_processamento.id%type
  );
  
end PKG_UDF_PROCESSAMENTO;
/
create or replace package body PKG_UDF_PROCESSAMENTO is

  function novo
  (
    p_id_udf_funcao in udf_processamento.id_udf_funcao%type
  )
  return udf_processamento.id%type
  is
  
    v_id  udf_processamento.id%type;
  
  begin

    insert into udf_processamento
    (
      id,
      id_udf_funcao
    )
    values
    (
      seq_udf_processamento.nextval,
      p_id_udf_funcao
    )
    returning id into v_id;

    return v_id;

  end;

  procedure modifica
  (
    p_id            in udf_processamento.id%type,
    p_id_udf_funcao in udf_processamento.id_udf_funcao%type
  )
  is
  begin
  
    update udf_processamento
    set
      id_udf_funcao = p_id_udf_funcao
    where
      id = p_id;
  
  end;

  procedure apaga
  (
    p_id in udf_processamento.id%type
  )
  is
  begin
  
    delete from udf_processamento_valor
    where
      id_processamento = p_id;

    delete from udf_processamento
    where
      id = p_id;
  
  end;

  function recupera_id_valor
  (
    p_id_processamento        in udf_processamento_valor.id_processamento%type,
    p_id_udf_funcao_parametro in udf_processamento_valor.id_udf_funcao_parametro%type,
    p_tipo_parametro          in udf_processamento_valor.tipo_parametro%type
  )
  return udf_processamento_valor.id%type
  is 
  
    cursor c_udf_processamento_valor
    (
      p_id_processamento        udf_processamento_valor.id_processamento%type,
      p_id_udf_funcao_parametro udf_processamento_valor.id_udf_funcao_parametro%type,
      p_tipo_parametro          udf_processamento_valor.tipo_parametro%type
    )
    is
      select
        id
      from
        udf_processamento_valor
      where
        id_processamento = p_id_processamento and
        id_udf_funcao_parametro = p_id_udf_funcao_parametro and
        tipo_parametro = p_tipo_parametro;

    r_udf_processamento_valor  c_udf_processamento_valor%rowtype;
  
  begin
  
    open c_udf_processamento_valor(p_id_processamento, p_id_udf_funcao_parametro, p_tipo_parametro);
    fetch c_udf_processamento_valor into r_udf_processamento_valor;    
    close c_udf_processamento_valor;
  
    return r_udf_processamento_valor.id;
  
  end;

  function recupera_valor_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type
  )
  return varchar2
  is
  
    cursor c_udf_processamento_valor
    (
      p_id_processamento udf_processamento.id%type,
      p_nome_parametro   udf_funcao_parametro.nome_parametro%type
    )
    is
      select
        pv.valor_texto
      from
        udf_processamento_valor pv,
        udf_processamento       p
      where
        p.id = p_id_processamento and
        pv.id_processamento = p.id and
        pv.id_udf_funcao_parametro = pkg_udf_funcao.recupera_id_parametro(p.id_udf_funcao, p_nome_parametro);

    r_udf_processamento_valor  c_udf_processamento_valor%rowtype;
  
  begin
  
    open c_udf_processamento_valor(p_id_processamento, p_nome_parametro);
    fetch c_udf_processamento_valor into r_udf_processamento_valor;
    close c_udf_processamento_valor;
  
    return r_udf_processamento_valor.valor_texto;
  
  end;

  function recupera_valor_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type
  )
  return number
  is
  
    cursor c_udf_processamento_valor
    (
      p_id_processamento udf_processamento.id%type,
      p_nome_parametro   udf_funcao_parametro.nome_parametro%type
    )
    is
      select
        pv.valor_numerico
      from
        udf_processamento_valor pv,
        udf_processamento       p
      where
        p.id = p_id_processamento and
        pv.id_processamento = p.id and
        pv.id_udf_funcao_parametro = pkg_udf_funcao.recupera_id_parametro(p.id_udf_funcao, p_nome_parametro);

    r_udf_processamento_valor  c_udf_processamento_valor%rowtype;
  
  begin
  
    open c_udf_processamento_valor(p_id_processamento, p_nome_parametro);
    fetch c_udf_processamento_valor into r_udf_processamento_valor;
    close c_udf_processamento_valor;
  
    return r_udf_processamento_valor.valor_numerico;
  
  end;

  function recupera_valor_date
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type
  )
  return date
  is
  
    cursor c_udf_processamento_valor
    (
      p_id_processamento udf_processamento.id%type,
      p_nome_parametro   udf_funcao_parametro.nome_parametro%type
    )
    is
      select
        pv.valor_data
      from
        udf_processamento_valor pv,
        udf_processamento       p
      where
        p.id = p_id_processamento and
        pv.id_processamento = p.id and
        pv.id_udf_funcao_parametro = pkg_udf_funcao.recupera_id_parametro(p.id_udf_funcao, p_nome_parametro);

    r_udf_processamento_valor  c_udf_processamento_valor%rowtype;
  
  begin
  
    open c_udf_processamento_valor(p_id_processamento, p_nome_parametro);
    fetch c_udf_processamento_valor into r_udf_processamento_valor;
    close c_udf_processamento_valor;
  
    return r_udf_processamento_valor.valor_data;
  
  end;

  function novo_valor
  (
    p_id_processamento        in udf_processamento_valor.id_processamento%type,
    p_id_udf_funcao_parametro in udf_processamento_valor.id_udf_funcao_parametro%type,
    p_tipo_parametro          in udf_processamento_valor.tipo_parametro%type,
    p_valor_texto             in udf_processamento_valor.valor_texto%type,
    p_valor_numerico          in udf_processamento_valor.valor_numerico%type,
    p_valor_data              in udf_processamento_valor.valor_data%type
  )
  return udf_processamento_valor.id%type
  is
  
    v_id  udf_processamento_valor.id%type;
  
  begin
  
    insert into udf_processamento_valor
    (
      id,
      id_processamento,
      id_udf_funcao_parametro,
      tipo_parametro,
      valor_texto,
      valor_numerico,
      valor_data
    )
    values
    (
      seq_udf_processamento_valor.nextval,
      p_id_processamento,
      p_id_udf_funcao_parametro,
      p_tipo_parametro,
      p_valor_texto,
      p_valor_numerico,
      p_valor_data
    )
    returning id into v_id;
  
    return v_id;
  
  end;

  procedure modifica_valor
  (
    p_id                      in udf_processamento_valor.id%type,
    p_id_processamento        in udf_processamento_valor.id_processamento%type,
    p_id_udf_funcao_parametro in udf_processamento_valor.id_udf_funcao_parametro%type,
    p_tipo_parametro          in udf_processamento_valor.tipo_parametro%type,
    p_valor_texto             in udf_processamento_valor.valor_texto%type,
    p_valor_numerico          in udf_processamento_valor.valor_numerico%type,
    p_valor_data              in udf_processamento_valor.valor_data%type
  )
  is
  begin
  
    update udf_processamento_valor
    set
      id_processamento        = p_id_processamento,
      id_udf_funcao_parametro = p_id_udf_funcao_parametro,
      tipo_parametro          = p_tipo_parametro,
      valor_texto             = p_valor_texto,
      valor_numerico          = p_valor_numerico,
      valor_data              = p_valor_data
    where
      id = p_id;
  
  end;

  procedure apaga_valor
  (
    p_id in udf_processamento_valor.id%type
  )
  is
  begin
  
    delete from udf_processamento_valor
    where
      id = p_id;
  
  end;

  function grava_valor
  (
    p_id_processamento        in udf_processamento_valor.id_processamento%type,
    p_id_udf_funcao_parametro in udf_processamento_valor.id_udf_funcao_parametro%type,
    p_tipo_parametro          in udf_processamento_valor.tipo_parametro%type,
    p_valor_texto             in udf_processamento_valor.valor_texto%type,
    p_valor_numerico          in udf_processamento_valor.valor_numerico%type,
    p_valor_data              in udf_processamento_valor.valor_data%type
  )
  return udf_processamento_valor.id%type
  is
  begin

    v_id := recupera_id_valor(p_id_processamento, p_id_udf_funcao_parametro, p_tipo_parametro);
  
    if v_id is not null then
      
      v_id := novo_valor(p_id_processamento, p_id_udf_funcao_parametro, p_tipo_parametro, p_valor_texto, p_valor_numerico, p_valor_data);
    
    else
    
      modifica_valor(v_id, p_id_processamento, p_id_udf_funcao_parametro, p_tipo_parametro, p_valor_texto, p_valor_numerico, p_valor_data);
    
    end if;
  
    return v_id;
    
  end;
  
  procedure define_valor_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_tipo_parametro   in udf_processamento_valor.tipo_parametro%type,
    p_valor_texto      in udf_processamento_valor.valor_texto%type
  )
  is
  
    cursor c_udf_processamento
    (
      p_id_processamento udf_processamento.id%type
    )
    is
      select
        id_udf_funcao
      from
        udf_processamento
      where
        id = p_id_processamento;
  
    r_udf_processamento  c_udf_processamento%rowtype;
  
  begin
  
    open c_udf_processamento(p_id_processamento);
    fetch c_udf_processamento into r_udf_processamento;
    close c_udf_processamento;
  
    grava_valor(p_id_processamento, pkg_udf_funcao.recupera_id_parametro(r_udf_processamento.id_udf_funcao, p_nome_parametro), p_tipo_parametro, p_valor_texto, null, null);
  
  end;

  procedure define_valor_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_tipo_parametro   in udf_processamento_valor.tipo_parametro%type,
    p_valor_numerico   in udf_processamento_valor.valor_numerico%type
  )
  is
  
    cursor c_udf_processamento
    (
      p_id_processamento udf_processamento.id%type
    )
    is
      select
        id_udf_funcao
      from
        udf_processamento
      where
        id = p_id_processamento;
  
    r_udf_processamento  c_udf_processamento%rowtype;
  
  begin
  
    open c_udf_processamento(p_id_processamento);
    fetch c_udf_processamento into r_udf_processamento;
    close c_udf_processamento;
  
    grava_valor(p_id_processamento, pkg_udf_funcao.recupera_id_parametro(r_udf_processamento.id_udf_funcao, p_nome_parametro), p_tipo_parametro, null, p_valor_numerico, null);
  
  end;

  procedure define_valor_data
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_tipo_parametro   in udf_processamento_valor.tipo_parametro%type,
    p_valor_data       in udf_processamento_valor.valor_data%type
  )
  is
  
    cursor c_udf_processamento
    (
      p_id_processamento udf_processamento.id%type
    )
    is
      select
        id_udf_funcao
      from
        udf_processamento
      where
        id = p_id_processamento;
  
    r_udf_processamento  c_udf_processamento%rowtype;
  
  begin
  
    open c_udf_processamento(p_id_processamento);
    fetch c_udf_processamento into r_udf_processamento;
    close c_udf_processamento;
  
    grava_valor(p_id_processamento, pkg_udf_funcao.recupera_id_parametro(r_udf_processamento.id_udf_funcao, p_nome_parametro), p_tipo_parametro, null, null, p_valor_data);
  
  end;

  procedure define_entrada_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_valor_texto      in udf_processamento_valor.valor_texto%type
  )
  is
  begin
  
    define_valor_data(p_id_processamento, p_nome_parametro, 'E', p_valor_texto);
  
  end;

  procedure define_entrada_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_valor_numerico   in udf_processamento_valor.valor_numerico%type
  )
  is
  begin
  
    define_valor_numerico(p_id_processamento, p_nome_parametro, 'E', p_valor_numerico);
  
  end;

  procedure define_entrada_data
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_valor_data       in udf_processamento_valor.valor_data%type
  )
  is
  begin
  
    define_valor_data(p_id_processamento, p_nome_parametro, 'E', p_valor_data);
  
  end;

  procedure define_saida_texto
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_valor_texto      in udf_processamento_valor.valor_texto%type
  )
  is
  begin
  
    define_valor_data(p_id_processamento, p_nome_parametro, 'S', p_valor_texto);
  
  end;

  procedure define_saida_numerico
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_valor_numerico   in udf_processamento_valor.valor_numerico%type
  )
  is
  begin
  
    define_valor_numerico(p_id_processamento, p_nome_parametro, 'S', p_valor_numerico);
  
  end;

  procedure define_saida_data
  (
    p_id_processamento in udf_processamento.id%type,
    p_nome_parametro   in udf_funcao_parametro.nome_parametro%type,
    p_valor_data       in udf_processamento_valor.valor_data%type
  )
  is
  begin
  
    define_valor_data(p_id_processamento, p_nome_parametro, 'S', p_valor_data);
  
  end;

  procedure executa_processamento
  (
    p_id_processamento in udf_processamento.id%type
  )
  is
  
    cursor c_udf_processamento
    (
      p_id udf_processamento.id%type
    )
    is
      select
        id_udf_funcao
      from
        udf_processamento
      where
        id = p_id;

    cursor c_udf_processamento_parametro
    (
      p_id_processamento udf_processamento.id%type
    )
    is
      select
        pp.id id_udf_funcao_parametro,
        pp.nome_parametro,
        pp.tipo_dado,
        pv.valor_texto,
        pv.valor_numerico,
        pv.valor_data
      from
        udf_processamento_valor pv,        
        udf_funcao_parametro    pp,        
        udf_funcao              p2,
        udf_processamento       p1
      where
        p1.id = p_id_processamento and
        p2.id = p1.id_udf_funcao and
        pp.id_udf_funcao = p2.id and
        pv.id_processamento(+) = p_id_processamento and
        pv.id_udf_funcao_parametro(+) = pp.id;

    cursor c_udf_funcao
    (
      p_id udf_funcao.id%type
    )
    is
      select
        bloco_plsql
      from
        udf_funcao
      where
        id = p_id;

    r_udf_processamento             c_udf_processamento%rowtype;
    r_udf_processamento_parametro   c_udf_processamento_parametro%rowtype;
    r_udf_funcao                  c_udf_funcao%rowtype;

    v_s_declaracao  varchar2(4000);
    v_bloco_plsql   udf_funcao.bloco_plsql%type;
  
  begin
  
    v_bloco_plsql := '';
    
    open c_udf_processamento(p_id_processamento);
    fetch c_udf_processamento into r_udf_processamento;
    close c_udf_processamento;

    open c_udf_processamento_parametro(p_id_processamento);

    fetch c_udf_processamento_parametro into r_udf_processamento_parametro;
    
    if c_udf_processamento_parametro%found then

      v_bloco_plsql := v_bloco_plsql || ' declare ';
    
      while c_udf_processamento_parametro%found loop

        v_s_declaracao := r_udf_processamento_parametro.nome_parametro;

        if r_udf_processamento_parametro.tipo_dado = 'T' then
          v_s_declaracao := v_s_declaracao || ' varchar2(4000) ';
        elsif r_udf_processamento_parametro.tipo_dado = 'N' then
          v_s_declaracao := v_s_declaracao || ' number ';
        elsif r_udf_processamento_parametro.tipo_dado = 'D' then
          v_s_declaracao := v_s_declaracao || ' date ';
        end if;

        if r_udf_processamento_parametro.valor_texto is not null then
          v_s_declaracao := v_s_declaracao || ' := ''' || r_udf_processamento_parametro.valor_texto || ''' ';
        elsif r_udf_processamento_parametro.valor_numerico is not null then
          v_s_declaracao := v_s_declaracao || ' := ' || r_udf_processamento_parametro.valor_numerico || ' ';
        elsif r_udf_processamento_parametro.valor_data is not null then
          v_s_declaracao := v_s_declaracao || ' := to_date(''' || to_char(r_udf_processamento_parametro.valor_data, 'yyyymmdd hh24:mi:ss') || ''', ''yyyymmdd hh24:mi:ss'') ';
        end if;

        v_bloco_plsql := v_bloco_plsql || ' ' || v_s_declaracao || '; ';

        fetch c_udf_processamento_parametro into r_udf_processamento_parametro;

      end loop;
    
    end if;
    
    close c_udf_processamento_parametro;

    v_bloco_plsql := v_bloco_plsql || ' begin ';

    open c_udf_funcao(r_udf_processamento.id_udf_funcao);
    fetch c_udf_funcao into r_udf_funcao;
    close c_udf_funcao;

    v_bloco_plsql := v_bloco_plsql || ' ' || r_udf_funcao.bloco_plsql || ' ';

    open c_udf_processamento_parametro(p_id_processamento);

    fetch c_udf_processamento_parametro into r_udf_processamento_parametro;
    
    while c_udf_processamento_parametro%found loop

      v_s_declaracao := '';
      
      if r_udf_processamento_parametro.tipo_dado = 'T' then
        v_s_declaracao := v_s_declaracao || ' pkg_udf_processamento.define_saida_texto(' ||  p_id_processamento  || ', ''' || r_udf_processamento_parametro.nome_parametro || ''', ' || r_udf_processamento_parametro.nome_parametro || ') ';
      elsif r_udf_processamento_parametro.tipo_dado = 'N' then
        v_s_declaracao := v_s_declaracao || ' pkg_udf_processamento.define_saida_numerico(' ||  p_id_processamento  || ', ''' || r_udf_processamento_parametro.nome_parametro || ''', ' || r_udf_processamento_parametro.nome_parametro || ') ';
      elsif r_udf_processamento_parametro.tipo_dado = 'D' then
        v_s_declaracao := v_s_declaracao || ' pkg_udf_processamento.define_saida_data(' ||  p_id_processamento  || ', ''' || r_udf_processamento_parametro.nome_parametro || ''', ' || r_udf_processamento_parametro.nome_parametro || ') ';
      end if;

      if v_s_declaracao is not null then

        v_bloco_plsql := v_bloco_plsql || ' ' || v_s_declaracao || '; ';

      end if;

      fetch c_udf_processamento_parametro into r_udf_processamento_parametro;

    end loop;
    
    close c_udf_processamento_parametro;

    v_bloco_plsql := v_bloco_plsql || ' end; ';
  
    execute immediate v_bloco_plsql;
  
  end;

end PKG_UDF_PROCESSAMENTO;
/
