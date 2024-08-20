unit BaseTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, ImgList, ActnList, ExtCtrls;

type
  TFormBaseTarefa = class(TFormBase)
    PnlMensagem: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    FMensagem: String;
    procedure SetMensagem(const Value: String);

  public
    property Mensagem: String read FMensagem write SetMensagem;
  end;

var
  FormBaseTarefa: TFormBaseTarefa;

implementation

{$R *.dfm}

{ TFormBaseTarefa }

procedure TFormBaseTarefa.SetMensagem(const Value: String);
begin

  FMensagem := Value;

  PnlMensagem.Caption := FMensagem;
  Application.ProcessMessages;

end;

procedure TFormBaseTarefa.FormCreate(Sender: TObject);
begin

  inherited;

  FMensagem := '';

end;

end.
