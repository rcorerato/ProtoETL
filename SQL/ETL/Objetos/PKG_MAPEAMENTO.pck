create or replace package PKG_MAPEAMENTO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  TD_TABELA constant char := 'T';
  TD_CUBO   constant char := 'C';

  TA_ALTERAR constant char := '1';
  TA_INCLUIR constant char := '2';

  SO_TODAS_COLUNAS constant integer := 0;
  SO_ROWID         constant integer := 1;

  SD_REGISTRO_ENCONTRADO constant integer := 0;
  SD_REGISTRO_ATUALIZADO constant integer := 1;

  UO_LINHA constant integer := 0;
  UO_LOTE  constant integer := 1;

  type t_mapeamento_coluna is record
  (
    id_mapeamento_coluna            integer,
    prop_tabela_origem              varchar2(30),
    tabela_origem                   varchar2(30),
    coluna_origem                   varchar2(30),
    coluna_destino                  varchar2(30),
    formato                         varchar2(10),
    funcao_grupo                    varchar2(10),
    chave_pesquisa                  varchar2(1),
    prop_tabela_pesquisa_dimensao   varchar2(30),
    tabela_pesquisa_dimensao        varchar2(30),
    coluna_pesquisa_dimensao        varchar2(30),
    coluna_chave_primaria_dimensao  varchar2(30)
  );

  type t_a_mapeamento_coluna is table of t_mapeamento_coluna index by binary_integer;

  type t_mapeamento is record
  (
    id_mapeamento                   integer,
    prop_tabela_origem              varchar2(30),
    tabela_origem                   varchar2(30),
    coluna_chave_primaria_origem    varchar2(30),
    origem_tempo                    varchar2(1),
    prop_tabela_destino             varchar2(30),
    tabela_destino                  varchar2(30),
    tipo_atualizacao                varchar2(1),
    coluna_data_inclusao            varchar2(30),
    coluna_data_alteracao           varchar2(30),
    colunas                         t_a_mapeamento_coluna,
    numero_colunas                  integer
  );

  mapa   t_mapeamento;

  procedure CARREGA_MAPEAMENTO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  );

  procedure DESCARREGA_MAPEAMENTO;

  function COMANDO_SELECT_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2;

  function COMANDO_UPDATE_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2;

  function COMANDO_SELECT_DESTINO
  (
    p_n_tipo in integer
  )
  return varchar2;

  function COMANDO_INSERT_DESTINO
  return varchar2;

  function COMANDO_UPDATE_DESTINO
  return varchar2;

end PKG_MAPEAMENTO;
/
create or replace package body PKG_MAPEAMENTO is

  -- Carrega mapeamento para a memória
  procedure CARREGA_MAPEAMENTO
  (
    p_id_mapeamento in mapeamento.id_mapeamento%type
  )
  is

    cursor c_mapeamento
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        m.id_mapeamento     id_mapeamento,
        tor.proprietario    prop_tabela_origem,
        tor.nome_tabela     tabela_origem,
        (
          select
            c.nome_coluna
          from
            coluna c
          where
            c.id_tabela = m.id_tabela_origem and
            c.chave_primaria = 'S'
        )                   coluna_chave_primaria_origem,
        m.origem_tempo      origem_tempo,
        tde.proprietario    prop_tabela_destino,
        tde.nome_tabela     tabela_destino,
        m.tipo_atualizacao  tipo_atualizacao,
        cdi.nome_coluna     coluna_data_inclusao,
        cda.nome_coluna     coluna_data_alteracao
      from
        coluna      cda,
        coluna      cdi,
        tabela      tde,
        tabela      tor,
        mapeamento  m
      where
        m.id_mapeamento = p_id_mapeamento and
        tor.id_tabela(+) = m.id_tabela_origem and
        tde.id_tabela = m.id_tabela_destino and
        cdi.id_coluna(+) = m.id_coluna_data_inclusao and
        cda.id_coluna(+) = m.id_coluna_data_alteracao;

    cursor c_mapeamento_coluna
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        mc.id_mapeamento_coluna  id_mapeamento_coluna,
        tcor.proprietario        prop_tabela_origem,
        tcor.nome_tabela         tabela_origem,
        cor.nome_coluna          coluna_origem,
        cde.nome_coluna          coluna_destino,
        mc.formato               formato,
        mc.funcao_grupo          funcao_grupo,
        mc.chave_pesquisa        chave_pesquisa,
        tpd.proprietario         prop_tabela_pesquisa_dimensao,
        tpd.nome_tabela          tabela_pesquisa_dimensao,
        cpd.nome_coluna          coluna_pesquisa_dimensao,
        (
          select
            nome_coluna
          from
            coluna
          where
            id_tabela = tpd.id_tabela and
            chave_primaria = 'S'
        )                        coluna_chave_primaria_dimensao
      from
        tabela             tpd,
        coluna             cpd,
        coluna             cde,
        tabela             tcor,
        coluna             cor,
        mapeamento_coluna  mc
      where
        mc.id_mapeamento = p_id_mapeamento and
        cor.id_coluna(+) = mc.id_coluna_origem and
        tcor.id_tabela(+) = cor.id_tabela and
        cde.id_coluna = mc.id_coluna_destino and
        cpd.id_coluna(+) = mc.id_coluna_pesquisa_dimensao and
        tpd.id_tabela(+) = cpd.id_tabela
      order by
        tabela_origem,
        funcao_grupo nulls first,
        coluna_destino;

    r_mapeamento  c_mapeamento%rowtype;
    r_mapeamento_coluna  c_mapeamento_coluna%rowtype;

  begin

    mapa.numero_colunas := 0;

    open c_mapeamento (p_id_mapeamento);

    fetch c_mapeamento into r_mapeamento;

    if c_mapeamento%found then

      mapa.id_mapeamento                  := r_mapeamento.id_mapeamento;
      mapa.prop_tabela_origem             := r_mapeamento.prop_tabela_origem;
      mapa.tabela_origem                  := r_mapeamento.tabela_origem;
      mapa.coluna_chave_primaria_origem   := r_mapeamento.coluna_chave_primaria_origem;
      mapa.origem_tempo                   := r_mapeamento.origem_tempo;
      mapa.prop_tabela_destino            := r_mapeamento.prop_tabela_destino;
      mapa.tabela_destino                 := r_mapeamento.tabela_destino;
      mapa.tipo_atualizacao               := r_mapeamento.tipo_atualizacao;
      mapa.coluna_data_inclusao           := r_mapeamento.coluna_data_inclusao;
      mapa.coluna_data_alteracao          := r_mapeamento.coluna_data_alteracao;

      open c_mapeamento_coluna (p_id_mapeamento);

      loop

        fetch c_mapeamento_coluna into r_mapeamento_coluna;

        exit when c_mapeamento_coluna%notfound;

        mapa.numero_colunas := mapa.numero_colunas + 1;

        mapa.colunas(mapa.numero_colunas).id_mapeamento_coluna           := r_mapeamento_coluna.id_mapeamento_coluna;
        mapa.colunas(mapa.numero_colunas).prop_tabela_origem             := r_mapeamento_coluna.prop_tabela_origem;
        mapa.colunas(mapa.numero_colunas).tabela_origem                  := r_mapeamento_coluna.tabela_origem;
        mapa.colunas(mapa.numero_colunas).coluna_origem                  := r_mapeamento_coluna.coluna_origem;
        mapa.colunas(mapa.numero_colunas).coluna_destino                 := r_mapeamento_coluna.coluna_destino;
        mapa.colunas(mapa.numero_colunas).formato                        := r_mapeamento_coluna.formato;
        mapa.colunas(mapa.numero_colunas).funcao_grupo                   := r_mapeamento_coluna.funcao_grupo;
        mapa.colunas(mapa.numero_colunas).chave_pesquisa                 := r_mapeamento_coluna.chave_pesquisa;
        mapa.colunas(mapa.numero_colunas).prop_tabela_pesquisa_dimensao  := r_mapeamento_coluna.prop_tabela_pesquisa_dimensao;
        mapa.colunas(mapa.numero_colunas).tabela_pesquisa_dimensao       := r_mapeamento_coluna.tabela_pesquisa_dimensao;
        mapa.colunas(mapa.numero_colunas).coluna_pesquisa_dimensao       := r_mapeamento_coluna.coluna_pesquisa_dimensao;
        mapa.colunas(mapa.numero_colunas).coluna_chave_primaria_dimensao := r_mapeamento_coluna.coluna_chave_primaria_dimensao;

      end loop;

      close c_mapeamento_coluna;

    end if;

    close c_mapeamento;

  end;

  procedure DESCARREGA_MAPEAMENTO
  is
  begin

    mapa.numero_colunas := 0;

  end;

  -- Constrói comando select na tabela de origem
  function COMANDO_SELECT_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2
  is

    type t_tabela is record
    (
      proprietario  varchar2(30),
      nome_tabela   varchar2(30)
    );

    type t_a_tabela is table of t_tabela index by binary_integer;

    cursor c_juncao
    (
      p_prop_tabela_pai   in tabela.proprietario%type,
      p_nome_tabela_pai   in tabela.nome_tabela%type,
      p_prop_tabela_filho in tabela.proprietario%type,
      p_nome_tabela_filho in tabela.nome_tabela%type
    )
    is
      select
        tp.nome_tabela tabela_pai,
        cp.nome_coluna coluna_pai,
        j.relacionamento_pai_opcional,
        tf.nome_tabela tabela_filho,
        cf.nome_coluna coluna_filho,
        j.relacionamento_filho_opcional
      from
        juncao j,
        coluna cf,
        coluna cp,
        tabela tf,
        tabela tp
      where
        tp.nome_tabela = p_nome_tabela_pai and
        tp.proprietario = p_prop_tabela_pai and
        tf.nome_tabela = p_nome_tabela_filho and
        tf.proprietario = p_prop_tabela_filho and
        cp.id_tabela = tp.id_tabela and
        cf.id_tabela = tf.id_tabela and
        j.id_coluna_tabela_pai = cp.id_coluna and
        j.id_coluna_tabela_filho = cf.id_coluna;

    cursor c_filtro
    (
      p_id_mapeamento in mapeamento.id_mapeamento%type
    )
    is
      select
        c.nome_coluna         coluna,
        t.nome_tabela         tabela,
        f.operador_comparacao operador_comparacao,
        f.valor_comparacao    valor_comparacao
      from
        tabela t,
        coluna c,
        filtro f
      where
        f.id_mapeamento = p_id_mapeamento and
        c.id_coluna = f.id_coluna and
        t.id_tabela = c.id_tabela;

    r_juncao  c_juncao%rowtype;
    r_filtro  c_filtro%rowtype;

    v_c_result                varchar2(4000);
    v_c_column                varchar2(4000);
    v_c_columns               varchar2(4000);
    v_c_from                  varchar2(4000);
    v_c_where                 varchar2(4000);
    v_c_group_by              varchar2(4000);
    v_n_i                     integer;
    v_n_num_tabelas_origem    integer;
    v_c_prop_tabela_origem    varchar2(30);
    v_c_tabela_origem         varchar2(30);
    v_a_tabela_origem         t_a_tabela;
    v_c_relacionamento_pai    varchar2(3);
    v_c_relacionamento_filho  varchar2(3);
    v_b_agrupamento           boolean;

  begin

    v_b_agrupamento := false;

    --
    -- Monta clásulas select e group by
    --

    v_c_columns  := '';
    v_c_group_by := '';

    if p_n_tipo = SO_TODAS_COLUNAS then

      for v_n_i in 1..mapa.numero_colunas loop

        v_c_column := mapa.colunas(v_n_i).tabela_origem || '.' || mapa.colunas(v_n_i).coluna_origem;

        if mapa.colunas(v_n_i).funcao_grupo is not null then

          -- Adiciona função de grupo
          v_c_column := mapa.colunas(v_n_i).funcao_grupo || '(' || v_c_column || ')';

          v_b_agrupamento := true;

        else

          if v_c_group_by is not null then
            v_c_group_by := v_c_group_by || ',';
          end if;

          v_c_group_by := v_c_group_by || v_c_column;

          if mapa.colunas(v_n_i).coluna_pesquisa_dimensao is not null then

            v_c_column := '(select max(' || mapa.colunas(v_n_i).coluna_chave_primaria_dimensao || ') from ' || mapa.colunas(v_n_i).prop_tabela_pesquisa_dimensao || '.' || mapa.colunas(v_n_i).tabela_pesquisa_dimensao || ' where ' || mapa.colunas(v_n_i).tabela_pesquisa_dimensao || '.' || mapa.colunas(v_n_i).coluna_pesquisa_dimensao || ' = ' || v_c_column || ')';

          end if;

        end if;

        if mapa.colunas(v_n_i).formato is not null then

          v_c_column := 'to_char(' || v_c_column || ', ''' || mapa.colunas(v_n_i).formato || ''')';

        end if;

        if v_c_columns is not null then
          v_c_columns := v_c_columns || ',';
        end if;

        v_c_columns := v_c_columns || v_c_column;

      end loop;

      if not v_b_agrupamento then

        v_c_column := 'notificacao.rowid';

        if v_c_columns is not null then
          v_c_columns := v_c_columns || ',';
        end if;

        v_c_columns := v_c_columns || v_c_column;

        if v_c_group_by is not null then
          v_c_group_by := v_c_group_by || ',';
        end if;

        v_c_group_by := v_c_group_by || v_c_column;

      end if;

    elsif p_n_tipo = SO_ROWID then

      v_c_column := 'notificacao.rowid';

      if v_c_columns is not null then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_column;

    end if;

    --
    -- Monta clásula from
    --

    v_n_num_tabelas_origem := 1;

    v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := null;
    v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := 'notificacao';

    v_n_num_tabelas_origem := 2;

    v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := mapa.prop_tabela_origem;
    v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := mapa.tabela_origem;

    v_n_i := 1;

    while v_n_i <= mapa.numero_colunas loop

      v_c_prop_tabela_origem := mapa.colunas(v_n_i).prop_tabela_origem;
      v_c_tabela_origem      := mapa.colunas(v_n_i).tabela_origem;

      if (v_c_tabela_origem = mapa.tabela_origem) and (v_c_prop_tabela_origem = mapa.prop_tabela_origem) then

        v_n_i := v_n_i + 1;

      else

        v_n_num_tabelas_origem := v_n_num_tabelas_origem + 1;

        v_a_tabela_origem(v_n_num_tabelas_origem).proprietario := v_c_prop_tabela_origem;
        v_a_tabela_origem(v_n_num_tabelas_origem).nome_tabela  := v_c_tabela_origem;

        while (v_n_i <= mapa.numero_colunas) and (mapa.colunas(v_n_i).tabela_origem = v_c_tabela_origem) and (mapa.colunas(v_n_i).prop_tabela_origem = v_c_prop_tabela_origem) loop

          v_n_i := v_n_i + 1;

        end loop;

      end if;

    end loop;

    v_c_from := '';

    for i in reverse 1..v_n_num_tabelas_origem loop

      if v_c_from is not null then
        v_c_from := v_c_from || ',';
      end if;

      if v_a_tabela_origem(i).proprietario is not null then
        v_c_from := v_c_from || v_a_tabela_origem(i).proprietario || '.';
      end if;

      v_c_from := v_c_from || v_a_tabela_origem(i).nome_tabela;

    end loop;

    --
    -- Monta cláusula where
    --

    v_c_where := 'notificacao.proprietario = ''' || mapa.prop_tabela_origem || ''' and notificacao.tabela = ''' || mapa.tabela_origem || ''' and notificacao.status = :p_status and ' || mapa.tabela_origem || '.' || mapa.coluna_chave_primaria_origem || ' = notificacao.chave_pk';

    if v_n_num_tabelas_origem > 1 then

      for i in 1..v_n_num_tabelas_origem loop

        for j in 1..v_n_num_tabelas_origem loop

          open c_juncao (v_a_tabela_origem(i).proprietario, v_a_tabela_origem(i).nome_tabela, v_a_tabela_origem(j).proprietario, v_a_tabela_origem(j).nome_tabela);

          loop

            fetch c_juncao into r_juncao;

            exit when c_juncao%notfound;

            if v_c_where is not null then
              v_c_where := v_c_where || ' and ';
            end if;

            v_c_relacionamento_pai := '';
            if r_juncao.relacionamento_pai_opcional = 'S' then
              v_c_relacionamento_pai := '(+)';
            end if;

            v_c_relacionamento_filho := '';
            if r_juncao.relacionamento_filho_opcional = 'S' then
              v_c_relacionamento_filho := '(+)';
            end if;

            v_c_where := v_c_where || r_juncao.tabela_pai || '.' || r_juncao.coluna_pai || v_c_relacionamento_pai || ' = ' || r_juncao.tabela_filho || '.' || r_juncao.coluna_filho || v_c_relacionamento_filho;

          end loop;

          close c_juncao;

        end loop;

      end loop;

    end if;

    open c_filtro (mapa.id_mapeamento);

    loop

      fetch c_filtro into r_filtro;

      exit when c_filtro%notfound;

      if v_c_where is not null then
        v_c_where := v_c_where || ' and ';
      end if;

      v_c_where := v_c_where || r_filtro.tabela || '.' || r_filtro.coluna || ' ' || r_filtro.operador_comparacao || ' ' || case when upper(r_filtro.operador_comparacao) = 'IN' then '(' else '' end || '''' || r_filtro.valor_comparacao || '''' || case when upper(r_filtro.operador_comparacao) = 'IN' then ')' else '' end;

    end loop;

    close c_filtro;

    -- Monta comando
    v_c_result := 'select ' || v_c_columns || ' from ' || v_c_from;
    if v_c_where is not null then
      v_c_result := v_c_result || ' where ' || v_c_where;
    end if;
    if v_b_agrupamento then
      v_c_result := v_c_result || ' group by ' || v_c_group_by;
    end if;

    return v_c_result;

  end;

  -- Constrói comando update na tabela de origem
  function COMANDO_UPDATE_ORIGEM
  (
    p_n_tipo in integer
  )
  return varchar2
  is

    v_c_result          varchar2(4000);
    v_c_column          varchar2(4000);
    v_c_value           varchar2(4000);
    v_c_columns_values  varchar2(4000);
    v_c_where           varchar2(4000);

  begin

    v_c_result := null;

    v_c_columns_values := '';

    --
    -- Monta clásula set
    --

    if p_n_tipo = UO_LINHA then
      v_c_column := 'status';
      v_c_value  := ':p_status';
    elsif p_n_tipo = UO_LOTE then
      v_c_column := 'status';
      v_c_value  := ':p_status_novo';
    end if;

    if v_c_columns_values is not null then
      v_c_columns_values := v_c_columns_values || ',';
    end if;

    v_c_columns_values := v_c_columns_values || v_c_column || ' = ' || v_c_value;

    --
    -- Monta cláusula where
    --
    if p_n_tipo = UO_LINHA then

      v_c_where := 'rowid = :p_rowid';

    elsif p_n_tipo = UO_LOTE then

      v_c_where := 'proprietario = ''' || mapa.prop_tabela_origem || ''' and tabela = ''' || mapa.tabela_origem || ''' and status = :p_status';

    end if;

    -- Monta comando
    v_c_result := 'update notificacao set ' || v_c_columns_values || ' where ' || v_c_where;

    return v_c_result;

  end;

  -- Constrói comando select na tabela de destino
  function COMANDO_SELECT_DESTINO
  (
    p_n_tipo in integer
  )
  return varchar2
  is

    v_c_result       varchar2(4000);
    v_c_columns      varchar2(4000);
    v_c_from         varchar2(4000);
    v_c_where        varchar2(4000);

  begin

    --
    -- Monta cláusula select
    --
    v_c_columns := 'rowid';

    --
    -- Monta cláusula from
    --
    v_c_from := mapa.prop_tabela_destino || '.' || mapa.tabela_destino;

    --
    -- Monta clásula where
    --

    v_c_where := '';

    if p_n_tipo = SD_REGISTRO_ENCONTRADO then

      for v_n_i in 1..mapa.numero_colunas loop

        if mapa.colunas(v_n_i).chave_pesquisa = 'S' then

          if v_c_where is not null then
            v_c_where := v_c_where || ' and ';
          end if;

          v_c_where := v_c_where || mapa.tabela_destino || '.' || mapa.colunas(v_n_i).coluna_destino || ' = :' || mapa.colunas(v_n_i).coluna_destino;

        end if;

      end loop;

    elsif p_n_tipo = SD_REGISTRO_ATUALIZADO then

      for v_n_i in 1..mapa.numero_colunas loop

        if v_c_where is not null then
          v_c_where := v_c_where || ' and ';
        end if;

        v_c_where := v_c_where || mapa.tabela_destino || '.' || mapa.colunas(v_n_i).coluna_destino || ' = :' || mapa.colunas(v_n_i).coluna_destino;

      end loop;

    end if;

    -- Monta comando
    v_c_result := 'select ' || v_c_columns || ' from ' || v_c_from;
    if v_c_where is not null then
      v_c_result := v_c_result || ' where ' || v_c_where;
    end if;

    return v_c_result;

  end;

  -- Constrói comando insert na tabela de destino
  function COMANDO_INSERT_DESTINO
  return varchar2
  is

    cursor c_coluna
    (
      p_nome_tabela  in tabela.nome_tabela%type,
      p_proprietario in tabela.proprietario%type
    )
    is
      select
        c.nome_coluna,
        c.nome_sequencia
      from
        coluna c,
        tabela t
      where
        t.nome_tabela = p_nome_tabela and
        t.proprietario = p_proprietario and
        c.id_tabela = t.id_tabela;

    r_coluna  c_coluna%rowtype;

    v_c_result   varchar2(4000);
    v_c_column   varchar2(4000);
    v_c_value    varchar2(4000);
    v_c_columns  varchar2(4000);
    v_c_values   varchar2(4000);
    v_n_i        integer;

  begin

    --
    -- Monta cláusulas columns e values
    --

    v_c_columns := '';
    v_c_values  := '';

    open c_coluna (pkg_mapeamento.mapa.tabela_destino, pkg_mapeamento.mapa.prop_tabela_destino);

    loop

      fetch c_coluna into r_coluna;

      exit when c_coluna%notfound;

      v_c_column := r_coluna.nome_coluna;
      v_c_value  := null;

      v_n_i := 1;

      while (v_n_i <= pkg_mapeamento.mapa.numero_colunas) and (v_c_value is null) loop

        -- Caso coluna tenha mapeamento...
        if v_c_column = pkg_mapeamento.mapa.colunas(v_n_i).coluna_destino then

          -- Coluna será igual à parâmetro
          v_c_value := ':' || r_coluna.nome_coluna;

        end if;

        v_n_i := v_n_i + 1;

      end loop;

      -- Caso seja campo para data de inclusão...
      if v_c_column = mapa.coluna_data_inclusao then

        v_c_value := 'sysdate';

      end if;

      if v_c_value is null then

        -- Caso coluna tenha sequência vinculada...
        if r_coluna.nome_sequencia is not null then

          -- Sequência gerará valor para coluna
          v_c_value := pkg_mapeamento.mapa.prop_tabela_destino || '.' || r_coluna.nome_sequencia || '.NEXTVAL';

        else

          -- Coluna será null
          v_c_value := 'null';

        end if;

      end if;

      if v_c_columns is not null then
        v_c_columns := v_c_columns || ',';
      end if;

      v_c_columns := v_c_columns || v_c_column;

      if v_c_values is not null then
        v_c_values := v_c_values || ',';
      end if;

      v_c_values := v_c_values || v_c_value;

    end loop;

    close c_coluna;

    -- Monta comando
    v_c_result := 'insert into ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' (' || v_c_columns || ') values (' || v_c_values || ')';

    return v_c_result;

  end;

  -- Constrói comando update na tabela de destino
  function COMANDO_UPDATE_DESTINO
  return varchar2
  is

    v_c_result          varchar2(4000);
    v_c_column          varchar2(4000);
    v_c_value           varchar2(4000);
    v_c_columns_values  varchar2(4000);

  begin

    v_c_columns_values := '';

    --
    -- Monta clásula set
    --

    for i in 1..pkg_mapeamento.mapa.numero_colunas loop

      v_c_column := pkg_mapeamento.mapa.colunas(i).coluna_destino;
      v_c_value  := ':' || v_c_column;

      if v_c_columns_values is not null then
        v_c_columns_values := v_c_columns_values || ',';
      end if;

      v_c_columns_values := v_c_columns_values || v_c_column || ' = ' || v_c_value;

    end loop;

    -- Caso haja campo para data de alteração...
    if mapa.coluna_data_alteracao is not null then

      v_c_column := mapa.coluna_data_alteracao;
      v_c_value  := 'sysdate';

    end if;

    if v_c_columns_values is not null then
      v_c_columns_values := v_c_columns_values || ',';
    end if;

    v_c_columns_values := v_c_columns_values || v_c_column || ' = ' || v_c_value;

    -- Monta comando
    v_c_result := 'update ' || pkg_mapeamento.mapa.prop_tabela_destino || '.' || pkg_mapeamento.mapa.tabela_destino || ' set ' || v_c_columns_values || ' where rowid = :p_rowid';

    return v_c_result;

  end;

begin

  mapa.numero_colunas := 0;

end PKG_MAPEAMENTO;
/
