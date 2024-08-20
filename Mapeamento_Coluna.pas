unit Mapeamento_Coluna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Buttons, Rotinas;

type
  TFrmMapeamento_Coluna = class(TFormBaseManutencaoDados)
    PnlMestreMapeamento: TPanel;
    Label3: TLabel;
    EdtMestreNome_Mapeamento: TEdit;
    Label4: TLabel;
    EdtPesquisaNome_Mapeamento: TEdit;
    SQLDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField;
    SQLDataSetID_MAPEAMENTO: TFMTBCDField;
    SQLDataSetNOME_MAPEAMENTO: TStringField;
    SQLDataSetID_COLUNA_ORIGEM: TFMTBCDField;
    SQLDataSetNOME_TABELA_ORIGEM: TStringField;
    SQLDataSetPROP_TABELA_ORIGEM: TStringField;
    SQLDataSetID_COLUNA_DESTINO: TFMTBCDField;
    SQLDataSetNOME_TABELA_DESTINO: TStringField;
    SQLDataSetPROP_TABELA_DESTINO: TStringField;
    SQLDataSetFUNCAO_GRUPO: TStringField;
    ClientDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField;
    ClientDataSetID_MAPEAMENTO: TFMTBCDField;
    ClientDataSetNOME_MAPEAMENTO: TStringField;
    ClientDataSetID_COLUNA_ORIGEM: TFMTBCDField;
    ClientDataSetNOME_TABELA_ORIGEM: TStringField;
    ClientDataSetPROP_TABELA_ORIGEM: TStringField;
    ClientDataSetID_COLUNA_DESTINO: TFMTBCDField;
    ClientDataSetNOME_TABELA_DESTINO: TStringField;
    ClientDataSetPROP_TABELA_DESTINO: TStringField;
    ClientDataSetFUNCAO_GRUPO: TStringField;
    DBCboFuncao_Grupo: TDBComboBox;
    Label5: TLabel;
    SQLDataSetNOME_COLUNA_ORIGEM: TStringField;
    SQLDataSetNOME_COLUNA_DESTINO: TStringField;
    ClientDataSetNOME_COLUNA_ORIGEM: TStringField;
    ClientDataSetNOME_COLUNA_DESTINO: TStringField;
    GrpOrigem: TGroupBox;
    GrpDestino: TGroupBox;
    Label7: TLabel;
    DBEdtProp_Tabela_Destino: TDBEdit;
    Label8: TLabel;
    DBEdtNome_Tabela_Destino: TDBEdit;
    Label9: TLabel;
    DBEdtNome_Coluna_Destino: TDBEdit;
    BtnColuna_Destino: TButton;
    Label6: TLabel;
    DBEdtProp_Tabela_Origem: TDBEdit;
    Label1: TLabel;
    DBEdtNome_Tabela_Origem: TDBEdit;
    Label2: TLabel;
    DBEdtNome_Coluna_Origem: TDBEdit;
    BtnColuna_Origem: TButton;
    Label10: TLabel;
    DBEdtNome_Mapeamento: TDBEdit;
    BtnMapeamento: TButton;
    BtnTransformacoes: TBitBtn;
    SQLDataSetID_TABELA_ORIGEM: TFMTBCDField;
    SQLDataSetID_TABELA_DESTINO: TFMTBCDField;
    ClientDataSetID_TABELA_ORIGEM: TFMTBCDField;
    ClientDataSetID_TABELA_DESTINO: TFMTBCDField;
    SQLDataSetCHAVE_PESQUISA: TStringField;
    ClientDataSetCHAVE_PESQUISA: TStringField;
    DBChkChave_Pesquisa: TDBCheckBox;
    SQLDataSetID_COLUNA_PESQUISA_DIMENSAO: TFMTBCDField;
    SQLDataSetNOME_COLUNA_PESQUISA_DIMENSAO: TStringField;
    SQLDataSetID_TABELA_PESQUISA_DIMENSAO: TFMTBCDField;
    SQLDataSetNOME_TABELA_PESQUISA_DIMENSAO: TStringField;
    SQLDataSetPROP_TABELA_PESQUISA_DIMENSAO: TStringField;
    ClientDataSetID_COLUNA_PESQUISA_DIMENSAO: TFMTBCDField;
    ClientDataSetNOME_COLUNA_PESQUISA_DIMENSAO: TStringField;
    ClientDataSetID_TABELA_PESQUISA_DIMENSAO: TFMTBCDField;
    ClientDataSetNOME_TABELA_PESQUISA_DIMENSAO: TStringField;
    ClientDataSetPROP_TABELA_PESQUISA_DIMENSAO: TStringField;
    GrpDimensao: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdtProp_Tabela_Pesquisa_Dimensao: TDBEdit;
    DBEdtTabela_Pesquisa_Dimensao: TDBEdit;
    DBEdtColuna_Pesquisa_Dimensao: TDBEdit;
    BtnColuna_Pesquisa_Dimensao: TButton;
    BtnConsistencias: TBitBtn;
    QryConsistencia: TSQLDataSet;
    SQLDataSetFORMATO: TStringField;
    ClientDataSetFORMATO: TStringField;
    Label14: TLabel;
    DBCboFormato: TDBComboBox;
    SQLDataSetORIGEM_TEMPO: TStringField;
    ClientDataSetORIGEM_TEMPO: TStringField;
    function Consistencia: Boolean; override;
    procedure Controle; override;
    procedure FormCreate(Sender: TObject);
    procedure BtnMapeamentoClick(Sender: TObject);
    procedure BtnColuna_OrigemClick(Sender: TObject);
    procedure BtnColuna_DestinoClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure BtnTransformacoesClick(Sender: TObject);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
    procedure BtnColuna_Pesquisa_DimensaoClick(Sender: TObject);
    procedure BtnConsistenciasClick(Sender: TObject);
    procedure QryConsistenciaBeforeOpen(DataSet: TDataSet);
  private
    FIDMapeamento: Integer;
    procedure SetIDMapeamento(const Value: Integer);
  public
    property IDMapeamento: Integer read FIDMapeamento write SetIDMapeamento;
  end;

var
  FrmMapeamento_Coluna: TFrmMapeamento_Coluna;

implementation

uses ModuloDados, Mapeamento, Coluna, Transformacao, Consistencia;

{$R *.dfm}

procedure TFrmMapeamento_Coluna.SetIDMapeamento(const Value: Integer);
begin

  FIDMapeamento := Value;

  if FIDMapeamento <> 0 then
  begin

    SQLWhereMestre.Add('MC.ID_MAPEAMENTO = ' + IntToStr(FIDMapeamento));

    EdtMestreNome_Mapeamento.Text := VarToStr(DM.LookupQuery(FIDMapeamento, 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME'));

    IniciarAtualizado := True;

  end;

  PnlMestreMapeamento.Visible := (FIDMapeamento <> 0);

  ControlePainelMestre;

end;

procedure TFrmMapeamento_Coluna.Controle;
begin

  inherited;

  BtnMapeamento.Enabled := BtnMapeamento.Enabled and (IDMapeamento = 0);

end;

function TFrmMapeamento_Coluna.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_MAPEAMENTO')) then
  begin

    Result := False;

  end
  else if (DataSource.DataSet.FieldByName('ORIGEM_TEMPO').AsString = 'N') and (not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM'))) then
  begin

    Result := False;

  end
  else if (DataSource.DataSet.FieldByName('ORIGEM_TEMPO').AsString = 'N') and (not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM'))) then
  begin

    Result := False;

  end
  else if (DataSource.DataSet.FieldByName('ORIGEM_TEMPO').AsString = 'N') and (not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_COLUNA_ORIGEM'))) then
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

    CaixaAdvertencia('Colunas inválidas!', 'As colunas de origem e destino informadas são iguais.', 'Informe colunas diferentes.');

  end
  else
  begin
{
    QryConsistencia.Open;

    try

      if ((DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM').AsString <> QryConsistencia.FieldByName('NOME_TABELA_ORIGEM').AsString) or (DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM').AsString <> QryConsistencia.FieldByName('PROP_TABELA_ORIGEM').AsString)) and (QryConsistencia.FieldByName('ID_JUNCAO').AsInteger = 0) then
      begin

        Result := False;

        CaixaAdvertencia('Coluna de origem inválida!', 'Nenhuma junção encontrada entre a tabela ' + DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM').AsString + '.' + DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM').AsString + ' e a tabela ' + QryConsistencia.FieldByName('PROP_TABELA_ORIGEM').AsString + '.' + QryConsistencia.FieldByName('NOME_TABELA_ORIGEM').AsString + '.', 'Informe uma coluna de origem pertencente à tabela de origem informada no mapeamento ou que pertença a uma tabela que possua junção com a tabela de origem do mapeamento.');

      end;

    finally

      QryConsistencia.Close;

    end;
}
  end;

end;

procedure TFrmMapeamento_Coluna.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'MAPEAMENTO_COLUNA';
  SequenceName := 'SEQ_MAPEAMENTO_COLUNA';

  ColunaId := 'ID_MAPEAMENTO_COLUNA';

  IDMapeamento := 0;

  Controle;

end;

procedure TFrmMapeamento_Coluna.BtnMapeamentoClick(Sender: TObject);

var
  ModalForm: TFrmMapeamento;

begin

  inherited;

  ModalForm := TFrmMapeamento.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_MAPEAMENTO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_MAPEAMENTO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento_Coluna.BtnColuna_OrigemClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_ORIGEM').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_ORIGEM').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento_Coluna.BtnColuna_DestinoClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.IDTabela := DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').AsInteger;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_DESTINO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_DESTINO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento_Coluna.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_MAPEAMENTO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_MAPEAMENTO;ID_TABELA_DESTINO;ORIGEM_TEMPO', DataSource.DataSet.FieldByName('ID_MAPEAMENTO').Value, 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME;ID_TABELA_DESTINO;ORIGEM_TEMPO');

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

    end
    else if Field.FieldName = 'ID_COLUNA_PESQUISA_DIMENSAO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_PESQUISA_DIMENSAO;ID_TABELA_PESQUISA_DIMENSAO', DataSource.DataSet.FieldByName('ID_COLUNA_PESQUISA_DIMENSAO').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA;ID_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA_PESQUISA_DIMENSAO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_TABELA_PESQUISA_DIMENSAO;PROP_TABELA_PESQUISA_DIMENSAO', DataSource.DataSet.FieldByName('ID_TABELA_PESQUISA_DIMENSAO').Value, 'ID_TABELA', 'TABELA', 'NOME_TABELA;PROPRIETARIO');

    end;

  end;

end;

procedure TFrmMapeamento_Coluna.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Mapeamento.Text <> '' then
    SQLWhere.Add('M.NOME LIKE ''' + EdtPesquisaNome_Mapeamento.Text + '''');

  inherited;

end;

procedure TFrmMapeamento_Coluna.BtnTransformacoesClick(Sender: TObject);

var
  ModalForm: TFrmTransformacao;

begin

  inherited;

  ModalForm := TFrmTransformacao.Create(Self);

  try

    ModalForm.IDMapeamentoColuna := DataSource.DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').AsInteger;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento_Coluna.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  if IDMapeamento <> 0 then
    DataSet.FieldByName('ID_MAPEAMENTO').AsInteger := IDMapeamento;

  DataSet.FieldByName('CHAVE_PESQUISA').AsString := 'N';

  Controle;
  
end;

procedure TFrmMapeamento_Coluna.BtnColuna_Pesquisa_DimensaoClick(
  Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_PESQUISA_DIMENSAO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_PESQUISA_DIMENSAO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento_Coluna.BtnConsistenciasClick(Sender: TObject);

var
  ModalForm: TFrmConsistencia;

begin

  inherited;

  ModalForm := TFrmConsistencia.Create(Self);

  try

    ModalForm.IDMapeamentoColuna := DataSource.DataSet.FieldByName('ID_MAPEAMENTO_COLUNA').AsInteger;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento_Coluna.QryConsistenciaBeforeOpen(
  DataSet: TDataSet);
begin

  inherited;

  QryConsistencia.ParamByName('P_ID_MAPEAMENTO').Value := DataSource.DataSet.FieldByName('ID_MAPEAMENTO').Value;

  QryConsistencia.ParamByName('P_PROP_TABELA_ORIGEM').Value := DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM').Value;
  QryConsistencia.ParamByName('P_NOME_TABELA_ORIGEM').Value := DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM').Value;

end;

end.
