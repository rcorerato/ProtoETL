unit CaixaInformacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrmCaixaInformacao = class(TForm)
    ImgInformation: TImage;
    MemInformacao: TMemo;
    BtnOK: TButton;
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    Severidade: TMsgDlgType;
  end;

var
  FrmCaixaInformacao: TFrmCaixaInformacao;

implementation

{$R *.DFM}

procedure TFrmCaixaInformacao.BtnOKClick(Sender: TObject);
begin

  // Fecha formulário
  Close;

end;

end.
