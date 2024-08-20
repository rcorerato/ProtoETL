unit LimpezaProcessamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ImgList, ActnList, Menus, ComCtrls, ToolWin, Provider,
  SqlExpr, DB, DBClient, DBLocal, DBCtrls, StdCtrls, FMTBcd, DBXpress, Rotinas;

type
  TFrmLimpezaProcessamentos = class(TFormBasePadrao)
    ActSair: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActExecutar: TAction;
    ToolButton3: TToolButton;
    Label1: TLabel;
    DBCboProcesso: TDBLookupComboBox;
    DtsProcessos: TDataSource;
    PrcLimpaProcessamentos: TSQLStoredProc;
    SQLDataSet: TSQLDataSet;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    procedure Controle; override;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActSairExecute(Sender: TObject);
    procedure ActExecutarExecute(Sender: TObject);
  private
    FIDProcesso: Integer;
    procedure SetIDProcesso(const Value: Integer);
  public
    property IDProcesso: Integer read FIDProcesso write SetIDProcesso;
  end;

var
  FrmLimpezaProcessamentos: TFrmLimpezaProcessamentos;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFrmLimpezaProcessamentos.SetIDProcesso(const Value: Integer);
begin

  FIDProcesso := Value;

  DBCboProcesso.KeyValue := FIDProcesso;

  Controle;

end;

procedure TFrmLimpezaProcessamentos.Controle;
begin

  inherited;

  DBCboProcesso.Enabled := (FIDProcesso = 0);

end;

procedure TFrmLimpezaProcessamentos.FormCreate(Sender: TObject);
begin

  inherited;

  FIDProcesso := 0;

  Controle;

end;

procedure TFrmLimpezaProcessamentos.FormShow(Sender: TObject);
begin

  inherited;

  DtsProcessos.DataSet.Open;

end;

procedure TFrmLimpezaProcessamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  DtsProcessos.DataSet.Close;

  inherited;

end;

procedure TFrmLimpezaProcessamentos.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFrmLimpezaProcessamentos.ActExecutarExecute(Sender: TObject);

var
  TransDesc: TTransactionDesc;
  dInicio, dTermino: TDateTime;

begin

  inherited;

  if Application.MessageBox('Confirma limpeza?', 'Confirmação', mb_IconQuestion + mb_YesNo) = idYes then
  begin

    dInicio := Now;

    DM.SQLConnection.StartTransaction(TransDesc);

    try

      PrcLimpaProcessamentos.ParamByName('P_ID_PROCESSO').Value := DBCboProcesso.KeyValue;
      PrcLimpaProcessamentos.ExecProc;

      DM.SQLConnection.Commit(TransDesc);

      dTermino := Now;

      CaixaConclusao(dInicio, dTermino);

    except

      DM.SQLConnection.Rollback(TransDesc);

      raise;

    end;

  end;

end;

end.
