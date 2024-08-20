unit BasePadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, ComCtrls, ToolWin, Menus, ActnList, ImgList;

type
  TFormBasePadrao = class(TFormBase)
    MainMenu: TMainMenu;
    ToolBar: TToolBar;
    StatusBar: TStatusBar;
    ScrollBox: TScrollBox;
    ImageList2: TImageList;
    function ExibeMensagem(sMensagem: String; iPanel: Integer = 0): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBasePadrao: TFormBasePadrao;

implementation

{$R *.dfm}

function TFormBasePadrao.ExibeMensagem(sMensagem: String; iPanel: Integer = 0): String;
begin

  Result := '';

  if StatusBar.Panels.Count > 0 then
  begin

    Result := StatusBar.Panels[iPanel].Text;

    StatusBar.Panels[iPanel].Text := sMensagem;
    Application.ProcessMessages;

  end;

end;

end.
