unit InclusaoAutomaticaColunas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ImgList, ActnList, Menus, ComCtrls, ToolWin, Provider,
  SqlExpr, DB, DBClient, DBLocal, DBCtrls, StdCtrls, FMTBcd, DBXpress, Rotinas;

type
  TFrmInclusaoAutomaticaColunas = class(TFormBasePadrao)
    ActSair: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActExecutar: TAction;
    ToolButton3: TToolButton;
    Label1: TLabel;
    DBCboTabela: TDBLookupComboBox;
    DtsTabelas: TDataSource;
    PrcIncluiColunas: TSQLStoredProc;
    CdsTabelas: TClientDataSet;
    PrvTabelas: TDataSetProvider;
    QryTabelas: TSQLDataSet;
    procedure Controle; override;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActSairExecute(Sender: TObject);
    procedure ActExecutarExecute(Sender: TObject);
  private
    FIDTabela: Integer;
    procedure SetIDTabela(const Value: Integer);
  public
    property IDTabela: Integer read FIDTabela write SetIDTabela;
  end;

var
  FrmInclusaoAutomaticaColunas: TFrmInclusaoAutomaticaColunas;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFrmInclusaoAutomaticaColunas.SetIDTabela(const Value: Integer);
begin

  FIDTabela := Value;

  DBCboTabela.KeyValue := FIDTabela;

  Controle;

end;

procedure TFrmInclusaoAutomaticaColunas.Controle;
begin

  inherited;

  DBCboTabela.Enabled := (FIDTabela = 0);

end;

procedure TFrmInclusaoAutomaticaColunas.FormCreate(Sender: TObject);
begin

  inherited;

  FIDTabela := 0;

  Controle;

end;

procedure TFrmInclusaoAutomaticaColunas.FormShow(Sender: TObject);
begin

  inherited;

  DtsTabelas.DataSet.Open;

end;

procedure TFrmInclusaoAutomaticaColunas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  DtsTabelas.DataSet.Close;

  inherited;

end;

procedure TFrmInclusaoAutomaticaColunas.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFrmInclusaoAutomaticaColunas.ActExecutarExecute(Sender: TObject);

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

        PrcIncluiColunas.ParamByName('P_ID_TABELA').Value := DBCboTabela.KeyValue;
        PrcIncluiColunas.ExecProc;

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
