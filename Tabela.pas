unit Tabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, Buttons, FMTBcd, Rotinas;

type
  TFrmTabela = class(TFormBaseManutencaoDados)
    DtsTabelas: TDataSource;
    DBCboNome_Tabela: TDBLookupComboBox;
    Label4: TLabel;
    BtnColunas: TBitBtn;
    Label1: TLabel;
    EdtPesquisaNome_Tabela: TEdit;
    ClientDataSetID_TABELA: TFMTBCDField;
    ClientDataSetNOME_TABELA: TStringField;
    ClientDataSetPROPRIETARIO: TStringField;
    ClientDataSetDESCRICAO: TStringField;
    Label2: TLabel;
    DBCboProprietario: TDBLookupComboBox;
    DtsProprietarios: TDataSource;
    Label3: TLabel;
    DBEdtDescricao: TDBEdit;
    EdtPesquisaProprietario: TEdit;
    Label5: TLabel;
    SQLDataSetID_TABELA: TFMTBCDField;
    SQLDataSetPROPRIETARIO: TStringField;
    SQLDataSetNOME_TABELA: TStringField;
    SQLDataSetDESCRICAO: TStringField;
    DBEdtProprietario: TDBEdit;
    DBEdtNome_Tabela: TDBEdit;
    ActInclusaoAutomatica: TAction;
    InclusoAutomtica1: TMenuItem;
    QryTabelas: TSQLDataSet;
    QryProprietarios: TSQLDataSet;
    PrvProprietarios: TDataSetProvider;
    PrvTabelas: TDataSetProvider;
    CdsProprietarios: TClientDataSet;
    CdsTabelas: TClientDataSet;
    procedure Controle; override;
    function Consistencia: Boolean; override;
    procedure FormCreate(Sender: TObject);
    procedure BtnColunasClick(Sender: TObject);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure DBCboProprietarioClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure CdsTabelasBeforeOpen(DataSet: TDataSet);
    procedure ActInclusaoAutomaticaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabela: TFrmTabela;

implementation

uses ModuloDados, Coluna, InclusaoAutomaticaTabelas;

{$R *.dfm}

procedure TFrmTabela.Controle;
begin

  inherited;

  DBCboProprietario.Visible := (DataSource.DataSet.State in [dsEdit, dsInsert]);
  DBEdtProprietario.Visible := not DBCboProprietario.Visible;

  DBCboNome_Tabela.Visible := (DataSource.DataSet.State in [dsEdit, dsInsert]);
  DBEdtNome_Tabela.Visible := not DBCboNome_Tabela.Visible;

end;

function TFrmTabela.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROPRIETARIO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA')) then
  begin

    Result := False;

  end;

end;

procedure TFrmTabela.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'TABELA';
  SequenceName := 'SEQ_TABELA';

  ColunaId := 'ID_TABELA';

end;

procedure TFrmTabela.BtnColunasClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.IdTabela := DataSource.DataSet.FieldByName('ID_TABELA').AsInteger;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmTabela.ActAtualizarConsultaExecute(Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Tabela.Text <> '' then
    SQLWhere.Add('T.NOME_TABELA LIKE ''' + EdtPesquisaNome_Tabela.Text + '''');

  if EdtPesquisaProprietario.Text <> '' then
    SQLWhere.Add('T.PROPRIETARIO LIKE ''' + EdtPesquisaProprietario.Text + '''');

  inherited;

end;

procedure TFrmTabela.DBCboProprietarioClick(Sender: TObject);
begin

  inherited;

  with DtsTabelas.DataSet do
  begin
    Close;
    Open;
  end;

end;

procedure TFrmTabela.DataSourceStateChange(Sender: TObject);
begin

  inherited;

  DtsProprietarios.DataSet.Active := (DataSource.DataSet.State in [dsEdit, dsInsert]);
  DtsTabelas.DataSet.Active       := (DataSource.DataSet.State in [dsEdit, dsInsert]);

end;

procedure TFrmTabela.CdsTabelasBeforeOpen(DataSet: TDataSet);
begin

  inherited;

  QryTabelas.Params.ParamByName('OWNER').AsString := DataSource.DataSet.FieldByName('PROPRIETARIO').AsString;

end;

procedure TFrmTabela.ActInclusaoAutomaticaExecute(Sender: TObject);

var
  ModalForm: TFrmInclusaoAutomaticaTabelas;

begin

  inherited;

  ModalForm := TFrmInclusaoAutomaticaTabelas.Create(Self);

  try

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

end.
