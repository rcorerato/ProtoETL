unit Mapeamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Buttons, Rotinas;

type
  TFrmMapeamento = class(TFormBaseManutencaoDados)
    Label4: TLabel;
    EdtPesquisaNome: TEdit;
    EdtPesquisaNome_Tabela_Destino: TEdit;
    Label5: TLabel;
    SQLDataSetID_MAPEAMENTO: TFMTBCDField;
    SQLDataSetNOME: TStringField;
    SQLDataSetID_TABELA_DESTINO: TFMTBCDField;
    SQLDataSetNOME_TABELA_DESTINO: TStringField;
    SQLDataSetTIPO_ATUALIZACAO: TStringField;
    ClientDataSetID_MAPEAMENTO: TFMTBCDField;
    ClientDataSetNOME: TStringField;
    ClientDataSetID_TABELA_DESTINO: TFMTBCDField;
    ClientDataSetNOME_TABELA_DESTINO: TStringField;
    ClientDataSetTIPO_ATUALIZACAO: TStringField;
    DBEdtNome: TDBEdit;
    Label6: TLabel;
    DBRadTipo_Atualizacao: TDBRadioGroup;
    SQLDataSetPROP_TABELA_DESTINO: TStringField;
    ClientDataSetPROP_TABELA_DESTINO: TStringField;
    BtnColunas: TBitBtn;
    BtnFiltros: TBitBtn;
    SQLDataSetID_COLUNA_DATA_INCLUSAO: TFMTBCDField;
    SQLDataSetNOME_COLUNA_DATA_INCLUSAO: TStringField;
    SQLDataSetID_COLUNA_DATA_ALTERACAO: TFMTBCDField;
    SQLDataSetNOME_COLUNA_DATA_ALTERACAO: TStringField;
    ClientDataSetID_COLUNA_DATA_INCLUSAO: TFMTBCDField;
    ClientDataSetNOME_COLUNA_DATA_INCLUSAO: TStringField;
    ClientDataSetID_COLUNA_DATA_ALTERACAO: TFMTBCDField;
    ClientDataSetNOME_COLUNA_DATA_ALTERACAO: TStringField;
    TabDestino: TTabSheet;
    Label2: TLabel;
    DBEdtProp_Tabela_Destino: TDBEdit;
    Label1: TLabel;
    DBEdtNome_Tabela_Destino: TDBEdit;
    BtnTabela_Destino: TButton;
    Bevel4: TBevel;
    Label3: TLabel;
    DBEdtNome_Coluna_Data_Inclusao: TDBEdit;
    Label7: TLabel;
    DBEdtNome_Coluna_Data_Alteracao: TDBEdit;
    BtnColuna_Data_Alteracao: TButton;
    BtnColuna_Data_Inclusao: TButton;
    TabOrigem: TTabSheet;
    Bevel3: TBevel;
    SQLDataSetTIPO_DESTINO: TStringField;
    ClientDataSetTIPO_DESTINO: TStringField;
    DBRadTipo_Destino: TDBRadioGroup;
    SQLDataSetID_TABELA_ORIGEM: TFMTBCDField;
    SQLDataSetNOME_TABELA_ORIGEM: TStringField;
    SQLDataSetPROP_TABELA_ORIGEM: TStringField;
    ClientDataSetID_TABELA_ORIGEM: TFMTBCDField;
    ClientDataSetNOME_TABELA_ORIGEM: TStringField;
    ClientDataSetPROP_TABELA_ORIGEM: TStringField;
    Label9: TLabel;
    DBEdtProp_Tabela_Origem: TDBEdit;
    Label10: TLabel;
    DBEdtNome_Tabela_Origem: TDBEdit;
    BtnTabela_Origem: TButton;
    QryConsistencia: TSQLDataSet;
    SQLDataSetORIGEM_TEMPO: TStringField;
    ClientDataSetORIGEM_TEMPO: TStringField;
    DBChkOrigem_Tempo: TDBCheckBox;
    function Consistencia: Boolean; override;
    procedure FormCreate(Sender: TObject);
    procedure BtnTabela_DestinoClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
    procedure BtnColunasClick(Sender: TObject);
    procedure BtnFiltrosClick(Sender: TObject);
    procedure BtnColuna_Data_InclusaoClick(Sender: TObject);
    procedure BtnColuna_Data_AlteracaoClick(Sender: TObject);
    procedure BtnTabela_OrigemClick(Sender: TObject);
    procedure QryConsistenciaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMapeamento: TFrmMapeamento;

implementation

uses ModuloDados, Tabela, Mapeamento_Coluna, Filtro, Coluna;

{$R *.dfm}

function TFrmMapeamento.Consistencia: Boolean;

var
  bTabelaDestinoDiferente: Boolean;

begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME')) then
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
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA_DESTINO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA_DESTINO')) then
  begin

    Result := False;

  end
  else if (DataSource.DataSet.FieldByName('PROP_TABELA_ORIGEM').AsString = DataSource.DataSet.FieldByName('PROP_TABELA_DESTINO').AsString) and (DataSource.DataSet.FieldByName('NOME_TABELA_ORIGEM').AsString = DataSource.DataSet.FieldByName('NOME_TABELA_DESTINO').AsString) then
  begin

    Result := False;

    CaixaAdvertencia('Tabelas inválidas!', 'As tabelas de origem e destino informadas são iguais.', 'Informe tabelas diferentes.');

  end
  else
  begin

    bTabelaDestinoDiferente := False;

    QryConsistencia.Open;

    try

      while (not QryConsistencia.Eof) and (not bTabelaDestinoDiferente) do
      begin

        bTabelaDestinoDiferente := (DataSource.DataSet.FieldByName('NOME_TABELA_DESTINO').AsString <> QryConsistencia.FieldByName('NOME_TABELA_DESTINO').AsString) or (DataSource.DataSet.FieldByName('PROP_TABELA_DESTINO').AsString <> QryConsistencia.FieldByName('PROP_TABELA_DESTINO').AsString);

        QryConsistencia.Next;

      end;

    finally

      QryConsistencia.Close;

    end;

    if bTabelaDestinoDiferente then
    begin

      Result := False;

      CaixaAdvertencia('Tabela de Destino inválida!', 'No mapeamento de colunas foi encontrada ocorrência de coluna de destino não pertencente a esta tabela de destino.', 'As colunas de destino devem pertencer à tabela de destino informada no mapeamento.');

    end;

  end;

end;

procedure TFrmMapeamento.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'MAPEAMENTO';
  SequenceName := 'SEQ_MAPEAMENTO';

  ColunaId := 'ID_MAPEAMENTO';

  Controle;

end;

procedure TFrmMapeamento.BtnTabela_DestinoClick(Sender: TObject);

var
  ModalForm: TFrmTabela;

begin

  inherited;

  ModalForm := TFrmTabela.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_TABELA_ORIGEM' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'PROP_TABELA_ORIGEM;NOME_TABELA_ORIGEM', DataSource.DataSet.FieldByName('ID_TABELA_ORIGEM').Value, 'ID_TABELA', 'TABELA', 'PROPRIETARIO;NOME_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA_DESTINO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'PROP_TABELA_DESTINO;NOME_TABELA_DESTINO', DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').Value, 'ID_TABELA', 'TABELA', 'PROPRIETARIO;NOME_TABELA');

    end
    else if Field.FieldName = 'ID_COLUNA_DATA_INCLUSAO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_DATA_INCLUSAO', DataSource.DataSet.FieldByName('ID_COLUNA_DATA_INCLUSAO').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA');

    end
    else if Field.FieldName = 'ID_COLUNA_DATA_ALTERACAO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_DATA_ALTERACAO', DataSource.DataSet.FieldByName('ID_COLUNA_DATA_ALTERACAO').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA');

    end;

  end;

end;

procedure TFrmMapeamento.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome.Text <> '' then
    SQLWhere.Add('M.NOME LIKE ''' + EdtPesquisaNome.Text + '''');

  if EdtPesquisaNome_Tabela_Destino.Text <> '' then
    SQLWhere.Add('TD.NOME_TABELA_DESTINO LIKE ''' + EdtPesquisaNome_Tabela_Destino.Text + '''');

  inherited;

end;

procedure TFrmMapeamento.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  DataSet.FieldByName('TIPO_ATUALIZACAO').AsString := '1';
  DataSet.FieldByName('ORIGEM_TEMPO'    ).AsString := 'N';

end;

procedure TFrmMapeamento.BtnColunasClick(Sender: TObject);

var
  ModalForm: TFrmMapeamento_Coluna;

begin

  inherited;

  ModalForm := TFrmMapeamento_Coluna.Create(Self);

  try

    ModalForm.IDMapeamento := DataSource.DataSet.FieldByName('ID_MAPEAMENTO').AsInteger;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento.BtnFiltrosClick(Sender: TObject);

var
  ModalForm: TFrmFiltro;

begin

  inherited;

  ModalForm := TFrmFiltro.Create(Self);

  try

    ModalForm.IDMapeamento := DataSource.DataSet.FieldByName('ID_MAPEAMENTO').AsInteger;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento.BtnColuna_Data_InclusaoClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.IDTabela := DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').AsInteger;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_DATA_INCLUSAO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_DATA_INCLUSAO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento.BtnColuna_Data_AlteracaoClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.IDTabela := DataSource.DataSet.FieldByName('ID_TABELA_DESTINO').AsInteger;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_DATA_ALTERACAO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_DATA_ALTERACAO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento.BtnTabela_OrigemClick(Sender: TObject);

var
  ModalForm: TFrmTabela;

begin

  inherited;

  ModalForm := TFrmTabela.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_TABELA_ORIGEM').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_TABELA_ORIGEM').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmMapeamento.QryConsistenciaBeforeOpen(DataSet: TDataSet);
begin

  inherited;

  QryConsistencia.ParamByName('P_ID_MAPEAMENTO').Value := DataSource.DataSet.FieldByName('ID_MAPEAMENTO').Value;
  
end;

end.
