unit Base;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList;

type
  TFormBase = class(TForm)
    ActionList: TActionList;
    ImageList1: TImageList;
    procedure Controle; virtual;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBase: TFormBase;

implementation

{$R *.dfm}

procedure TFormBase.Controle;
begin

  { sem código }

end;

procedure TFormBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;

end;

end.
