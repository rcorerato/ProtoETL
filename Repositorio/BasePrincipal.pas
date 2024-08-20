unit BasePrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BASEPADRAO, Menus, ComCtrls, ToolWin, ExtCtrls, ActnList,
  ImgList, AppEvnts, Jpeg, Rotinas;

type
  TFormBasePrincipal = class(TFormBasePadrao)
    Image: TImage;
    Aplicativo1: TMenuItem;
    ActSair: TAction;
    Sair1: TMenuItem;
    BtnSair: TToolButton;
    ApplicationEvents: TApplicationEvents;
    procedure TrataErros(Sender: TObject; E: Exception);
    procedure ActSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBasePrincipal: TFormBasePrincipal;

implementation

{$R *.dfm}

procedure TFormBasePrincipal.TrataErros(Sender: TObject; E: Exception);

var
  ApplicationExceptionEvent: TExceptionEvent;

begin

  ApplicationExceptionEvent := ApplicationEvents.OnException;
  ApplicationEvents.OnException := Nil;

  try

    CaixaErro(E.Message, E.ClassName);

  finally

    ApplicationEvents.OnException := ApplicationExceptionEvent;

  end;

end;

procedure TFormBasePrincipal.ActSairExecute(Sender: TObject);
begin

  inherited;

  if MessageBox(Handle, 'Confirma saída da aplicação?', 'Confirmação', mb_YesNo+mb_IconQuestion) = idYes then
    Close;

end;

procedure TFormBasePrincipal.FormCreate(Sender: TObject);

var
  sImageFile: String;

begin

  inherited;

  sImageFile := ChangeFileExt(Application.Title, '.jpg');

  if FileExists(sImageFile) then
  begin

    Image.Picture.Graphic := TJPEGImage.Create;
    Image.Picture.LoadFromFile(sImageFile);

  end;

end;

end.
