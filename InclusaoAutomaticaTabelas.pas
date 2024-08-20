unit InclusaoAutomaticaTabelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ImgList, ActnList, Menus, ComCtrls, ToolWin,
  Provider, SqlExpr, DB, DBClient, DBLocal, DBCtrls, StdCtrls, FMTBcd, DBXpress,
  Rotinas;

type
  TFrmInclusaoAutomaticaTabelas = class(TFormBasePadrao)
    ActSair: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActExecutar: TAction;
    ToolButton3: TToolButton;
    Label1: TLabel;
    DBCboUser: TDBLookupComboBox;
    DtsUsers: TDataSource;
    PrcIncluiTabelas: TSQLStoredProc;
    QryUsers: TSQLDataSet;
    PrvUsers: TDataSetProvider;
    CdsUsers: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActSairExecute(Sender: TObject);
    procedure ActExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInclusaoAutomaticaTabelas: TFrmInclusaoAutomaticaTabelas;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFrmInclusaoAutomaticaTabelas.FormShow(Sender: TObject);
begin

  inherited;

  DtsUsers.DataSet.Open;

end;

procedure TFrmInclusaoAutomaticaTabelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  DtsUsers.DataSet.Close;

  inherited;

end;

procedure TFrmInclusaoAutomaticaTabelas.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFrmInclusaoAutomaticaTabelas.ActExecutarExecute(Sender: TObject);

var
  TransDesc: TTransactionDesc;
  dInicio, dTermino: TDateTime;
  sMensagem: String;

begin

  inherited;

  if Application.MessageBox('Confirma inclusão?', 'Confirmação', mb_IconQuestion + mb_YesNo) = idYes then
  begin

    sMensagem := ExibeMensagem('Processando...');

    try

      dInicio := Now;

      DM.SQLConnection.StartTransaction(TransDesc);

      try

        PrcIncluiTabelas.ParamByName('P_PROPRIETARIO').Value := DBCboUser.KeyValue;
        PrcIncluiTabelas.ExecProc;

        DM.SQLConnection.Commit(TransDesc);

        dTermino := Now;

        CaixaConclusao(dInicio, dTermino);

      except

        DM.SQLConnection.Rollback(TransDesc);

        raise;

      end;

    finally

      ExibeMensagem(sMensagem);

    end;

  end;

end;

end.
