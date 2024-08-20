create or replace package PKG_ETL is

  -- Author  : RODRIGO
  -- Created : 07/05/2006 15:38:33
  -- Purpose : Rotinas comuns aos processos de Extração, Transformação e Carga

  type t_mapeamento_coluna is record
  (
    id_mapeamento_coluna  integer,
    coluna_origem         varchar2(30),
    coluna_destino        varchar2(30),
    funcao_grupo          varchar2(10),
    tabela_dimensao       varchar2(30),
    coluna_dimensao       varchar2(30)    
  );

  type t_a_mapeamento_coluna is table of t_mapeamento_coluna index by binary_integer;

  tabela_origem                varchar2(30);
  coluna_uk_origem             varchar2(30);
  tabela_destino               varchar2(30);
  coluna_pk_destino            varchar2(30);  
  coluna_uk_destino            varchar2(30);
  sequencia_pk_destino         varchar2(30);
  tipo_atualizacao_dimensao    varchar2(1);
  mapeamento_coluna            t_a_mapeamento_coluna;
  numero_colunas               integer;
  
  procedure CARREGA_MAPEAMENTO
  (
    p_id_mapeamento_tabela in mapeamento_tabela.id_mapeamento_tabela%type
  );

end PKG_ETL;
/
create or replace package body PKG_ETL is

  -- Carrega mapeamento para a memória
  procedure CARREGA_MAPEAMENTO
  (
    p_id_mapeamento_tabela in mapeamento_tabela.id_mapeamento_tabela%type
  )
  is

    cursor c_mapeamento_tabela
    (
      p_id_mapeamento_tabela in mapeamento_tabela.id_mapeamento_tabela%type
    )
    is
      select
        tor.nome_tabela               tabela_origem,
        cukor.nome_coluna             coluna_uk_origem,
        tde.nome_tabela               tabela_destino,
        cukde.nome_coluna             coluna_uk_destino,
        cpkde.nome_coluna             coluna_pk_destino,
        cpkde.nome_sequencia          sequencia_pk_destino,
        mt.tipo_atualizacao_dimensao  tipo_atualizacao_dimensao
      from
        coluna             cpkde,
        coluna             cukde,
        tabela             tde,
        coluna             cukor,
        tabela             tor,
        mapeamento_tabela  mt
      where
        mt.id_mapeamento_tabela = p_id_mapeamento_tabela and
        tor.id_tabela = mt.id_tabela_origem and
        cukor.id_tabela(+) = tor.id_tabela and
        cukor.chave_unica(+) = 'S' and
        tde.id_tabela = mt.id_tabela_destino and
        cukde.id_tabela(+) = tde.id_tabela and
        cukde.chave_unica(+) = 'S' and
        cpkde.id_tabela(+) = tde.id_tabela and
        cpkde.chave_primaria(+) = 'S';
  
    cursor c_mapeamento_coluna
    (
      p_id_mapeamento_tabela in mapeamento_tabela.id_mapeamento_tabela%type
    )
    is
      select
        mc.id_mapeamento_coluna  id_mapeamento_coluna,
        cor.nome_coluna          coluna_origem,
        cde.nome_coluna          coluna_destino,
        mc.funcao_grupo          funcao_grupo,
        cmcor.nome_coluna        coluna_dimensao,
        tmcor.nome_tabela        tabela_dimensao
      from
        coluna             cde,
        tabela             tmcor,
        mapeamento_tabela  mtor,
        coluna             cmcor,
        mapeamento_coluna  mcor,
        coluna             cor,
        mapeamento_coluna  mc
      where
        mc.id_mapeamento_tabela = p_id_mapeamento_tabela and
        cor.id_coluna = mc.id_coluna_origem and
        cor.chave_primaria = 'N' and
        cor.chave_unica = 'N' and
        mcor.id_mapeamento_coluna(+) = mc.id_mapeamento_coluna_origem and
        cmcor.id_coluna(+) = mcor.id_coluna_destino and
        mtor.id_mapeamento_tabela(+) = mcor.id_mapeamento_tabela and
        tmcor.id_tabela(+) = mtor.id_tabela_destino and
        cde.id_coluna = mc.id_coluna_destino and
        cde.chave_primaria = 'N' and
        cde.chave_unica = 'N'
      order by
        funcao_grupo nulls first,
        coluna_destino,
        tabela_dimensao;

    r_mapeamento_tabela  c_mapeamento_tabela%rowtype;  
    r_mapeamento_coluna  c_mapeamento_coluna%rowtype;

  begin
  
    open c_mapeamento_tabela (p_id_mapeamento_tabela);

    fetch c_mapeamento_tabela into r_mapeamento_tabela;
    
    if c_mapeamento_tabela%found then

      tabela_origem              := r_mapeamento_tabela.tabela_origem;
      coluna_uk_origem           := r_mapeamento_tabela.coluna_uk_origem;
      tabela_destino             := r_mapeamento_tabela.tabela_destino;
      coluna_uk_destino          := r_mapeamento_tabela.coluna_uk_destino;
      coluna_pk_destino          := r_mapeamento_tabela.coluna_pk_destino;
      sequencia_pk_destino       := r_mapeamento_tabela.sequencia_pk_destino;
      tipo_atualizacao_dimensao  := r_mapeamento_tabela.tipo_atualizacao_dimensao;
    
      open c_mapeamento_coluna (p_id_mapeamento_tabela);

      numero_colunas := 0;
      
      loop
      
        fetch c_mapeamento_coluna into r_mapeamento_coluna;
        
        exit when c_mapeamento_coluna%notfound;
        
        numero_colunas := numero_colunas + 1;
        
        mapeamento_coluna(numero_colunas).id_mapeamento_coluna := r_mapeamento_coluna.id_mapeamento_coluna;
        mapeamento_coluna(numero_colunas).coluna_origem        := r_mapeamento_coluna.coluna_origem;
        mapeamento_coluna(numero_colunas).coluna_destino       := r_mapeamento_coluna.coluna_destino;
        mapeamento_coluna(numero_colunas).funcao_grupo         := r_mapeamento_coluna.funcao_grupo;
        mapeamento_coluna(numero_colunas).tabela_dimensao      := r_mapeamento_coluna.tabela_dimensao;
        mapeamento_coluna(numero_colunas).coluna_dimensao      := r_mapeamento_coluna.coluna_dimensao;
        
      end loop;

      close c_mapeamento_coluna;
      
    end if;
    
    close c_mapeamento_tabela;
  
  end;

end PKG_ETL;
/
