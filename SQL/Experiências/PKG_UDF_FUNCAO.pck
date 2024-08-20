create or replace package PKG_UDF_FUNCAO is

  -- Author  : Rodrigo Queija Corerato
  -- Created : 7/3/2008 18:13:46
  -- Purpose : 

  function recupera_id
  (
    p_codigo in udf_funcao.codigo%type
  )
  return udf_funcao.id%type;

  function existe
  (
    p_codigo in udf_funcao.codigo%type
  )
  return boolean;
  
  function novo
  (
    p_codigo      in udf_funcao.codigo%type,
    p_descricao   in udf_funcao.descricao%type,
    p_bloco_plsql in udf_funcao.bloco_plsql%type
  )
  return udf_funcao.id%type;

  procedure modifica
  (
    p_id          in udf_funcao.id%type,
    p_codigo      in udf_funcao.codigo%type,
    p_descricao   in udf_funcao.descricao%type,
    p_bloco_plsql in udf_funcao.bloco_plsql%type
  );

  procedure apaga
  (
    p_id in udf_funcao.id%type
  );

  function grava
  (
    p_codigo      in udf_funcao.codigo%type,
    p_descricao   in udf_funcao.descricao%type,
    p_bloco_plsql in udf_funcao.bloco_plsql%type
  )
  return udf_funcao.id%type;

  function recupera_id_parametro
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  )
  return udf_funcao_parametro.id%type;

  procedure adiciona_parametro_texto
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  );

  procedure adiciona_parametro_numerico
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  );

  procedure adiciona_parametro_data
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  );

  procedure remove_parametro
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  );

end PKG_UDF_FUNCAO;
/
create or replace package body PKG_UDF_FUNCAO is

  function recupera_id
  (
    p_codigo in udf_funcao.codigo%type
  )
  return udf_funcao.id%type
  is 
  
    cursor c_udf_funcao
    (
      p_codigo udf_funcao.codigo%type
    )
    is
      select
        id
      from
        udf_funcao
      where
        codigo = p_codigo;

    r_udf_funcao  c_udf_funcao%rowtype;
  
  begin
  
    open c_udf_funcao(p_codigo);
    fetch c_udf_funcao into r_udf_funcao;    
    close c_udf_funcao;
  
    return r_udf_funcao.id;
  
  end;

  function existe
  (
    p_codigo in udf_funcao.codigo%type
  )
  return boolean
  is
  begin
  
    return recupera_id(p_codigo) is not null;
  
  end;

  function novo
  (
    p_codigo      in udf_funcao.codigo%type,
    p_descricao   in udf_funcao.descricao%type,
    p_bloco_plsql in udf_funcao.bloco_plsql%type
  )
  return udf_funcao.id%type
  is
  
    v_id  udf_funcao.id%type;
  
  begin

    insert into udf_funcao
    (
      id,
      codigo,
      descricao,
      bloco_plsql
    )
    values
    (
      seq_udf_funcao.nextval,
      p_codigo,
      p_descricao,
      p_bloco_plsql
    )
    returning id into v_id;

    return v_id;

  end;

  procedure modifica
  (
    p_id          in udf_funcao.id%type,
    p_codigo      in udf_funcao.codigo%type,
    p_descricao   in udf_funcao.descricao%type,
    p_bloco_plsql in udf_funcao.bloco_plsql%type
  )
  is
  begin
  
    update udf_funcao
    set
      codigo      = p_codigo,
      descricao   = p_descricao,
      bloco_plsql = p_bloco_plsql
    where
      id = p_id;
  
  end;

  procedure apaga
  (
    p_id in udf_funcao.id%type
  )
  is
  begin
  
    delete from udf_funcao_parametro
    where
      id_udf_funcao = p_id;

    delete from udf_funcao
    where
      id = p_id;
  
  end;

  function grava
  (
    p_codigo      in udf_funcao.codigo%type,
    p_descricao   in udf_funcao.descricao%type,
    p_bloco_plsql in udf_funcao.bloco_plsql%type
  )
  return udf_funcao.id%type
  is
  
    v_id  udf_funcao.id%type;
  
  begin
  
    v_id := recupera_id(p_codigo);
  
    if v_id is not null then
      
      v_id := novo(p_codigo, p_descricao, p_bloco_plsql);
    
    else
    
      modifica(v_id, p_codigo, p_descricao, p_bloco_plsql);
    
    end if;
  
    return v_id;
  
  end;

  function recupera_id_parametro
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  )
  return udf_funcao_parametro.id%type
  is 
  
    cursor c_udf_funcao_parametro
    (
      p_id_udf_funcao  udf_funcao_parametro.id_udf_funcao%type,
      p_nome_parametro udf_funcao_parametro.nome_parametro%type
    )
    is
      select
        id
      from
        udf_funcao_parametro
      where
        id_udf_funcao = p_id_udf_funcao and
        nome_parametro = p_nome_parametro;

    r_udf_funcao_parametro  c_udf_funcao_parametro%rowtype;
  
  begin
  
    open c_udf_funcao_parametro(p_id_udf_funcao, p_nome_parametro);
    fetch c_udf_funcao_parametro into r_udf_funcao_parametro;    
    close c_udf_funcao_parametro;
  
    return r_udf_funcao_parametro.id;
  
  end;

  function novo_parametro
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type,
    p_tipo_dado      in udf_funcao_parametro.tipo_dado%type
  )
  return udf_funcao_parametro.id%type
  is
  
    v_id  udf_funcao_parametro.id%type;
  
  begin

    insert into udf_funcao_parametro
    (
      id,
      id_udf_funcao,
      nome_parametro,
      tipo_dado
    )
    values
    (
      seq_udf_funcao_parametro.nextval,
      p_id_udf_funcao,
      p_nome_parametro,
      p_tipo_dado
    )
    returning id into v_id;

    return v_id;

  end;

  procedure modifica_parametro
  (
    p_id             in udf_funcao_parametro.id%type,
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type,
    p_tipo_parametro in udf_funcao_parametro.tipo_parametro%type
  )
  is
  begin
  
    update udf_funcao_parametro
    set
      id_udf_funcao  = p_id_udf_funcao,
      nome_parametro = p_nome_parametro,
      tipo_parametro = p_tipo_parametro
    where
      id = p_id;
  
  end;

  procedure apaga_parametro
  (
    p_id in udf_funcao_parametro.id%type
  )
  is
  begin
  
    delete from udf_funcao_parametro
    where
      id = p_id;
  
  end;

  procedure adiciona_parametro_texto
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  )
  is
  begin
  
    novo_parametro(p_id_udf_funcao, p_nome_parametro, 'T');
  
  end;

  procedure adiciona_parametro_numerico
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  )
  is
  begin
  
    novo_parametro(p_id_udf_funcao, p_nome_parametro, 'N');
  
  end;

  procedure adiciona_parametro_data
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  )
  is
  begin
  
    novo_parametro(p_id_udf_funcao, p_nome_parametro, 'D');
  
  end;

  procedure remove_parametro
  (
    p_id_udf_funcao  in udf_funcao_parametro.id_udf_funcao%type,
    p_nome_parametro in udf_funcao_parametro.nome_parametro%type
  )
  is
  begin
  
    apaga_parametro(recupera_id_parametro(p_id_udf_funcao, p_nome_parametro));
  
  end;

end PKG_UDF_FUNCAO;
/
