unit Juncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, Provider, SqlExpr, DB, DBClient, DBLocal,
  Menus, ImgList, ActnList, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, StdCtrls, Mask, FMTBcd, Rotinas;

type
  TFrmJuncao = class(TFormBaseManutencaoDados)
    Label1: TLabel;
    DBEdtNome_Tabela_Pai: TDBEdit;
    BtnColuna_Tabela_Pai: TButton;
    Label4: TLabel;
    EdtPesquisaNome_Tabela_Pai: TEdit;
    EdtPesquisaNome_Tabela_Filho: TEdit;
    Label5: TLabel;
    SQLDataSetID_JUNCAO: TFMTBCDField;
    SQLDataSetID_COLUNA_TABELA_PAI: TFMTBCDField;
    SQLDataSetNOME_TABELA_PAI: TStringField;
    SQLDataSetNOME_COLUNA_TABELA_PAI: TStringField;
    SQLDataSetID_COLUNA_TABELA_FILHO: TFMTBCDField;
    SQLDataSetNOME_TABELA_FILHO: TStringField;
    SQLDataSetNOME_COLUNA_TABELA_FILHO: TStringField;
    ClientDataSetID_JUNCAO: TFMTBCDField;
    ClientDataSetID_COLUNA_TABELA_PAI: TFMTBCDField;
    ClientDataSetNOME_TABELA_PAI: TStringField;
    ClientDataSetNOME_COLUNA_TABELA_PAI: TStringField;
    ClientDataSetID_COLUNA_TABELA_FILHO: TFMTBCDField;
    ClientDataSetNOME_TABELA_FILHO: TStringField;
    ClientDataSetNOME_COLUNA_TABELA_FILHO: TStringField;
    SQLDataSetID_TABELA_PAI: TFMTBCDField;
    SQLDataSetID_TABELA_FILHO: TFMTBCDField;
    ClientDataSetID_TABELA_PAI: TFMTBCDField;
    ClientDataSetID_TABELA_FILHO: TFMTBCDField;
    Label2: TLabel;
    DBEdtNome_Coluna_Tabela_Pai: TDBEdit;
    Label6: TLabel;
    DBEdtNome_Tabela_Filho: TDBEdit;
    Label7: TLabel;
    DBEdtNome_Coluna_Tabela_Filho: TDBEdit;
    BtnColuna_Tabela_Filho: TButton;
    ActInclusaoAutomatica: TAction;
    InclusoAutomtica2: TMenuItem;
    SQLDataSetRELACIONAMENTO_PAI_OPCIONAL: TStringField;
    SQLDataSetRELACIONAMENTO_FILHO_OPCIONAL: TStringField;
    ClientDataSetRELACIONAMENTO_PAI_OPCIONAL: TStringField;
    ClientDataSetRELACIONAMENTO_FILHO_OPCIONAL: TStringField;
    DBChkRelacionamento_Pai_Opcional: TDBCheckBox;
    DBChkRelacionamento_Filho_Opcional: TDBCheckBox;
    SQLDataSetPROP_TABELA_PAI: TStringField;
    SQLDataSetPROP_TABELA_FILHO: TStringField;
    DBEdtProp_Tabela_Filho: TDBEdit;
    Label3: TLabel;
    DBEdtProp_Tabela_Pai: TDBEdit;
    Label8: TLabel;
    ClientDataSetPROP_TABELA_PAI: TStringField;
    ClientDataSetPROP_TABELA_FILHO: TStringField;
    function Consistencia: Boolean; override;
    procedure FormCreate(Sender: TObject);
    procedure BtnColuna_Tabela_PaiClick(Sender: TObject);
    procedure BtnColuna_Tabela_FilhoClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure ActInclusaoAutomaticaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJuncao: TFrmJuncao;

implementation

uses ModuloDados, Coluna, InclusaoAutomaticaJuncoes;

{$R *.dfm}

function TFrmJuncao.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA_PAI')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA_PAI')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_COLUNA_TABELA_PAI')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('PROP_TABELA_FILHO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_TABELA_FILHO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_COLUNA_TABELA_FILHO')) then
  begin

    Result := False;

  end
  else if (DataSource.DataSet.FieldByName('PROP_TABELA_PAI').AsString = DataSource.DataSet.FieldByName('PROP_TABELA_FILHO').AsString) and (DataSource.DataSet.FieldByName('NOME_TABELA_PAI').AsString = DataSource.DataSet.FieldByName('NOME_TABELA_FILHO').AsString) and (DataSource.DataSet.FieldByName('NOME_COLUNA_TABELA_PAI').AsString = DataSource.DataSet.FieldByName('NOME_COLUNA_TABELA_FILHO').AsString) then
  begin

    Result := False;

    CaixaAdvertencia('Colunas pai e filho inválidas!', 'As colunas pai e filho informadas são iguais.', 'Informe colunas diferentes.');

  end;

end;

procedure TFrmJuncao.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'JUNCAO';
  SequenceName := 'SEQ_JUNCAO';

  ColunaId := 'ID_JUNCAO';

  Controle;

end;

procedure TFrmJuncao.BtnColuna_Tabela_PaiClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_TABELA_PAI').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_TABELA_PAI').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmJuncao.BtnColuna_Tabela_FilhoClick(Sender: TObject);

var
  ModalForm: TFrmColuna;

begin

  inherited;

  ModalForm := TFrmColuna.Create(Self);

  try

    ModalForm.ModoSelecao := True;

    ModalForm.ID := DataSource.DataSet.FieldByName('ID_COLUNA_TABELA_FILHO').AsInteger;

    ModalForm.ShowModal;

    if ModalForm.ID <> 0 then
      DataSource.DataSet.FieldByName('ID_COLUNA_TABELA_FILHO').AsInteger := ModalForm.ID;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmJuncao.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_COLUNA_TABELA_PAI' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_TABELA_PAI;ID_TABELA_PAI', DataSource.DataSet.FieldByName('ID_COLUNA_TABELA_PAI').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA;ID_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA_PAI' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_TABELA_PAI', DataSource.DataSet.FieldByName('ID_TABELA_PAI').Value, 'ID_TABELA', 'TABELA', 'NOME_TABELA');

    end
    else if Field.FieldName = 'ID_COLUNA_TABELA_FILHO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_COLUNA_TABELA_FILHO;ID_TABELA_FILHO', DataSource.DataSet.FieldByName('ID_COLUNA_TABELA_FILHO').Value, 'ID_COLUNA', 'COLUNA', 'NOME_COLUNA;ID_TABELA');

    end
    else if Field.FieldName = 'ID_TABELA_FILHO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_TABELA_FILHO', DataSource.DataSet.FieldByName('ID_TABELA_FILHO').Value, 'ID_TABELA', 'TABELA', 'NOME_TABELA');

    end;

  end;

end;

procedure TFrmJuncao.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Tabela_Pai.Text <> '' then
    SQLWhere.Add('T.NOME_TABELA_PAI LIKE ''' + EdtPesquisaNome_Tabela_Pai.Text + '''');

  if EdtPesquisaNome_Tabela_Filho.Text <> '' then
    SQLWhere.Add('T.NOME_TABELA_FILHO LIKE ''' + EdtPesquisaNome_Tabela_Filho.Text + '''');

  inherited;

end;

procedure TFrmJuncao.ActInclusaoAutomaticaExecute(Sender: TObject);

var
  ModalForm: TFrmInclusaoAutomaticaJuncoes;

begin

  inherited;

  ModalForm := TFrmInclusaoAutomaticaJuncoes.Create(Self);

  try

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

end.
