unit Transformacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Buttons, Rotinas;

type
  TFrmTransformacao = class(TFormBaseManutencaoDados)
    PnlMestreMapeamento: TPanel;
    Label3: TLabel;
    EdtMestreNome_Mapeamento: TEdit;
    Label4: TLabel;
    EdtPesquisaNome_Mapeamento: TEdit;
    GrpOrigem: TGroupBox;
    GrpDestino: TGroupBox;
    Label7: TLabel;
    DBEdtProp_Tabela_Destino: TDBEdit;
    Label8: TLabel;
    DBEdtNome_Tabela_Destino: TDBEdit;
    Label9: TLabel;
    DBEdtNome_Coluna_Destino: TDBEdit;
    Label6: TLabel;
    DBEdtProp_Tabela_Origem: TDBEdit;
    Label1: TLabel;
    DBEdtNome_Tabela_Origem: TDBEdit;
    Label2: TLabel;
    DBEdtNome_Coluna_Origem: TDBEdit;
    Label10: TLabel;
    DBEdtNome_Mapeamento: TDBEdit;
    BtnMapeamento_Coluna: TButton;
    SQLDataSetID_TRANSFORMACAO: TFMTBCDField;
    SQLDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField;
    SQLDataSetID_COLUNA_ORIGEM: TFMTBCDField;
    SQLDataSetNOME_COLUNA_ORIGEM: TStringField;
    SQLDataSetID_TABELA_ORIGEM: TFMTBCDField;
    SQLDataSetNOME_TABELA_ORIGEM: TStringField;
    SQLDataSetPROP_TABELA_ORIGEM: TStringField;
    SQLDataSetID_COLUNA_DESTINO: TFMTBCDField;
    SQLDataSetNOME_COLUNA_DESTINO: TStringField;
    SQLDataSetID_TABELA_DESTINO: TFMTBCDField;
    SQLDataSetNOME_TABELA_DESTINO: TStringField;
    SQLDataSetPROP_TABELA_DESTINO: TStringField;
    SQLDataSetVALOR_ORIGEM: TStringField;
    SQLDataSetVALOR_DESTINO: TStringField;
    ClientDataSetID_TRANSFORMACAO: TFMTBCDField;
    ClientDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField;
    ClientDataSetID_COLUNA_ORIGEM: TFMTBCDField;
    ClientDataSetNOME_COLUNA_ORIGEM: TStringField;
    ClientDataSetID_TABELA_ORIGEM: TFMTBCDField;
    ClientDataSetNOME_TABELA_ORIGEM: TStringField;
    ClientDataSetPROP_TABELA_ORIGEM: TStringField;
    ClientDataSetID_COLUNA_DESTINO: TFMTBCDField;
    ClientDataSetNOME_COLUNA_DESTINO: TStringField;
    ClientDataSetID_TABELA_DESTINO: TFMTBCDField;
    ClientDataSetNOME_TABELA_DESTINO: TStringField;
    ClientDataSetPROP_TABELA_DESTINO: TStringField;
    ClientDataSetVALOR_ORIGEM: TStringField;
    ClientDataSetVALOR_DESTINO: TStringField;
    SQLDataSetID_MAPEAMENTO: TFMTBCDField;
    SQLDataSetNOME_MAPEAMENTO: TStringField;
    ClientDataSetID_MAPEAMENTO: TFMTBCDField;
    ClientDataSetNOME_MAPEAMENTO: TStringField;
    Label5: TLabel;
    DBEdtValor_Origem: TDBEdit;
    Label11: TLabel;
    DBEdtValor_Destino: TDBEdit;
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
  FrmTransformacao: TFrmTransformacao;

implementation

uses ModuloDados, Mapeamento_Coluna;

{$R *.dfm}

procedure TFrmTransformacao.SetIDMapeamentoColuna(const Value: Integer);
begin

  FIDMapeamentoColuna := Value;

  if FIDMapeamentoColuna <> 0 then
  begin

    SQLWhereMestre.Add('T.ID_MAPEAMENTO_COLUNA = ' + IntToStr(FIDMapeamentoColuna));

    EdtMestreNome_Mapeamento.Text := VarToStr(DM.LookupQuery(DM.LookupQuery(FIDMapeamentoColuna, 'ID_MAPEAMENTO_COLUNA', 'MAPEAMENTO_COLUNA', 'ID_MAPEAMENTO'), 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME'));

    IniciarAtualizado := True;

  end;

  PnlMestreMapeamento.Visible := (FIDMapeamentoColuna <> 0);

  ControlePainelMestre;

end;

procedure TFrmTransformacao.Controle;
begin

  inherited;

  BtnMapeamento_Coluna.Enabled := BtnMapeamento_Coluna.Enabled and (IDMapeamentoColuna = 0);

end;

function TFrmTransformacao.Consistencia: Boolean;
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
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA_DESTINO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA_DESTINO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_COLUNA_DESTINO')) then
  begin

    Result := False;

  end
  else if (DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM').AsString = DataSource.DataSet.FieldByName('PROP_TABELA_DESTINO').AsString) and (DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM').AsString = DataSource.DataSet.FieldByName('NOME_TABELA_DESTINO').AsString) and (DataSource.DataSet.FieldByName('NOME_COLUNA_ORIGEM').AsString = DataSource.DataSet.FieldByName('NOME_COLUNA_DESTINO').AsString) then
  begin

    Result := False;

    CaixaAdvertencia('Colunas de origem e destino inválidas!', 'As colunas de origem e destino informadas são iguais.', 'Informe colunas diferentes.');

  end
  else if DataSource.DataSet.FieldByName('VALOR_ORIGEM').AsString = DataSource.DataSet.FieldByName('VALOR_DESTINO').AsString then
  begin

    Result := False;

    CaixaAdvertencia('Valores de origem e destino inválidos!', 'Os valores de origem e valor destino informados são iguais.', 'Informe valores diferentes.');

  end;

end;

procedure TFrmTransformacao.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'TRANSFORMACAO';
  SequenceName := 'SEQ_TRANSFORMACAO';

  ColunaId := 'ID_TRANSFORMACAO';

  IDMapeamentoColuna := 0;

  Controle;

end;

procedure TFrmTransformacao.BtnMapeamento_ColunaClick(Sender: TObject);

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

procedure TFrmTransformacao.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_MAPEAMENTO_COLUNA' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'ID_MAPEAMENTO;ID_COLUNA_ORIGEM;ID_COLUNA_DESTINO', DataSource.DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').Value, 'ID_MAPEAMENTO_COLUNA', 'MAPEAMENTO_COLUNA', 'ID_MAPEAMENTO;ID_COLUNA_ORIGEM;ID_COLUNA_DESTINO');

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

    end
    else if Field.FieldName = 'ID_COLUNA_DESTINO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_DESTINO;ID_TABELA_DESTINO', DataSource.DataSet.FieldByName('ID_COLUNA_DESTINO').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA;ID_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA_DESTINO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_TABELA_DESTINO;PROP_TABELA_DESTINO', DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').Value, 'ID_TABELA', 'TABELA', 'NOME_TABELA;PROPRIETARIO');

    end;

  end;

end;

procedure TFrmTransformacao.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Mapeamento.Text <> '' then
    SQLWhere.Add('M.NOME LIKE ''' + EdtPesquisaNome_Mapeamento.Text + '''');

  inherited;

end;

procedure TFrmTransformacao.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  if FIDMapeamentoColuna <> 0 then
    DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').AsInteger := FIDMapeamentoColuna;

  Controle;
  
end;

end.
