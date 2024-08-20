unit BaseDuasListas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePadrao, ImgList, ActnList, Menus, ComCtrls, ToolWin,
  ExtCtrls, StdCtrls, Grids;

type
  TFormBaseDuasListas = class(TFormBasePadrao)
    GrpItensDisponiveis: TGroupBox;
    PnlCentral: TPanel;
    GrpItensSelecionados: TGroupBox;
    ActInserir: TAction;
    ActRemover: TAction;
    ActInserirTudo: TAction;
    ActRemoverTudo: TAction;
    GrdItensDisponiveis: TStringGrid;
    GrdItensSelecionados: TStringGrid;
    BtnInserir: TButton;
    BtnRemover: TButton;
    BtnInserirTudo: TButton;
    BtnRemoverTudo: TButton;
    ActSair: TAction;
    ActConfirmar: TAction;
    ActCancelar: TAction;
    procedure Controle; virtual;
    function LinhaVazia(StringGrid: TStringGrid): Boolean;
    function ListaVazia(StringGrid: TStringGrid): Boolean;
    function TopoLista(StringGrid: TStringGrid): Boolean;
    function BaseLista(StringGrid: TStringGrid): Boolean;
    procedure LimpaLinha(StringGrid: TStringGrid);
    procedure AdicionaLinha(StringGrid: TStringGrid);
    procedure InsereLinha(StringGrid: TStringGrid);
    procedure RemoveLinha(StringGrid: TStringGrid);
    procedure MoveLinha(StrGrdOrigem, StrGrdDestino: TStringGrid);
    procedure GrdItensDisponiveisMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GrdItensDisponiveisDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GrdItensDisponiveisDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GrdItensSelecionadosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GrdItensSelecionadosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GrdItensSelecionadosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ActSairExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure ActRemoverExecute(Sender: TObject);
    procedure ActInserirTudoExecute(Sender: TObject);
    procedure ActRemoverTudoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseDuasListas: TFormBaseDuasListas;

implementation

{$R *.dfm}

procedure TFormBaseDuasListas.Controle;
begin

  inherited;

  ActInserir.Enabled     := not ListaVazia(GrdItensDisponiveis);
  ActRemover.Enabled     := not ListaVazia(GrdItensSelecionados);
  ActInserirTudo.Enabled := ActInserir.Enabled;
  ActRemoverTudo.Enabled := ActRemover.Enabled;

end;

function TFormBaseDuasListas.LinhaVazia(StringGrid: TStringGrid): Boolean;

var
  i: Integer;

begin

  Result := True;

  i := StringGrid.FixedCols;

  while (i <= StringGrid.ColCount-1) and Result do
  begin

    Result := (Trim(StringGrid.Cells[i, StringGrid.Row]) = '');

    Inc(i);

  end;

end;

function TFormBaseDuasListas.ListaVazia(StringGrid: TStringGrid): Boolean;
begin

  Result := ((StringGrid.RowCount - StringGrid.FixedRows) <= 1) and LinhaVazia(StringGrid);

end;

function TFormBaseDuasListas.TopoLista(StringGrid: TStringGrid): Boolean;
begin

  Result := not (StringGrid.Row > StringGrid.FixedRows);

end;

function TFormBaseDuasListas.BaseLista(StringGrid: TStringGrid): Boolean;
begin

  Result := not (StringGrid.Row < StringGrid.RowCount-1);

end;

procedure TFormBaseDuasListas.LimpaLinha(StringGrid: TStringGrid);

var
  i: Integer;

begin

  for i := StringGrid.FixedCols to StringGrid.ColCount-1 do
    StringGrid.Cells[i, StringGrid.Row] := '';

end;

procedure TFormBaseDuasListas.AdicionaLinha(StringGrid: TStringGrid);
begin

  if not ListaVazia(StringGrid) then
    StringGrid.RowCount := StringGrid.RowCount + 1;

  StringGrid.Row := StringGrid.RowCount-1;

end;

procedure TFormBaseDuasListas.InsereLinha(StringGrid: TStringGrid);

var
  iRow, iCol: Integer;

begin

  if not ListaVazia(StringGrid) then
    StringGrid.RowCount := StringGrid.RowCount + 1;

  for iRow := StringGrid.RowCount-1 downto StringGrid.Row+1 do
    for iCol := StringGrid.FixedCols to StringGrid.ColCount-1 do
      StringGrid.Cells[iCol, iRow] := StringGrid.Cells[iCol, iRow-1];

  if StringGrid.Row < StringGrid.RowCount-1 then
    StringGrid.Row := StringGrid.Row + 1;

  LimpaLinha(StringGrid);

end;

procedure TFormBaseDuasListas.RemoveLinha(StringGrid: TStringGrid);

var
  iRow, iCol: Integer;

begin

  LimpaLinha(StringGrid);

  for iRow := StringGrid.Row+1 to StringGrid.RowCount-1 do
    for iCol := StringGrid.FixedCols to StringGrid.ColCount-1 do
      StringGrid.Cells[iCol, iRow-1] := StringGrid.Cells[iCol, iRow];

  if not ListaVazia(StringGrid) then
    StringGrid.RowCount := StringGrid.RowCount - 1;

end;

procedure TFormBaseDuasListas.MoveLinha(StrGrdOrigem, StrGrdDestino: TStringGrid);

var
  i: Integer;

begin

  InsereLinha(StrGrdDestino);

  for i := StrGrdDestino.FixedCols to StrGrdDestino.ColCount-1 do
    if i <= StrGrdOrigem.ColCount-1 then
      StrGrdDestino.Cells[i, StrGrdDestino.Row] := StrGrdOrigem.Cells[i, StrGrdOrigem.Row];

  RemoveLinha(StrGrdOrigem);

end;

procedure TFormBaseDuasListas.GrdItensDisponiveisMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if (Button <> mbRight) then
    GrdItensDisponiveis.BeginDrag(True);

end;

procedure TFormBaseDuasListas.GrdItensDisponiveisDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin

  if Source = GrdItensSelecionados then
    Accept := True;

end;

procedure TFormBaseDuasListas.GrdItensDisponiveisDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin

  if Source = GrdItensSelecionados then
    ActRemover.Execute;

end;

procedure TFormBaseDuasListas.GrdItensSelecionadosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if (Button <> mbRight) then
    GrdItensSelecionados.BeginDrag(True);

end;

procedure TFormBaseDuasListas.GrdItensSelecionadosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin

  if Source = GrdItensDisponiveis then
    Accept := True;

end;

procedure TFormBaseDuasListas.GrdItensSelecionadosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin

  if Source = GrdItensDisponiveis then
    ActInserir.Execute;

end;

procedure TFormBaseDuasListas.ActSairExecute(Sender: TObject);
begin

  inherited;

  Close;

end;

procedure TFormBaseDuasListas.ActConfirmarExecute(Sender: TObject);
begin

  inherited;

  // Fecha formulário
  if (fsModal in FormState) then
    ModalResult := mrOk
  else
    Close;

end;

procedure TFormBaseDuasListas.ActCancelarExecute(Sender: TObject);
begin

  inherited;

  // Fecha formulário
  if (fsModal in FormState) then
    ModalResult := mrCancel
  else
    Close;

end;

procedure TFormBaseDuasListas.ActInserirExecute(Sender: TObject);
begin

  inherited;

  MoveLinha(GrdItensDisponiveis, GrdItensSelecionados);

  Controle;

end;

procedure TFormBaseDuasListas.ActRemoverExecute(Sender: TObject);
begin

  inherited;

  MoveLinha(GrdItensSelecionados, GrdItensDisponiveis);

  Controle;

end;

procedure TFormBaseDuasListas.ActInserirTudoExecute(Sender: TObject);
begin

  inherited;

  while not ListaVazia(GrdItensDisponiveis) do
    ActInserir.Execute;

  Controle;

end;

procedure TFormBaseDuasListas.ActRemoverTudoExecute(Sender: TObject);
begin

  inherited;

  while not ListaVazia(GrdItensSelecionados) do
    ActRemover.Execute;

  Controle;

end;

end.
