unit Processamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseManutencaoDados, ImgList, ActnList, Menus, ComCtrls, ToolWin,
  ExtCtrls, DBCtrls, Provider, SqlExpr, StdCtrls, DB, DBClient, DBLocal, Grids,
  DBGrids, Mask, FMTBcd, BaseConsultaDados;

type
  TFrmProcessamento = class(TFormBaseConsultaDados)
    Label5: TLabel;
    EdtPesquisaNome_Processo: TEdit;
    PnlMestreProcesso: TPanel;
    Label3: TLabel;
    EdtMestreNome_Processo: TEdit;
    SQLDataSetID_PROCESSAMENTO: TFMTBCDField;
    SQLDataSetID_PROCESSO: TFMTBCDField;
    SQLDataSetNOME_PROCESSO: TStringField;
    SQLDataSetDAT_INICIO: TSQLTimeStampField;
    SQLDataSetDAT_TERMINO: TSQLTimeStampField;
    SQLDataSetQTD_REGISTROS: TFMTBCDField;
    SQLDataSetQTD_REGISTROS_ERRO: TFMTBCDField;
    SQLDataSetLOG: TStringField;
    ClientDataSetID_PROCESSAMENTO: TFMTBCDField;
    ClientDataSetID_PROCESSO: TFMTBCDField;
    ClientDataSetNOME_PROCESSO: TStringField;
    ClientDataSetDAT_INICIO: TSQLTimeStampField;
    ClientDataSetDAT_TERMINO: TSQLTimeStampField;
    ClientDataSetQTD_REGISTROS: TFMTBCDField;
    ClientDataSetQTD_REGISTROS_ERRO: TFMTBCDField;
    ClientDataSetLOG: TStringField;
    Label1: TLabel;
    DBEdtNome_Processo: TDBEdit;
    Label2: TLabel;
    DBEdtDat_Inicio: TDBEdit;
    Label4: TLabel;
    DBEdtDat_Termino: TDBEdit;
    Label6: TLabel;
    DBEdtQtd_Registros: TDBEdit;
    Label7: TLabel;
    DBEdtQtd_Registros_Erro: TDBEdit;
    TabLog: TTabSheet;
    DBRchLog: TDBRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActAtualizarConsultaExecute(Sender: TObject);
  private
    FIDProcesso: Integer;
    procedure SetIDProcesso(const Value: Integer);
  public
    property IDProcesso: Integer read FIDProcesso write SetIDProcesso;
  end;

var
  FrmProcessamento: TFrmProcessamento;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFrmProcessamento.SetIDProcesso(const Value: Integer);
begin

  FIDProcesso := Value;

  if FIDProcesso <> 0 then
  begin

    if SQLWhereMestre.Count > 0 then
      SQLWhereMestre.Add('  AND P2.ID_PROCESSO = ' + IntToStr(FIDProcesso))
    else
      SQLWhereMestre.Add('  P2.ID_PROCESSO = ' + IntToStr(FIDProcesso));

    EdtMestreNome_Processo.Text := VarToStr(DM.LookupQuery(FIDProcesso, 'ID_PROCESSO', 'PROCESSO', 'NOME'));

    IniciarAtualizado := True;

  end;

  PnlMestreProcesso.Visible := (FIDProcesso <> 0);

  ControlePainelMestre;

end;

procedure TFrmProcessamento.FormCreate(Sender: TObject);
begin

  inherited;

  TableName    := 'PROCESSAMENTO';

  ColunaId := 'ID_PROCESSAMENTO';

  IDProcesso := 0;

  Controle;

end;

procedure TFrmProcessamento.ActAtualizarConsultaExecute(
  Sender: TObject);
begin

  SQLWhere.Clear;

  if EdtPesquisaNome_Processo.Text <> '' then
    SQLWhere.Add('P2.NOME LIKE ''' + EdtPesquisaNome_Processo.Text + '''');

  inherited;

end;

end.
