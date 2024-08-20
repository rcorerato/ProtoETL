unit BaseConsultaDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ImgList, ActnList, Menus, ComCtrls, ToolWin,
  ExtCtrls, DBCtrls, Grids, DBGrids, Provider, SqlExpr, DB, DBClient,
  FMTBcd, ClipBrd, SQLSelect, Rotinas, DataOrdering;

type
  TFormBaseConsultaDados = class(TFormBasePadrao)
    Formulrio1: TMenuItem;
    Consulta1: TMenuItem;
    abela1: TMenuItem;
    Registro1: TMenuItem;
    ActSair: TAction;
    BtnSair: TToolButton;
    Sair1: TMenuItem;
    ActExibicaoColunas: TAction;
    ActNovaPesquisa: TAction;
    ActPrimeiroRegistro: TAction;
    ActAnteriorRegistro: TAction;
    ActProximoRegistro: TAction;
    ActUltimoRegistro: TAction;
    N1: TMenuItem;
    NovaPesquisa1: TMenuItem;
    Primeiro1: TMenuItem;
    ltimo1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ToolButton1: TToolButton;
    BtnNovaPesquisa: TToolButton;
    ActAtualizarConsulta: TAction;
    Atualizar1: TMenuItem;
    BtnAtualizarConsulta: TToolButton;
    PageControl: TPageControl;
    PnlFerramentas: TPanel;
    TabPesquisa: TTabSheet;
    TabTabela: TTabSheet;
    TabRegistro: TTabSheet;
    DBGrid: TDBGrid;
    ActSelecionarRegistro: TAction;
    Selecionar1: TMenuItem;
    BtnSelecionarRegistro: TToolButton;
    PumTabela: TPopupMenu;
    N5: TMenuItem;
    Atualizar2: TMenuItem;
    Selecionar2: TMenuItem;
    DataSource: TDataSource;
    PnlMestre: TPanel;
    Bevel2: TBevel;
    ActOrdenarConsulta: TAction;
    Ordenar1: TMenuItem;
    BtnOrdenarConsulta: TToolButton;
    ExibiodeColunas1: TMenuItem;
    SQLDataSet: TSQLDataSet;
    TlbRegistro: TToolBar;
    PnlRegistro: TPanel;
    PnlRegistroSuperior: TPanel;
    PagRegistro: TPageControl;
    TabRegistroPrincipal: TTabSheet;
    Bevel1: TBevel;
    PnlRegistroInferior: TPanel;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    Ferramentas1: TMenuItem;
    PnlDetalhe: TPanel;
    TlbTabela: TToolBar;
    DBNavigator: TDBNavigator;
    procedure Controle; virtual;
    procedure ControlePainelMestre;
    procedure ControlePainelDetalhe;
    procedure SalvaPagina;
    procedure RestauraPagina;
    procedure MudaPagina(TabSheet: TTabSheet);
    procedure DesindexaConsulta;
    procedure IndexaConsulta(sFields, sDescFields: String);
    procedure OrdenaConsulta;
    procedure SalvaSQLOriginal;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActExibicaoColunasExecute(Sender: TObject);
    procedure ActNovaPesquisaExecute(Sender: TObject);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure ActOrdenarConsultaExecute(Sender: TObject);
    procedure ActPrimeiroRegistroExecute(Sender: TObject);
    procedure ActAnteriorRegistroExecute(Sender: TObject);
    procedure ActProximoRegistroExecute(Sender: TObject);
    procedure ActUltimoRegistroExecute(Sender: TObject);
    procedure ActSelecionarRegistroExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure DataSetProviderGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure ClientDataSetAfterOpen(DataSet: TDataSet);
  private
    FModoSelecao: Boolean;
    FPermitirPesquisa: Boolean;
    FIniciarAtualizado: Boolean;
    FPermitirDetalharRegistro: Boolean;
    FDataOrderingCriteria: TDataOrderingCriteria;
    FIndicePaginaConsulta: Integer;
    FIndexFields: String;
    FIndexDescFields: String;
    FTableName: String;
    FColunaId: String;
    FColunaCodigo: String;
    FId: Integer;
    FCodigo: String;
    FSQLSelectOriginal: TSQLSelect;
    FSQLWhere: TStringList;
    FSQLWhereMestre: TStringList;
    procedure SetModoSelecao(const Value: Boolean);
    procedure SetPermitirPesquisa(const Value: Boolean);
    procedure SetPermitirDetalharRegistro(const Value: Boolean);
  public
    property ModoSelecao: Boolean read FModoSelecao write SetModoSelecao;
    property PermitirPesquisa: Boolean read FPermitirPesquisa write SetPermitirPesquisa;
    property IniciarAtualizado: Boolean read FIniciarAtualizado write FIniciarAtualizado;
    property PermitirDetalharRegistro: Boolean read FPermitirDetalharRegistro write SetPermitirDetalharRegistro;
    property DataOrderingCriteria: TDataOrderingCriteria read FDataOrderingCriteria write FDataOrderingCriteria;
    property TableName: String read FTableName write FTableName;
    property ColunaId: String read FColunaId write FColunaId;
    property ColunaCodigo: String read FColunaCodigo write FColunaCodigo;
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property SQLWhere: TStringList read FSQLWhere write FSQLWhere;
    property SQLWhereMestre: TStringList read FSQLWhereMestre write FSQLWhereMestre;
  end;

var
  FormBaseConsultaDados: TFormBaseConsultaDados;

implementation

uses OrdenacaoDados, ExibicaoColunas, ModuloDados;

{$R *.dfm}

procedure TFormBaseConsultaDados.SetModoSelecao(const Value: Boolean);
begin

  FModoSelecao := Value;

  Controle;

end;

procedure TFormBaseConsultaDados.SetPermitirPesquisa(
  const Value: Boolean);
begin

  FPermitirPesquisa := Value;

  FIniciarAtualizado := not FPermitirPesquisa;

  TabPesquisa.TabVisible := FPermitirPesquisa and (TabPesquisa.ControlCount > 1);

  Controle;

end;

procedure TFormBaseConsultaDados.SetPermitirDetalharRegistro(
  const Value: Boolean);
begin

  FPermitirDetalharRegistro := Value;

  TabRegistro.TabVisible := FPermitirDetalharRegistro;

  Controle;

end;

procedure TFormBaseConsultaDados.Controle;
begin

  inherited;

  // Controle de visibilidade

  PnlFerramentas.Visible      := (PnlFerramentas.ControlCount > 0) and (PageControl.ActivePage <> TabPesquisa);
  PnlRegistroInferior.Visible := (PnlRegistroInferior.ControlCount > 0);

  ActNovaPesquisa.Visible       := FPermitirPesquisa;
  ActSelecionarRegistro.Visible := FModoSelecao;

  // Controle de habilitação

  DBNavigator.Enabled           := DataSource.DataSet.Active and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));

  ActSair.Enabled               := (not (DataSource.DataSet.State in [dsEdit, dsInsert]));
  ActNovaPesquisa.Enabled       := not (DataSource.DataSet.State in [dsEdit, dsInsert]) and ((PageControl.ActivePage = TabTabela) or (PageControl.ActivePage = TabRegistro));
  ActExibicaoColunas.Enabled    := (DBGrid.Columns.Count > 0) and (DBGrid.Columns[0].FieldName <> '') and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));
  ActAtualizarConsulta.Enabled  := (SQLDataSet.CommandText <> '') and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));
  ActOrdenarConsulta.Enabled    := DataSource.DataSet.Active and (not (DataSource.DataSet.State in [dsEdit, dsInsert])) and (PageControl.ActivePage = TabTabela);
  ActSelecionarRegistro.Enabled := DataSource.DataSet.Active and (not DataSource.DataSet.Eof) and not (DataSource.DataSet.State in [dsEdit, dsInsert]) and ((PageControl.ActivePage = TabTabela) or (PageControl.ActivePage = TabRegistro));
  ActPrimeiroRegistro.Enabled   := DataSource.DataSet.Active and (not DataSource.DataSet.Bof) and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));
  ActAnteriorRegistro.Enabled   := DataSource.DataSet.Active and (not DataSource.DataSet.Bof) and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));
  ActProximoRegistro.Enabled    := DataSource.DataSet.Active and (not DataSource.DataSet.Eof) and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));
  ActUltimoRegistro.Enabled     := DataSource.DataSet.Active and (not DataSource.DataSet.Eof) and (not (DataSource.DataSet.State in [dsEdit, dsInsert]));

  HabilitaControles(PnlRegistro, (DataSource.DataSet.State in [dsEdit, dsInsert]));

end;

procedure TFormBaseConsultaDados.ControlePainelMestre;

var
  bControleVisivel: Boolean;
  i: Integer;

begin

  inherited;

  bControleVisivel := False;

  i := 0;

  while (i <= PnlMestre.ControlCount-1) and (not bControleVisivel) do
  begin

    if PnlMestre.Controls[i].Visible then
      bControleVisivel := True;

    Inc(i);

  end;

  PnlMestre.Visible := bControleVisivel;

end;

procedure TFormBaseConsultaDados.ControlePainelDetalhe;

var
  bControleVisivel: Boolean;
  i: Integer;

begin

  inherited;

  bControleVisivel := False;

  i := 0;

  while (i <= PnlDetalhe.ControlCount-1) and (not bControleVisivel) do
  begin

    if PnlDetalhe.Controls[i].Visible then
      bControleVisivel := True;

    Inc(i);

  end;

  PnlDetalhe.Visible := bControleVisivel;

end;

procedure TFormBaseConsultaDados.SalvaPagina;
begin

  FIndicePaginaConsulta := PageControl.ActivePageIndex;

end;

procedure TFormBaseConsultaDados.RestauraPagina;
begin

  if FIndicePaginaConsulta > -1 then
  begin

    PageControl.ActivePageIndex := FIndicePaginaConsulta;
    FIndicePaginaConsulta := -1;

  end;

end;

procedure TFormBaseConsultaDados.MudaPagina(TabSheet: TTabSheet);
begin

  if TabSheet.TabVisible then
    PageControl.ActivePage := TabSheet;

  Controle;

end;

procedure TFormBaseConsultaDados.DesindexaConsulta;
begin

  if ClientDataSet.IndexName <> '' then
  begin

    ClientDataSet.DeleteIndex(ClientDataSet.IndexName);

    ClientDataSet.IndexName := '';

    FIndexFields     := '';
    FIndexDescFields := '';

  end;

end;

procedure TFormBaseConsultaDados.IndexaConsulta(sFields, sDescFields: String);
begin

  DesindexaConsulta;

  ClientDataSet.AddIndex(Name, sFields, [], sDescFields);
  ClientDataSet.IndexName := Name;

  FIndexFields     := sFields;
  FIndexDescFields := sDescFields;

end;

procedure TFormBaseConsultaDados.OrdenaConsulta;

var
  sMensagem, sFields, sDescFields: String;
  i: Integer;

begin

  sMensagem := ExibeMensagem('Ordenando consulta...');

  try

    sFields     := '';
    sDescFields := '';

    for i := 0 to FDataOrderingCriteria.Count-1 do
    begin

      if sFields <> '' then
        sFields := sFields + ';';

      sFields := sFields + FDataOrderingCriteria.Items[i].FieldName;

      if FDataOrderingCriteria.Items[i].Descending then
      begin

        if sDescFields <> '' then
          sDescFields := sDescFields + ';';

        sDescFields := sDescFields + FDataOrderingCriteria.Items[i].FieldName;

      end;

    end;

    if sFields = '' then
      DesindexaConsulta
    else
      IndexaConsulta(sFields, sDescFields);

  finally

    ExibeMensagem(sMensagem);

  end;

end;

procedure TFormBaseConsultaDados.SalvaSQLOriginal;

var
  SQL: TStringList;

begin

  SQL := TStringList.Create;

  try

    SQL.Text := SQLDataSet.CommandText;

    FSQLSelectOriginal.SetSQL(SQL);

  finally

    SQL.Destroy;

  end;

end;

procedure TFormBaseConsultaDados.FormCreate(Sender: TObject);
begin

  FModoSelecao              := False;
  FPermitirPesquisa         := (TabPesquisa.ControlCount > 1);
  FIniciarAtualizado        := False;
  FPermitirDetalharRegistro := True;
  FIndexFields              := '';
  FIndexDescFields          := '';

  TabPesquisa.TabVisible := FPermitirPesquisa;

  FColunaId     := '';
  FColunaCodigo := '';
  FId           := 0;
  FCodigo       := '';
  FTableName    := '';

  FSQLSelectOriginal := TSQLSelect.Create;

  FDataOrderingCriteria := TDataOrderingCriteria.Create;

  FSQLWhere         := TStringList.Create;
  FSQLWhereMestre   := TStringList.Create;

  FSQLWhere.Clear;
  FSQLWhereMestre.Clear;

  PnlMestre.Visible := (PnlMestre.ControlCount > 0);
  
  inherited;

  SalvaSQLOriginal;

  ControlePainelMestre;
  ControlePainelDetalhe;

  Controle;

end;

procedure TFormBaseConsultaDados.FormShow(Sender: TObject);
begin

  inherited;

  FocalizaPrimeiro(TabPesquisa);

  if FIniciarAtualizado or (not FPermitirPesquisa) then
    ActAtualizarConsulta.Execute;

end;

procedure TFormBaseConsultaDados.FormDestroy(Sender: TObject);
begin

  FSQLSelectOriginal.Destroy;

  FDataOrderingCriteria.Destroy;

  FSQLWhere.Free;
  FSQLWhereMestre.Free;

  inherited;

end;

procedure TFormBaseConsultaDados.PageControlChange(Sender: TObject);
begin

  inherited;

  Controle;

end;

procedure TFormBaseConsultaDados.DBGridDblClick(Sender: TObject);
begin

  inherited;

  if ModoSelecao then
    ActSelecionarRegistro.Execute
  else
    MudaPagina(TabRegistro);

end;

procedure TFormBaseConsultaDados.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFormBaseConsultaDados.ActExibicaoColunasExecute(
  Sender: TObject);

var
  ModalForm: TFrmExibicaoColunas;

begin

  inherited;

  ModalForm := TFrmExibicaoColunas.Create(Application);

  try

    ModalForm.DBGrid := DBGrid;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFormBaseConsultaDados.ActNovaPesquisaExecute(Sender: TObject);
begin

  inherited;

  MudaPagina(TabPesquisa);

end;

procedure TFormBaseConsultaDados.ActAtualizarConsultaExecute(
  Sender: TObject);

var
  sMensagem, sFields, sDescFields: String;
  SQLSelectAtualizar: TSQLSelect;

begin

  inherited;

  sMensagem := ExibeMensagem('Gerando consulta...');

  try

    MudaPagina(TabTabela);

    sFields     := FIndexFields;
    sDescFields := FIndexDescFields;

    DesindexaConsulta;

    if ClientDataSet.Active then
      ClientDataSet.Close;

    SQLSelectAtualizar := TSQLSelect.Create;

    try

      SQLSelectAtualizar.SetSQL(FSQLSelectOriginal.GetSQL);

      if SQLWhereMestre.Count > 0 then
        SQLSelectAtualizar.WhereClause.SetSQL(SQLWhereMestre);

      if SQLWhere.Count > 0 then
        SQLSelectAtualizar.WhereClause.SetSQL(SQLWhere);

      // Reconfigura comando SQL
      SQLDataSet.CommandText := SQLSelectAtualizar.GetSQL.Text;

    finally

      SQLSelectAtualizar.Free;

    end;

    ClientDataSet.Open;

    if sFields <> '' then
      IndexaConsulta(sFields, sDescFields);

    if DBGrid.CanFocus then
      DBGrid.SetFocus;

  finally

    ExibeMensagem(sMensagem);

  end;

end;

procedure TFormBaseConsultaDados.ActOrdenarConsultaExecute(
  Sender: TObject);

var
  ModalForm: TFrmOrdenacaoDados;
  i: Integer;

begin

  inherited;

  ModalForm := TFrmOrdenacaoDados.Create(Self);

  try

    ModalForm.ListaCampos.Clear;
    for i := 0 to DBGrid.Columns.Count-1 do
      if DBGrid.Columns[i].Visible then
        ModalForm.ListaCampos.Add(DBGrid.Columns[i].FieldName + '=' + DBGrid.Columns[i].Field.DisplayLabel);

    ModalForm.DataOrderingCriteria.Clear;
    for i := 0 to FDataOrderingCriteria.Count-1 do
      ModalForm.DataOrderingCriteria.AddItem(FDataOrderingCriteria.Items[i].FieldName, FDataOrderingCriteria.Items[i].Descending);

    if ModalForm.ShowModal = mrOk then
    begin

      FDataOrderingCriteria.Clear;
      for i := 0 to ModalForm.DataOrderingCriteria.Count-1 do
        FDataOrderingCriteria.AddItem(ModalForm.DataOrderingCriteria.Items[i].FieldName, ModalForm.DataOrderingCriteria.Items[i].Descending);

      OrdenaConsulta;

    end;

  finally

    ModalForm.Free;

  end;

end;

procedure TFormBaseConsultaDados.ActPrimeiroRegistroExecute(
  Sender: TObject);
begin

  inherited;

  DBNavigator.DataSource.DataSet.First;

end;

procedure TFormBaseConsultaDados.ActAnteriorRegistroExecute(
  Sender: TObject);
begin

  inherited;

  DBNavigator.DataSource.DataSet.Prior;

end;

procedure TFormBaseConsultaDados.ActProximoRegistroExecute(
  Sender: TObject);
begin

  inherited;

  DBNavigator.DataSource.DataSet.Next;

end;

procedure TFormBaseConsultaDados.ActUltimoRegistroExecute(
  Sender: TObject);
begin

  inherited;

  DBNavigator.DataSource.DataSet.Last;

end;

procedure TFormBaseConsultaDados.ActSelecionarRegistroExecute(
  Sender: TObject);
begin

  inherited;

  Id := 0;
  if ColunaId <> '' then
    Id := DataSource.DataSet.FieldByName(ColunaId).AsInteger;

  Codigo := '';
  if ColunaCodigo <> '' then
    Codigo := DataSource.DataSet.FieldByName(ColunaCodigo).AsString;

  ModalResult := mrOk;
  Close;

end;

procedure TFormBaseConsultaDados.DataSourceStateChange(Sender: TObject);
begin

  inherited;

  Controle;

end;

procedure TFormBaseConsultaDados.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  Controle;

end;

procedure TFormBaseConsultaDados.DataSetProviderGetTableName(
  Sender: TObject; DataSet: TDataSet; var TableName: String);
begin

  inherited;

  TableName := FTableName;

end;

procedure TFormBaseConsultaDados.ClientDataSetAfterOpen(
  DataSet: TDataSet);
begin

  inherited;

  if ColunaCodigo <> '' then
    DataSet.Locate(ColunaCodigo, Codigo, [])
  else if ColunaId <> '' then
    DataSet.Locate(ColunaId, Id, []);

end;

end.
