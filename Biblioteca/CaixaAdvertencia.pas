unit CaixaAdvertencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrmCaixaAdvertencia = class(TForm)
    ImgWarning: TImage;
    LblEfeito: TLabel;
    EdtEfeito: TEdit;
    LblCausa: TLabel;
    MemCausa: TMemo;
    LblAcao: TLabel;
    MemAcao: TMemo;
    BtnOK: TButton;
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaAdvertencia: TFrmCaixaAdvertencia;

implementation

{$R *.DFM}

procedure TFrmCaixaAdvertencia.BtnOKClick(Sender: TObject);
begin

  // Fecha formulário
  Close;

end;

end.
