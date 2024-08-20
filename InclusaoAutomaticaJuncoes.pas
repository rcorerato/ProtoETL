unit InclusaoAutomaticaJuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ImgList, ActnList, Menus, ComCtrls, ToolWin,
  Provider, SqlExpr, DB, DBClient, DBLocal, DBCtrls, StdCtrls, FMTBcd, DBXpress,
  Rotinas;

type
  TFrmInclusaoAutomaticaJuncoes = class(TFormBasePadrao)
    ActSair: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActExecutar: TAction;
    ToolButton3: TToolButton;
    PrcIncluiJuncoes: TSQLStoredProc;
    procedure ActSairExecute(Sender: TObject);
    procedure ActExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInclusaoAutomaticaJuncoes: TFrmInclusaoAutomaticaJuncoes;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFrmInclusaoAutomaticaJuncoes.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFrmInclusaoAutomaticaJuncoes.ActExecutarExecute(Sender: TObject);

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

        PrcIncluiJuncoes.ExecProc;

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
