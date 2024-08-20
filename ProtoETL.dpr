program ProtoETL;

uses
  Forms,
  Base in 'Repositorio\Base.pas' {FormBase},
  BasePadrao in 'Repositorio\BasePadrao.pas' {FormBasePadrao},
  BasePrincipal in 'Repositorio\BasePrincipal.pas' {FormBasePrincipal},
  BaseManutencaoDados in 'Repositorio\BaseManutencaoDados.pas' {FormBaseManutencaoDados},
  BaseConsultaDados in 'Repositorio\BaseConsultaDados.pas' {FormBaseConsultaDados},
  BaseConfirmarCancelar in 'Repositorio\BaseConfirmarCancelar.pas' {FormBaseConfirmarCancelar},
  BaseTarefa in 'Repositorio\BaseTarefa.pas' {FormBaseTarefa},
  BaseDuasListas in 'Repositorio\BaseDuasListas.pas' {FormBaseDuasListas},
  ExibicaoColunas in 'Biblioteca\ExibicaoColunas.pas' {FrmExibicaoColunas},
  OrdenacaoDados in 'Biblioteca\OrdenacaoDados.pas' {FrmOrdenacaoDados},
  CaixaInformacao in 'Biblioteca\CaixaInformacao.pas' {FrmCaixaInformacao},
  CaixaErro in 'Biblioteca\CaixaErro.pas' {FrmCaixaErro},
  CaixaAdvertencia in 'Biblioteca\CaixaAdvertencia.pas' {FrmCaixaAdvertencia},
  Rotinas in 'Biblioteca\Rotinas.pas',
  DataOrdering in 'Biblioteca\DataOrdering.pas',
  SQLSelect in 'Biblioteca\SQLSelect.pas',
  ModuloDados in 'ModuloDados.pas' {DM: TDataModule},
  Principal in 'Principal.pas' {FrmPrincipal},
  Tabela in 'Tabela.pas' {FrmTabela},
  InclusaoAutomaticaTabelas in 'InclusaoAutomaticaTabelas.pas' {FrmInclusaoAutomaticaTabelas},
  Coluna in 'Coluna.pas' {FrmColuna},
  InclusaoAutomaticaColunas in 'InclusaoAutomaticaColunas.pas' {FrmInclusaoAutomaticaColunas},
  Juncao in 'Juncao.pas' {FrmJuncao},
  InclusaoAutomaticaJuncoes in 'InclusaoAutomaticaJuncoes.pas' {FrmInclusaoAutomaticaJuncoes},
  Mapeamento in 'Mapeamento.pas' {FrmMapeamento},
  Mapeamento_Coluna in 'Mapeamento_Coluna.pas' {FrmMapeamento_Coluna},
  Filtro in 'Filtro.pas' {FrmFiltro},
  Transformacao in 'Transformacao.pas' {FrmTransformacao},
  Consistencia in 'Consistencia.pas' {FrmConsistencia},
  Processo in 'Processo.pas' {FrmProcesso},
  Processamento in 'Processamento.pas' {FrmProcessamento},
  ServidorExecucaoProcessos in 'ServidorExecucaoProcessos.pas' {FrmServidorExecucaoProcessos},
  ExecutaProcesso in 'ExecutaProcesso.pas' {FrmExecutaProcesso},
  LimpezaProcessamentos in 'LimpezaProcessamentos.pas' {FrmLimpezaProcessamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ProtoETL';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
