unit Processo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, ImgList, ActnList, Menus, ComCtrls, ToolWin,
  ExtCtrls, DBCtrls, Provider, SqlExpr, StdCtrls, DB, DBClient, DBLocal, Grids,
  DBGrids, Mask, FMTBcd, Buttons, Spin, Rotinas;

type
  TFrmProcesso = class(TFormBaseManutencaoDados)
    Label1: TLabel;
    DBEdtNome: TDBEdit;
    Label3: TLabel;
    DBEdtIntervalo_Minutos: TDBEdit;
    Label5: TLabel;
    EdtPesquisaNome: TEdit;
    ClientDataSetID_PROCESSO: TFMTBCDField;
    ClientDataSetNOME: TStringField;
    ClientDataSetINTERVALO_MINUTOS: TFMTBCDField;
    SQLDataSetID_PROCESSO: TFMTBCDField;
    SQLDataSetNOME: TStringField;
    SQLDataSetINTERVALO_MINUTOS: TFMTBCDField;
    SQLDataSetID_MAPEAMENTO: TFMTBCDField;
    SQLDataSetNOME_MAPEAMENTO: TStringField;
    ClientDataSetID_MAPEAMENTO: TFMTBCDField;
    ClientDataSetNOME_MAPEAMENTO: TStringField;
    Label10: TLabel;
    DBEdtNome_Mapeamento: TDBEdit;
    BtnMapeamento: TButton;
    SQLDataSetEXECUTANDO: TStringField;
    SQLDataSetDAT_ULT_EXECUCAO: TSQLTimeStampField;
    ClientDataSetEXECUTANDO: TStringField;
    ClientDataSetDAT_ULTIMA_EXECUCAO: TSQLTimeStampField;
    Label2: TLabel;
    DBEdtExecutando: TDBEdit;
    Label4: TLabel;
    DBEdtDat_Ultima_Execucao: TDBEdit;
    Label6: TLabel;
    DBEdtQtd_Execucoes: TDBEdit;
    SQLDataSetQTD_EXECUCOES: TFMTBCDField;
    SQLDataSetQTD_EXECUCOES_ERRO: TFMTBCDField;
    ClientDataSetQTD_EXECUCOES: TFMTBCDField;
    ClientDataSetQTD_EXECUCOES_ERRO: TFMTBCDField;
    Label7: TLabel;
    DBEdtQtd_Execucoes_Erro: TDBEdit;
    SQLDataSetATIVO: TStringField;
    ClientDataSetATIVO: TStringField;
    DBChkAtivo: TDBCheckBox;
    BtnProcessamentos: TBitBtn;
    SQLDataSetDAT_PROXIMA_EXECUCAO: TSQLTimeStampField;
    ClientDataSetDAT_PROXIMA_EXECUCAO: TSQLTimeStampField;
    Label8: TLabel;
    DBEdtDat_Proxima_Execucao: TDBEdit;
    SpdProximaExecucaoAgora: TSpeedButton;
    SpnIntervaloMinutos: TSpinButton;
    function Consistencia: Boolean; override;
    procedure FormCreate(Sender: TObject);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
    procedure BtnMapeamentoClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ClientDataSetNewRecord(DataSet: TDataSet);
    procedure BtnProcessamentosClick(Sender: TObject);
    procedure SpdProximaExecucaoAgoraClick(Sender: TObject);
    procedure SpnIntervaloMinutosDownClick(Sender: TObject);
    procedure SpnIntervaloMinutosUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcesso: TFrmProcesso;

implementation

uses ModuloDados, Mapeamento, Processamento;

{$R *.dfm}

function TFrmProcesso.Consistencia: Boolean;
begin

  Result := True;

  if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME')) then
  begin

    Result := False;

  end
  else if not CampoFaixaMin(DataSource.DataSet.FieldByName('INTERVALO_MINUTOS'), 0, False) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('DAT_PROXIMA_EXECUCAO')) then
  begin

    Result := False;

  end
  else if not CampoNaoNulo(DataSource.DataSet.FieldByName('NOME_MAPEAMENTO')) then
  begin

    Result := False;

  end;

end;

procedure TFrmProcesso.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'PROCESSO';
  SequenceName := 'SEQ_PROCESSO';

  ColunaId := 'ID_PROCESSO';

end;

procedure TFrmProcesso.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome.Text <> '' then
    SQLWhere.Add('P.NOME LIKE ''' + EdtPesquisaNome.Text + '''');

  inherited;

end;

procedure TFrmProcesso.BtnMapeamentoClick(Sender: TObject);

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

procedure TFrmProcesso.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin

  inherited;

  if Assigned(Field) then
  begin

    if Field.FieldName = 'ID_MAPEAMENTO' then
    begin

      DM.DataSetLookupQuery(DataSource.DataSet, 'NOME_MAPEAMENTO', DataSource.DataSet.FieldByName('ID_MAPEAMENTO').Value, 'ID_MAPEAMENTO', 'MAPEAMENTO', 'NOME');

    end;

  end;

end;

procedure TFrmProcesso.ClientDataSetNewRecord(DataSet: TDataSet);
begin

  inherited;

  DataSet.FieldByName('ATIVO').AsString := 'N';

end;

procedure TFrmProcesso.BtnProcessamentosClick(Sender: TObject);

var
  ModalForm: TFrmProcessamento;

begin

  inherited;

  ModalForm := TFrmProcessamento.Create(Self);

  try

    ModalForm.IdProcesso := DataSource.DataSet.FieldByName('ID_PROCESSO').AsInteger;

    ModalForm.ShowModal;

  finally

    ModalForm.Free;

  end;

end;

procedure TFrmProcesso.SpdProximaExecucaoAgoraClick(Sender: TObject);
begin

  inherited;

  DataSource.DataSet.FieldByName('DAT_PROXIMA_EXECUCAO').AsDateTime := Now;

end;

procedure TFrmProcesso.SpnIntervaloMinutosDownClick(Sender: TObject);
begin

  inherited;

  DBEdtIntervalo_Minutos.Field.AsInteger := DBEdtIntervalo_Minutos.Field.AsInteger - 1;

end;

procedure TFrmProcesso.SpnIntervaloMinutosUpClick(Sender: TObject);
begin

  inherited;

  DBEdtIntervalo_Minutos.Field.AsInteger := DBEdtIntervalo_Minutos.Field.AsInteger + 1;

end;

end.
