unit ExibicaoColunas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseConfirmarCancelar, StdCtrls, CheckLst, ImgList, ActnList,
  Menus, ComCtrls, ToolWin, DBGrids;

type
  TFrmExibicaoColunas = class(TFormBaseConfirmarCancelar)
    CheckListBox: TCheckListBox;
    ActInverterSelecao: TAction;
    ActSelecionarTudo: TAction;
    ActLimparSelecao: TAction;
    Formulrio1: TMenuItem;
    Lista1: TMenuItem;
    Confirmar1: TMenuItem;
    Cancelar1: TMenuItem;
    SelecionarTudo1: TMenuItem;
    LimparSeleo1: TMenuItem;
    InverterSeleo1: TMenuItem;
    PumCheckListBox: TPopupMenu;
    SelecionarTudo2: TMenuItem;
    LimparSeleo2: TMenuItem;
    InverterSeleo2: TMenuItem;
    procedure Controle; override;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActSelecionarTudoExecute(Sender: TObject);
    procedure ActLimparSelecaoExecute(Sender: TObject);
    procedure ActInverterSelecaoExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
  private
    FDBGrid: TDBGrid;
  public
    property DBGrid: TDBGrid read FDBGrid write FDBGrid;
  end;

var
  FrmExibicaoColunas: TFrmExibicaoColunas;

implementation

{$R *.dfm}

procedure TFrmExibicaoColunas.Controle;
begin

  inherited;

  ActConfirmar.Enabled := CheckListBox.Items.Count > 0;

end;

procedure TFrmExibicaoColunas.FormCreate(Sender: TObject);
begin

  inherited;

  PodeConfirmar := True;

end;

procedure TFrmExibicaoColunas.FormShow(Sender: TObject);

var
  i: Integer;

begin

  inherited;

  CheckListBox.Clear;

  for i := 0 to DBGrid.Columns.Count-1 do
  begin

    CheckListBox.Items.Add(DBGrid.Columns[i].Title.Caption);
    CheckListBox.Checked[CheckListBox.Count-1] := DBGrid.Columns[i].Visible;

  end;

  Controle;

end;

procedure TFrmExibicaoColunas.ActSelecionarTudoExecute(Sender: TObject);

var
  i: Integer;

begin

  inherited;

  for i := 0 to CheckListBox.Count-1 do
    CheckListBox.Checked[i] := True;

end;

procedure TFrmExibicaoColunas.ActLimparSelecaoExecute(Sender: TObject);

var
  i: Integer;

begin

  inherited;

  for i := 0 to CheckListBox.Count-1 do
    CheckListBox.Checked[i] := False;

end;

procedure TFrmExibicaoColunas.ActInverterSelecaoExecute(Sender: TObject);

var
  i: Integer;

begin

  inherited;

  for i := 0 to CheckListBox.Count-1 do
    CheckListBox.Checked[i] := not CheckListBox.Checked[i];

end;

procedure TFrmExibicaoColunas.ActConfirmarExecute(Sender: TObject);

var
  i: Integer;

begin

  for i := 0 to CheckListBox.Count-1 do
    DBGrid.Columns[i].Visible := CheckListBox.Checked[i];

  inherited;

end;

end.
