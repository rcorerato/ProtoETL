create or replace package PKG_PROCESSO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose : 

  procedure EXECUTA_PROCESSO
  (
    p_id_processo in processo.id_processo%type
  );

  procedure LIMPA_PROCESSAMENTOS
  (
    p_id_processo in processo.id_processo%type
  );

end PKG_PROCESSO;
/
create or replace package body PKG_PROCESSO is

  procedure EXECUTA_PROCESSO
  (
    p_id_processo in processo.id_processo%type
  )
  is

    v_id_processamento  processamento.id_processamento%type;

  begin

    -- Processo em execução
    update processo
    set
      executando = 'S'
    where
      id_processo = p_id_processo;

    -- Abre processamento
    pkg_processamento.abre_processamento(p_id_processo, v_id_processamento);

    commit;

    -- Executa processamento
    pkg_processamento.executa_processamento(v_id_processamento);

    -- Fecha processamento
    pkg_processamento.fecha_processamento(v_id_processamento);

    -- Processo executado
    update processo
    set
      executando          = 'N',
      dat_ultima_execucao = sysdate
    where
      id_processo = p_id_processo;

    commit;

  end;

  procedure LIMPA_PROCESSAMENTOS
  (
    p_id_processo in processo.id_processo%type
  )
  is
  begin

    -- Apaga processamentos
    delete from processamento
    where
      id_processo = p_id_processo;

    -- Atualiza processo
    update processo
    set
      dat_ultima_execucao   = null,
      qtd_execucoes         = null,
      qtd_execucoes_erro    = null
    where
      id_processo = p_id_processo;

  end;

end PKG_PROCESSO;
/
