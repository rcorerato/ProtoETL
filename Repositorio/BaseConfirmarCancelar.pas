unit BaseConfirmarCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ComCtrls, Menus, ActnList, ImgList, ToolWin;

type
  TFormBaseConfirmarCancelar = class(TFormBasePadrao)
    ActConfirmar: TAction;
    ActCancelar: TAction;
    BtnConfirmar: TToolButton;
    BtnCancelar: TToolButton;
    procedure Controle; virtual;
    procedure FormCreate(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
  private
    FPodeConfirmar: Boolean;
    procedure SetPodeConfirmar(const Value: Boolean);
  public
    property PodeConfirmar: Boolean read FPodeConfirmar write SetPodeConfirmar;
  end;

var
  FormBaseConfirmarCancelar: TFormBaseConfirmarCancelar;

implementation

{$R *.dfm}

procedure TFormBaseConfirmarCancelar.SetPodeConfirmar(
  const Value: Boolean);
begin

  FPodeConfirmar := Value;

  ActConfirmar.Enabled := FPodeConfirmar;

end;

procedure TFormBaseConfirmarCancelar.Controle;
begin

  inherited;

  { sem código }

end;

procedure TFormBaseConfirmarCancelar.FormCreate(Sender: TObject);
begin

  inherited;

  PodeConfirmar := False;

end;

procedure TFormBaseConfirmarCancelar.ActConfirmarExecute(Sender: TObject);
begin

  inherited;

  if (fsModal in FormState) then
    ModalResult := mrOk
  else
    Close;

end;

procedure TFormBaseConfirmarCancelar.ActCancelarExecute(Sender: TObject);
begin

  inherited;

  if (fsModal in FormState) then
    ModalResult := mrCancel
  else
    Close;

end;

end.
