unit BaseManutencaoDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseConsultaDados, FMTBcd, SqlExpr, Provider, DB, DBClient,
  Menus, ImgList, ActnList, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls,
  ToolWin, Rotinas;

type
  TFormBaseManutencaoDados = class(TFormBaseConsultaDados)
    ActNovoRegistro: TAction;
    ActNovoRegistroIgual: TAction;
    ActModificarRegistro: TAction;
    ActExcluirRegistro: TAction;
    ActConfirmarDados: TAction;
    ActConfirmarDadosNovoRegistro: TAction;
    ActConfirmarDadosNovoRegistroIgual: TAction;
    ActCancelarDados: TAction;
    N4: TMenuItem;
    N3: TMenuItem;
    Novo1: TMenuItem;
    Modificar1: TMenuItem;
    Excluir1: TMenuItem;
    Confirmar1: TMenuItem;
    Cancelar1: TMenuItem;
    Novo2: TMenuItem;
    Novoigual1: TMenuItem;
    PumNovo: TPopupMenu;
    Novoigual2: TMenuItem;
    PumConfirmar: TPopupMenu;
    ConfirmareNovo1: TMenuItem;
    ConfirmareNovoigual1: TMenuItem;
    ToolButton3: TToolButton;
    BtnNovoRegistro: TToolButton;
    BtnModificarRegistro: TToolButton;
    BtnExcluirRegistro: TToolButton;
    BtnConfirmarDados: TToolButton;
    BtnCancelarDados: TToolButton;
    N6: TMenuItem;
    Novo4: TMenuItem;
    Modificar2: TMenuItem;
    Excluir2: TMenuItem;
    procedure Controle; virtual;
    function Consistencia: Boolean; virtual;
    procedure PreparaTelaRegistro;
    procedure PreparaTelaTabela;
    procedure FormCreate(Sender: TObject);
    procedure ActNovoRegistroExecute(Sender: TObject);
    procedure ActNovoRegistroIgualExecute(Sender: TObject);
    procedure ActModificarRegistroExecute(Sender: TObject);
    procedure ActExcluirRegistroExecute(Sender: TObject);
    procedure ActConfirmarDadosExecute(Sender: TObject);
    procedure ActConfirmarDadosNovoRegistroExecute(Sender: TObject);
    procedure ActConfirmarDadosNovoRegistroIgualExecute(Sender: TObject);
    procedure ActCancelarDadosExecute(Sender: TObject);
    procedure ClientDataSetAfterOpen(DataSet: TDataSet);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
    procedure ClientDataSetAfterPost(DataSet: TDataSet);
    procedure ClientDataSetAfterDelete(DataSet: TDataSet);
    procedure DBGridDblClick(Sender: TObject);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure DataSourceStateChange(Sender: TObject);
  private
    FPermitirInclusao: Boolean;
    FPermitirAlteracao: Boolean;
    FPermitirExclusao: Boolean;
    FSequenceName: String;
    FPaginaPesquisaVisivel: Boolean;
    function GetSomenteConsulta: Boolean;
    procedure SetPermitirInclusao(const Value: Boolean);
    procedure SetPermitirAlteracao(const Value: Boolean);
    procedure SetPermitirExclusao(const Value: Boolean);
    procedure SetSomenteConsulta(const Value: Boolean);
  public
    property PermitirInclusao: Boolean read FPermitirInclusao write SetPermitirInclusao;
    property PermitirAlteracao: Boolean read FPermitirAlteracao write SetPermitirAlteracao;
    property PermitirExclusao: Boolean read FPermitirExclusao write SetPermitirExclusao;
    property SomenteConsulta: Boolean read GetSomenteConsulta write SetSomenteConsulta;
    property SequenceName: String read FSequenceName write FSequenceName;
  end;

var
  FormBaseManutencaoDados: TFormBaseManutencaoDados;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFormBaseManutencaoDados.SetPermitirInclusao(
  const Value: Boolean);
begin

  FPermitirInclusao := Value;

  Controle;

end;

procedure TFormBaseManutencaoDados.SetPermitirAlteracao(
  const Value: Boolean);
begin

  FPermitirAlteracao := Value;

  Controle;

end;

procedure TFormBaseManutencaoDados.SetPermitirExclusao(
  const Value: Boolean);
begin

  FPermitirExclusao := Value;

  Controle;

end;

function TFormBaseManutencaoDados.GetSomenteConsulta: Boolean;
begin

  Result := (not PermitirInclusao) and (not PermitirAlteracao) and (not PermitirExclusao);

end;

procedure TFormBaseManutencaoDados.SetSomenteConsulta(
  const Value: Boolean);
begin

  PermitirInclusao  := False;
  PermitirAlteracao := False;
  PermitirExclusao  := False;

end;

procedure TFormBaseManutencaoDados.Controle;
begin

  inherited;

  // Controle de visibilidade

  ActNovoRegistro.Visible       := FPermitirInclusao;
  ActModificarRegistro.Visible  := FPermitirAlteracao;
  ActExcluirRegistro.Visible    := FPermitirExclusao;
  ActConfirmarDados.Visible     := FPermitirInclusao or FPermitirAlteracao;
  ActCancelarDados.Visible      := FPermitirInclusao or FPermitirAlteracao;

  // Controle de habilitação

  ActNovoRegistro.Enabled                    := ClientDataSet.Active and (not (ClientDataSet.State in [dsEdit, dsInsert]));
  ActNovoRegistroIgual.Enabled               := ClientDataSet.Active and (not ClientDataSet.Eof) and (not (ClientDataSet.State in [dsEdit, dsInsert])) and ((PageControl.ActivePage = TabTabela) or (PageControl.ActivePage = TabRegistro));
  ActModificarRegistro.Enabled               := ClientDataSet.Active and (not ClientDataSet.Eof) and (not (ClientDataSet.State in [dsEdit, dsInsert])) and ((PageControl.ActivePage = TabTabela) or (PageControl.ActivePage = TabRegistro));
  ActExcluirRegistro.Enabled                 := ClientDataSet.Active and (not ClientDataSet.Eof) and (not (ClientDataSet.State in [dsEdit, dsInsert])) and ((PageControl.ActivePage = TabTabela) or (PageControl.ActivePage = TabRegistro));
  ActConfirmarDados.Enabled                  := ClientDataSet.Active and (ClientDataSet.State in [dsEdit, dsInsert]) and (PageControl.ActivePage = TabRegistro);
  ActConfirmarDadosNovoRegistro.Enabled      := ActConfirmarDados.Enabled;
  ActConfirmarDadosNovoRegistroIgual.Enabled := ActConfirmarDados.Enabled;
  ActCancelarDados.Enabled                   := ClientDataSet.Active and (ClientDataSet.State in [dsEdit, dsInsert]) and (PageControl.ActivePage = TabRegistro);

  HabilitaControles(PnlRegistro, (ClientDataSet.State in [dsEdit, dsInsert]));

end;

function TFormBaseManutencaoDados.Consistencia: Boolean;
begin

  Result := True;

end;

procedure TFormBaseManutencaoDados.PreparaTelaRegistro;
begin

  SalvaPagina;

  MudaPagina(TabRegistro);

  FPaginaPesquisaVisivel := TabPesquisa.TabVisible;

  TabPesquisa.TabVisible := False;
  TabTabela.TabVisible   := False;

end;

procedure TFormBaseManutencaoDados.PreparaTelaTabela;
begin

  TabTabela.TabVisible   := True;
  TabPesquisa.TabVisible := FPaginaPesquisaVisivel;

  RestauraPagina;

  Controle;

end;

procedure TFormBaseManutencaoDados.FormCreate(Sender: TObject);
begin

  inherited;

  FPermitirInclusao  := True;
  FPermitirAlteracao := True;
  FPermitirExclusao  := True;
  FSequenceName      := '';

  Controle;

end;

procedure TFormBaseManutencaoDados.ActNovoRegistroExecute(
  Sender: TObject);
begin

  inherited;

  PreparaTelaRegistro;

  ClientDataSet.Append;

  FocalizaPrimeiro(PnlRegistro);

end;

procedure TFormBaseManutencaoDados.ActNovoRegistroIgualExecute(
  Sender: TObject);

var
  aValues: Array of Variant;
  i: Integer;

begin

  inherited;

  PreparaTelaRegistro;

  SetLength(aValues, ClientDataSet.FieldCount);
  for i := 0 to High(aValues)-1 do
    aValues[i] := ClientDataSet.Fields[i].Value;

  ClientDataSet.Append;

  for i := 0 to High(aValues)-1 do
    if ClientDataSet.Fields[i].IsNull then
      ClientDataSet.Fields[i].Value := aValues[i];

  FocalizaPrimeiro(PnlRegistro);

end;

procedure TFormBaseManutencaoDados.ActModificarRegistroExecute(
  Sender: TObject);
begin

  inherited;

  PreparaTelaRegistro;

  ClientDataSet.Edit;

  FocalizaPrimeiro(PnlRegistro);

end;

procedure TFormBaseManutencaoDados.ActExcluirRegistroExecute(
  Sender: TObject);
begin

  inherited;

  PreparaTelaRegistro;

  try

    if MessageBox(Handle, 'Confirma exclusão de registro?', 'Exclusão', mb_YesNo+mb_IconQuestion) = idYes then
      ClientDataSet.Delete;

  finally

    PreparaTelaTabela;

  end;

end;

procedure TFormBaseManutencaoDados.ActConfirmarDadosExecute(
  Sender: TObject);
begin

  inherited;

  if Consistencia then
  begin

    ClientDataSet.Post;

    PreparaTelaTabela;

  end;

end;

procedure TFormBaseManutencaoDados.ActConfirmarDadosNovoRegistroExecute(
  Sender: TObject);
begin

  inherited;

  if Consistencia then
  begin

    ActConfirmarDados.Execute;
    ActNovoRegistro.Execute;

  end;

end;

procedure TFormBaseManutencaoDados.ActConfirmarDadosNovoRegistroIgualExecute(
  Sender: TObject);
begin

  inherited;

  if Consistencia then
  begin

    ActConfirmarDados.Execute;
    ActNovoRegistroIgual.Execute;

  end;

end;

procedure TFormBaseManutencaoDados.ActCancelarDadosExecute(
  Sender: TObject);
begin

  inherited;

  ClientDataSet.Cancel;

  PreparaTelaTabela;

end;

procedure TFormBaseManutencaoDados.ClientDataSetAfterOpen(
  DataSet: TDataSet);
begin

  inherited;

  DataSet.Locate(ColunaId, Id, []);

end;

procedure TFormBaseManutencaoDados.ClientDataSetNewRecord(
  DataSet: TDataSet);
begin

  inherited;

  DataSet.FieldByName(ColunaId).AsInteger := DM.NextSequenceValue(SequenceName);
  
end;

procedure TFormBaseManutencaoDados.ClientDataSetAfterPost(
  DataSet: TDataSet);

var
  sMensagem: String;

begin

  inherited;

  sMensagem := ExibeMensagem('Gravando registro...');

  try

    ClientDataSet.ApplyUpdates(0);

  finally

    ExibeMensagem(sMensagem);

  end;

end;

procedure TFormBaseManutencaoDados.ClientDataSetAfterDelete(
  DataSet: TDataSet);

var
  sMensagem: String;

begin

  inherited;

  sMensagem := ExibeMensagem('Apagando registro...');

  try

    ClientDataSet.ApplyUpdates(0);

  finally

    ExibeMensagem(sMensagem);

  end;

end;

procedure TFormBaseManutencaoDados.DBGridDblClick(Sender: TObject);
begin

  if ModoSelecao then
    ActSelecionarRegistro.Execute
  else if PermitirAlteracao then
    ActModificarRegistro.Execute
  else
    MudaPagina(TabRegistro);

end;

procedure TFormBaseManutencaoDados.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  inherited;

  Controle;

end;

procedure TFormBaseManutencaoDados.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  Controle;
  
end;

procedure TFormBaseManutencaoDados.DataSourceStateChange(Sender: TObject);
begin

  inherited;

  Controle;
  
end;

end.
