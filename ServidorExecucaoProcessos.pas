unit ServidorExecucaoProcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, Provider, SqlExpr, ComCtrls, DB, DBClient, DBLocal,
  ExtCtrls, ActnList, ImgList, Menus, ToolWin, FMTBcd, DateUtils;

type
  TFrmServidorExecucaoProcessos = class(TFormBasePadrao)
    ActSair: TAction;
    ActExecutar: TAction;
    ActParar: TAction;
    TmrVarredura: TTimer;
    BtnSair: TToolButton;
    ToolButton2: TToolButton;
    BtnExecutar: TToolButton;
    BtnParar: TToolButton;
    QryProcessosDisparar: TSQLQuery;
    PnlRelogio: TPanel;
    TmrRelogio: TTimer;
    procedure Controle; override;
    procedure LigaRelogio;
    procedure AtualizaRelogio;
    procedure DesligaRelogio;
    procedure RealizaVarredura;
    procedure DisparaProcesso(iIdProcesso: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActExecutarExecute(Sender: TObject);
    procedure ActPararExecute(Sender: TObject);
    procedure TmrVarreduraTimer(Sender: TObject);
    procedure TmrRelogioTimer(Sender: TObject);
  private
    FTempoRestante: TTime;
    procedure SetTempoRestante(const Value: TTime);
  public
    property TempoRestante: TTime read FTempoRestante write SetTempoRestante;
  end;

var
  FrmServidorExecucaoProcessos: TFrmServidorExecucaoProcessos;

implementation

uses ExecutaProcesso, ModuloDados;

{$R *.dfm}

procedure TFrmServidorExecucaoProcessos.SetTempoRestante(
  const Value: TTime);
begin

  FTempoRestante := Value;

  PnlRelogio.Caption := TimeToStr(FTempoRestante);

end;

procedure TFrmServidorExecucaoProcessos.Controle;
begin

  inherited;

  ActExecutar.Enabled := not TmrVarredura.Enabled;
  ActParar.Enabled    := TmrVarredura.Enabled;
  ActSair.Enabled     := not TmrVarredura.Enabled;

end;

procedure TFrmServidorExecucaoProcessos.LigaRelogio;

var
  iSegundos, iHor, iMin, iSeg: Integer;

begin

  iSegundos := Trunc(TmrVarredura.Interval / 1000);

  iSeg := (iSegundos mod 60);
  iMin := (iSegundos div 60);
  iHor := (iMin div 60);
  iMin := (iMin mod 60);
  iHor := (iHor mod 24);

  TempoRestante := EncodeTime(iHor, iMin, iSeg, 0);

  TmrRelogio.Enabled := True;

end;

procedure TFrmServidorExecucaoProcessos.AtualizaRelogio;

var
  iSegundos: Integer;

begin

  iSegundos := Trunc(TmrRelogio.Interval / 1000);

  TempoRestante := IncSecond(TempoRestante, -iSegundos);

end;

procedure TFrmServidorExecucaoProcessos.DesligaRelogio;
begin

  TmrRelogio.Enabled := False;
  PnlRelogio.Caption := '';

end;

procedure TFrmServidorExecucaoProcessos.RealizaVarredura;

var
  bEnabledTimer: Boolean;
  sMensagem: String;

begin

  inherited;

  bEnabledTimer := TmrVarredura.Enabled;

  try

    sMensagem := ExibeMensagem('Procurando processos a disparar...');

    try

      with QryProcessosDisparar do
      begin

        Open;

        try

          while not Eof do
          begin

            DisparaProcesso(FieldByName('ID_PROCESSO').AsInteger);

            Next;

          end;

        finally

          Close;

        end;

      end;

    finally

      ExibeMensagem(sMensagem);

    end;

  finally

    TmrVarredura.Enabled := bEnabledTimer;

  end;

end;

procedure TFrmServidorExecucaoProcessos.DisparaProcesso(iIdProcesso: Integer);

var
  ModalForm: TFrmExecutaProcesso;
  sMensagem: String;

begin

  sMensagem := ExibeMensagem('Disparando processo...');

  try

    ModalForm := TFrmExecutaProcesso.Create(Application);

    try

      ModalForm.Executa(iIdProcesso);

    finally

      ModalForm.Free;

    end;

  finally

    ExibeMensagem(sMensagem);

  end;

end;

procedure TFrmServidorExecucaoProcessos.FormCreate(Sender: TObject);
begin

  inherited;

  Controle;

end;

procedure TFrmServidorExecucaoProcessos.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFrmServidorExecucaoProcessos.ActExecutarExecute(
  Sender: TObject);
begin

  inherited;

  RealizaVarredura;

  TmrVarredura.Enabled := True;

  LigaRelogio;

  Controle;

end;

procedure TFrmServidorExecucaoProcessos.ActPararExecute(Sender: TObject);
begin

  inherited;

  TmrVarredura.Enabled := False;

  DesligaRelogio;

  Controle;

end;

procedure TFrmServidorExecucaoProcessos.TmrVarreduraTimer(Sender: TObject);
begin

  inherited;

  DesligaRelogio;

  try

    RealizaVarredura;

  finally

    LigaRelogio;

  end;

end;

procedure TFrmServidorExecucaoProcessos.TmrRelogioTimer(Sender: TObject);
begin

  inherited;

  AtualizaRelogio;

end;

end.
