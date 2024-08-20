unit Coluna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Spin, Rotinas;

type
  TFrmColuna = class(TFormBaseManutencaoDados)
    Label1: TLabel;
    DBEdtNome_Tabela: TDBEdit;
    Label2: TLabel;
    BtnTabela: TButton;
    PnlMestreTabela: TPanel;
    Label3: TLabel;
    EdtMestreNome_Tabela: TEdit;
    Label4: TLabel;
    EdtPesquisaNome_Tabela: TEdit;
    EdtPesquisaNome_Coluna: TEdit;
    Label5: TLabel;
    SQLDataSetID_COLUNA: TFMTBCDField;
    SQLDataSetID_TABELA: TFMTBCDField;
    SQLDataSetNOME_TABELA: TStringField;
    SQLDataSetNOME_COLUNA: TStringField;
    ClientDataSetID_COLUNA: TFMTBCDField;
    ClientDataSetID_TABELA: TFMTBCDField;
    ClientDataSetNOME_TABELA: TStringField;
    ClientDataSetNOME_COLUNA: TStringField;
    DtsColunas: TDataSource;
    DBCboNome_Coluna: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    SQLDataSetCHAVE_PRIMARIA: TStringField;
    ClientDataSetCHAVE_PRIMARIA: TStringField;
    Label6: TLabel;
    DBEdtProprietario: TDBEdit;
    SQLDataSetPROPRIETARIO: TStringField;
    ClientDataSetPROPRIETARIO: TStringField;
    SQLDataSetNOME_SEQUENCIA: TStringField;
    ClientDataSetNOME_SEQUENCIA: TStringField;
    DBCboNome_Sequencia: TDBLookupComboBox;
    Label7: TLabel;
    DtsSequencias: TDataSource;
    DBEdtNome_Coluna: TDBEdit;
    DBEdtNome_Sequencia: TDBEdit;
    ActInclusaoAutomatica: TAction;
    InclusoAutomtica1: TMenuItem;
    SQLDataSetORDEM: TFMTBCDField;
    ClientDataSetORDEM: TFMTBCDField;
    Label8: TLabel;
    DBEdtOrdem: TDBEdit;
    QryColunas: TSQLDataSet;
    QrySequencias: TSQLDataSet;
    PrvColunas: TDataSetProvider;
    CdsColunas: TClientDataSet;
    PrvSequencias: TDataSetProvider;
    CdsSequencias: TClientDataSet;
    procedure Controle; override;
    function Consistencia: Boolean; override;
    procedure FormCreate(Sender: TObject);
    procedure BtnTabelaClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure CdsColunasBeforeOpen(DataSet: TDataSet);
    procedure CdsSequenciasBeforeOpen(DataSet: TDataSet);
    procedure ActInclusaoAutomaticaExecute(Sender: TObject);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
  private
    FIdTabela: Integer;
    procedure SetIdTabela(const Value: Integer);
  public
    property IdTabela: Integer read FIdTabela write SetIdTabela;
  end;

var
  FrmColuna: TFrmColuna;

implementation

uses ModuloDados, Tabela, InclusaoAutomaticaColunas;

{$R *.dfm}

procedure TFrmColuna.SetIdTabela(const Value: Integer);
begin

  FIdTabela := Value;

  if FIdTabela <> 0 then
  begin

    SQLWhereMestre.Add('C.ID_TABELA = ' + IntToStr(FIdTabela));

    EdtMestreNome_Tabela.Text := VarToStr(DM.LookupQuery(FIdTabela, 'ID_TABELA', 'TABELA', 'NOME_TABELA'));

    IniciarAtualizado := True;

  end;

  PnlMestreTabela.Visible := (FIdTabela <> 0);

  ControlePainelMestre;

end;

procedure TFrmColuna.Controle;
begin

  inherited;

  BtnTabela.Enabled := BtnTabela.Enabled and (IdTabela = 0);

  DBCboNome_Coluna.Visible := (DataSource.DataSet.State in [dsEdit, dsInsert]);
  DBEdtNome_Coluna.Visible := not DBCboNome_Coluna.Visible;

  DBCboNome_Sequencia.Visible := (DataSource.DataSet.State in [dsEdit, dsInsert]);
  DBEdtNome_Sequencia.Visible := not DBCboNome_Sequencia.Visible;

end;

function TFrmColuna.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROPRIETARIO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_COLUNA')) then
  begin

    Result := False;

  end;

end;

procedure TFrmColuna.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'COLUNA';
  SequenceName := 'SEQ_COLUNA';

  ColunaId := 'ID_COLUNA';

  IdTabela := 0;

  Controle;

end;

procedure TFrmColuna.BtnTabelaClick(Sender: TObject);

var
  ModalForm: TFrmTabela;

begin

  inherited;

  ModalForm := TFrmTabela.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_TABELA').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_TABELA').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmColuna.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_TABELA' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'PROPRIETARIO;NOME_TABELA', DataSource.DataSet.FieldByName('ID_TABELA').Value, 'ID_TABELA', 'TABELA', 'PROPRIETARIO;NOME_TABELA');

      with DtsColunas.DataSet do
      begin
        Close;
        Open;
      end;

    end
    else if Field.FieldName = 'PROPRIETARIO' then
    begin

      with DtsSequencias.DataSet do
      begin
        Close;
        Open;
      end;

      with DtsColunas.DataSet do
      begin
        Close;
        Open;
      end;
      
    end;

  end;

end;

procedure TFrmColuna.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Tabela.Text <> '' then
    SQLWhere.Add('T.NOME_TABELA LIKE ''' + EdtPesquisaNome_Tabela.Text + '''');

  if EdtPesquisaNome_Coluna.Text <> '' then
    SQLWhere.Add('C.NOME_COLUNA LIKE ''' + EdtPesquisaNome_Coluna.Text + '''');

  inherited;

end;

procedure TFrmColuna.DataSourceStateChange(Sender: TObject);
begin

  inherited;

  DtsColunas.DataSet.Active    := (DataSource.DataSet.State in [dsEdit, dsInsert]);
  DtsSequencias.DataSet.Active := (DataSource.DataSet.State in [dsEdit, dsInsert]);

end;

procedure TFrmColuna.CdsColunasBeforeOpen(DataSet: TDataSet);
begin

  inherited;

  QryColunas.Params.ParamByName('OWNER'     ).AsString := DataSource.DataSet.FieldByName('PROPRIETARIO').AsString;
  QryColunas.Params.ParamByName('TABLE_NAME').AsString := DataSource.DataSet.FieldByName('NOME_TABELA').AsString;

end;

procedure TFrmColuna.CdsSequenciasBeforeOpen(DataSet: TDataSet);
begin

  inherited;

  QrySequencias.Params.ParamByName('SEQUENCE_OWNER').AsString := DataSource.DataSet.FieldByName('PROPRIETARIO').AsString;

end;

procedure TFrmColuna.ActInclusaoAutomaticaExecute(Sender: TObject);

var
  ModalForm: TFrmInclusaoAutomaticaColunas;

begin

  inherited;

  ModalForm := TFrmInclusaoAutomaticaColunas.Create(Self);

  try

    ModalForm.IdTabela := IdTabela;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmColuna.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  if IdTabela <> 0 then
    DataSet.FieldByName('ID_TABELA').AsInteger := IdTabela;

  DataSet.FieldByName('CHAVE_PRIMARIA').AsString  := 'N';

  Controle;

end;

end.
