unit Filtro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Rotinas;

type
  TFrmFiltro = class(TFormBaseManutencaoDados)
    SQLDataSetID_FILTRO: TFMTBCDField;
    SQLDataSetID_MAPEAMENTO: TFMTBCDField;
    SQLDataSetNOME_MAPEAMENTO: TStringField;
    SQLDataSetID_COLUNA: TFMTBCDField;
    SQLDataSetNOME_COLUNA: TStringField;
    SQLDataSetID_TABELA: TFMTBCDField;
    SQLDataSetNOME_TABELA: TStringField;
    SQLDataSetPROP_TABELA: TStringField;
    SQLDataSetOPERADOR_COMPARACAO: TStringField;
    SQLDataSetVALOR_COMPARACAO: TStringField;
    ClientDataSetID_FILTRO: TFMTBCDField;
    ClientDataSetID_MAPEAMENTO: TFMTBCDField;
    ClientDataSetNOME_MAPEAMENTO: TStringField;
    ClientDataSetID_COLUNA: TFMTBCDField;
    ClientDataSetNOME_COLUNA: TStringField;
    ClientDataSetID_TABELA: TFMTBCDField;
    ClientDataSetNOME_TABELA: TStringField;
    ClientDataSetPROP_TABELA: TStringField;
    ClientDataSetOPERADOR_COMPARACAO: TStringField;
    ClientDataSetVALOR_COMPARACAO: TStringField;
    EdtPesquisaNome_Mapeamento: TEdit;
    Label4: TLabel;
    Label10: TLabel;
    DBEdtNome_Mapeamento: TDBEdit;
    BtnMapeamento: TButton;
    Label6: TLabel;
    DBEdtProp_Tabela: TDBEdit;
    Label1: TLabel;
    DBEdtNome_Tabela: TDBEdit;
    Label2: TLabel;
    DBEdtNome_Coluna: TDBEdit;
    BtnColuna: TButton;
    DBCboOperador_Comparacao: TDBComboBox;
    Label5: TLabel;
    Label3: TLabel;
    DBEdtValor_Comparacao: TDBEdit;
    PnlMestreMapeamento: TPanel;
    Label7: TLabel;
    EdtMestreNome_Mapeamento: TEdit;
    procedure Controle; override;
    function Consistencia: Boolean;
    procedure FormCreate(Sender: TObject);
    procedure BtnMapeamentoClick(Sender: TObject);
    procedure BtnColunaClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
  private
    FIDMapeamento: Integer;
    procedure SetIDMapeamento(const Value: Integer);
  public
    property IDMapeamento: Integer read FIDMapeamento write SetIDMapeamento;
  end;

var
  FrmFiltro: TFrmFiltro;

implementation

uses ModuloDados, Mapeamento, Coluna;

{$R *.dfm}

procedure TFrmFiltro.SetIDMapeamento(const Value: Integer);
begin

  FIDMapeamento := Value;

  if FIDMapeamento <> 0 then
  begin

    SQLWhereMestre.Add('F.ID_MAPEAMENTO = ' + IntToStr(FIDMapeamento));

    EdtMestreNome_Mapeamento.Text := VarToStr(DM.LookupQuery(FIDMapeamento, 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME'));

    IniciarAtualizado := True;

  end;

  PnlMestreMapeamento.Visible := (FIDMapeamento <> 0);

  ControlePainelMestre;

end;

procedure TFrmFiltro.Controle;
begin

  inherited;

  BtnMapeamento.Enabled := BtnMapeamento.Enabled and (IDMapeamento = 0);

end;

function TFrmFiltro.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_MAPEAMENTO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA')) then
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

procedure TFrmFiltro.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'FILTRO';
  SequenceName := 'SEQ_FILTRO';

  ColunaId := 'ID_FILTRO';

  IDMapeamento := 0;

  Controle;

end;

procedure TFrmFiltro.BtnMapeamentoClick(Sender: TObject);

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

procedure TFrmFiltro.BtnColunaClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmFiltro.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_MAPEAMENTO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_MAPEAMENTO', DataSource.DataSet.FieldByName('ID_MAPEAMENTO').Value, 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME');

    end
    else if Field.FieldName = 'ID_COLUNA' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA;ID_TABELA', DataSource.DataSet.FieldByName('ID_COLUNA').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA;ID_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_TABELA;PROP_TABELA', DataSource.DataSet.FieldByName('ID_TABELA').Value, 'ID_TABELA', 'TABELA', 'NOME_TABELA;PROPRIETARIO');

    end;

  end;

end;

procedure TFrmFiltro.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Mapeamento.Text <> '' then
    SQLWhere.Add('M.NOME LIKE ''' + EdtPesquisaNome_Mapeamento.Text + '''');

  inherited;

end;

procedure TFrmFiltro.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  if IDMapeamento <> 0 then
    DataSet.FieldByName('ID_MAPEAMENTO').AsInteger := IDMapeamento;

  DataSet.FieldByName('OPERADOR_COMPARACAO').AsString := '=';

  Controle;

end;

end.
