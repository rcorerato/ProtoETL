unit Consistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Rotinas;

type
  TFrmConsistencia = class(TFormBaseManutencaoDados)
    SQLDataSetID_MAPEAMENTO: TFMTBCDField;
    SQLDataSetNOME_MAPEAMENTO: TStringField;
    SQLDataSetOPERADOR_COMPARACAO: TStringField;
    SQLDataSetVALOR_COMPARACAO: TStringField;
    EdtPesquisaNome_Mapeamento: TEdit;
    Label4: TLabel;
    Label10: TLabel;
    DBEdtNome_Mapeamento: TDBEdit;
    Label6: TLabel;
    DBEdtProp_Tabela_Origem: TDBEdit;
    Label1: TLabel;
    DBEdtNome_Tabela_Origem: TDBEdit;
    Label2: TLabel;
    DBEdtNome_Coluna_Origem: TDBEdit;
    DBCboOperador_Comparacao: TDBComboBox;
    Label5: TLabel;
    Label3: TLabel;
    DBEdtValor_Comparacao: TDBEdit;
    PnlMestreMapeamento: TPanel;
    Label7: TLabel;
    EdtMestreNome_Mapeamento: TEdit;
    BtnMapeamento_Coluna: TButton;
    SQLDataSetID_CONSISTENCIA: TFMTBCDField;
    SQLDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField;
    SQLDataSetID_COLUNA_ORIGEM: TFMTBCDField;
    SQLDataSetNOME_COLUNA_ORIGEM: TStringField;
    SQLDataSetID_TABELA_ORIGEM: TFMTBCDField;
    SQLDataSetNOME_TABELA_ORIGEM: TStringField;
    SQLDataSetPROP_TABELA_ORIGEM: TStringField;
    ClientDataSetID_CONSISTENCIA: TFMTBCDField;
    ClientDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField;
    ClientDataSetID_MAPEAMENTO: TFMTBCDField;
    ClientDataSetNOME_MAPEAMENTO: TStringField;
    ClientDataSetID_COLUNA_ORIGEM: TFMTBCDField;
    ClientDataSetNOME_COLUNA_ORIGEM: TStringField;
    ClientDataSetID_TABELA_ORIGEM: TFMTBCDField;
    ClientDataSetNOME_TABELA_ORIGEM: TStringField;
    ClientDataSetPROP_TABELA_ORIGEM: TStringField;
    ClientDataSetOPERADOR_COMPARACAO: TStringField;
    ClientDataSetVALOR_COMPARACAO: TStringField;
    procedure Controle; override;
    function Consistencia: Boolean; override;
    procedure FormCreate(Sender: TObject);
    procedure BtnMapeamento_ColunaClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
  private
    FIDMapeamentoColuna: Integer;
    procedure SetIDMapeamentoColuna(const Value: Integer);
  public
    property IDMapeamentoColuna: Integer read FIDMapeamentoColuna write SetIDMapeamentoColuna;
  end;

var
  FrmConsistencia: TFrmConsistencia;

implementation

uses ModuloDados, Mapeamento_Coluna;

{$R *.dfm}

procedure TFrmConsistencia.SetIDMapeamentoColuna(const Value: Integer);
begin

  FIDMapeamentoColuna := Value;

  if FIDMapeamentoColuna <> 0 then
  begin

    SQLWhereMestre.Add('C.ID_MAPEAMENTO_COLUNA = ' + IntToStr(FIDMapeamentoColuna));

    EdtMestreNome_Mapeamento.Text := VarToStr(DM.LookupQuery(DM.LookupQuery(FIDMapeamentoColuna, 'ID_MAPEAMENTO_COLUNA', 'MAPEAMENTO_COLUNA', 'ID_MAPEAMENTO'), 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME'));

    IniciarAtualizado := True;

  end;

  PnlMestreMapeamento.Visible := (FIDMapeamentoColuna <> 0);

  ControlePainelMestre;

end;

procedure TFrmConsistencia.Controle;
begin

  inherited;

  BtnMapeamento_Coluna.Enabled := BtnMapeamento_Coluna.Enabled and (IDMapeamentoColuna = 0);

end;

function TFrmConsistencia.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_MAPEAMENTO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_COLUNA_ORIGEM')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('OPERADOR_COMPARACAO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('VALOR_COMPARACAO')) then
  begin

    Result := False;

  end;

end;

procedure TFrmConsistencia.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'CONSISTENCIA';
  SequenceName := 'SEQ_CONSISTENCIA';

  ColunaId := 'ID_CONSISTENCIA';

  IDMapeamentoColuna := 0;

  Controle;

end;

procedure TFrmConsistencia.BtnMapeamento_ColunaClick(Sender: TObject);

var
  ModalForm: TFrmMapeamento_Coluna;

begin

  inherited;

  ModalForm := TFrmMapeamento_Coluna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmConsistencia.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_MAPEAMENTO_COLUNA' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'ID_MAPEAMENTO;ID_COLUNA_ORIGEM', DataSource.DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').Value, 'ID_MAPEAMENTO_COLUNA', 'MAPEAMENTO_COLUNA', 'ID_MAPEAMENTO;ID_COLUNA_ORIGEM');

    end
    else if Field.FieldName = 'ID_MAPEAMENTO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_MAPEAMENTO', DataSource.DataSet.FieldByName('ID_MAPEAMENTO').Value, 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME');

    end
    else if Field.FieldName = 'ID_COLUNA_ORIGEM' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_ORIGEM;ID_TABELA_ORIGEM', DataSource.DataSet.FieldByName('ID_COLUNA_ORIGEM').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA;ID_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA_ORIGEM' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_TABELA_ORIGEM;PROP_TABELA_ORIGEM', DataSource.DataSet.FieldByName('ID_TABELA_ORIGEM').Value, 'ID_TABELA', 'TABELA', 'NOME_TABELA;PROPRIETARIO');

    end;

  end;

end;

procedure TFrmConsistencia.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Mapeamento.Text <> '' then
    SQLWhere.Add('M.NOME LIKE ''' + EdtPesquisaNome_Mapeamento.Text + '''');

  inherited;

end;

procedure TFrmConsistencia.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  if FIDMapeamentoColuna <> 0 then
    DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').AsInteger := FIDMapeamentoColuna;

  DataSet.FieldByName('OPERADOR_COMPARACAO').AsString := '=';

  Controle;

end;

end.
