unit CaixaErro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrmCaixaErro = class(TForm)
    ImgError: TImage;
    LblMensagem: TLabel;
    MemMensagem: TMemo;
    LblClasse: TLabel;
    EdtClasse: TEdit;
    BtnOK: TButton;
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaErro: TFrmCaixaErro;

implementation

{$R *.DFM}

procedure TFrmCaixaErro.BtnOKClick(Sender: TObject);
begin

  // Fecha formulário
  Close;

end;

end.
