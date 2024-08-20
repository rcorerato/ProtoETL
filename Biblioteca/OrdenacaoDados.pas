unit OrdenacaoDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDuasListas, ComCtrls, ImgList, ActnList, Menus, StdCtrls,
  ExtCtrls, Grids, ToolWin, Buttons, Math, DataOrdering;

type
  TFrmOrdenacaoDados = class(TFormBaseDuasListas)
    BtnConfirmar: TToolButton;
    BtnCancelar: TToolButton;
    Panel2: TPanel;
    BtnTipoOrdem: TSpeedButton;
    BtnMoverCima: TBitBtn;
    BtnMoverBaixo: TBitBtn;
    ActMoverBaixo: TAction;
    ActMoverCima: TAction;
    ActOrdemCrescente: TAction;
    ActOrdemDecrescente: TAction;
    ActTipoOrdem: TAction;
    PumItensSelecionados: TPopupMenu;
    Crescente1: TMenuItem;
    Decrescente1: TMenuItem;
    procedure Controle; override;
    procedure InicializaGrades;
    procedure GeraCriterioOrdenacao;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GrdItensSelecionadosClick(Sender: TObject);
    procedure GrdItensSelecionadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActInserirExecute(Sender: TObject);
    procedure ActMoverCimaExecute(Sender: TObject);
    procedure ActMoverBaixoExecute(Sender: TObject);
    procedure ActOrdemCrescenteExecute(Sender: TObject);
    procedure ActOrdemDecrescenteExecute(Sender: TObject);
    procedure ActTipoOrdemExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
  private
    FListaCampos: TStringList;
    FListaTitulosCampos: TStringList;
    FDataOrderingCriteria: TDataOrderingCriteria;
  public
    property ListaCampos: TStringList read FListaCampos write FListaCampos;
    property DataOrderingCriteria: TDataOrderingCriteria read FDataOrderingCriteria write FDataOrderingCriteria;
  end;

var
  FrmOrdenacaoDados: TFrmOrdenacaoDados;

implementation

{$R *.dfm}

procedure TFrmOrdenacaoDados.Controle;
begin

  inherited;

  ActMoverCima.Enabled  := not TopoLista(GrdItensSelecionados);
  ActMoverBaixo.Enabled := not BaseLista(GrdItensSelecionados);

  ActTipoOrdem.Enabled := not LinhaVazia(GrdItensSelecionados);
  if GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] = 'Crescente' then
  begin
    ActTipoOrdem.Caption := 'Z..A';
    ActTipoOrdem.Hint := 'Ordem decrescente';
  end
  else
  begin
    ActTipoOrdem.Caption := 'A..Z';
    ActTipoOrdem.Hint := 'Ordem crescente';
  end;

  ActOrdemCrescente.Enabled   := ActTipoOrdem.Enabled;
  ActOrdemDecrescente.Enabled := ActTipoOrdem.Enabled;

end;

procedure TFrmOrdenacaoDados.InicializaGrades;

var
  iCampo, iCampoOrdem, iRow: Integer;
  bCampoOrdem: Boolean;

begin

  iRow := GrdItensDisponiveis.Row;

  GrdItensDisponiveis.ColWidths[0] := GrdItensDisponiveis.Width - 5;
  GrdItensDisponiveis.RowCount := 1;
  GrdItensDisponiveis.Cells[0, GrdItensDisponiveis.RowCount-1] := '';

  FListaTitulosCampos.Clear;

  for iCampo := 0 to FListaCampos.Count-1 do
  begin

    bCampoOrdem := False;

    for iCampoOrdem := 0 to DataOrderingCriteria.Count-1 do
    begin

      if FListaCampos.Names[iCampo] = DataOrderingCriteria.Items[iCampoOrdem].FieldName then
      begin

        bCampoOrdem := True;
        break;

      end;

    end;

    if not bCampoOrdem then
    begin

      if Trim(GrdItensDisponiveis.Cells[0, GrdItensDisponiveis.RowCount-1]) <> '' then
        GrdItensDisponiveis.RowCount := GrdItensDisponiveis.RowCount + 1;
      GrdItensDisponiveis.Cells[0, GrdItensDisponiveis.RowCount-1] := FListaCampos.Values[FListaCampos.Names[iCampo]];

    end;

    FListaTitulosCampos.Add(FListaCampos.Values[FListaCampos.Names[iCampo]] + '=' + FListaCampos.Names[iCampo]);

  end;

  GrdItensDisponiveis.Row := Min(iRow, GrdItensDisponiveis.RowCount-1);

  GrdItensSelecionados.ColWidths[1] := 85;
  GrdItensSelecionados.ColWidths[0] := GrdItensSelecionados.Width - GrdItensSelecionados.ColWidths[1] - 5;
  GrdItensSelecionados.RowCount := 1;
  GrdItensSelecionados.Cells[0, GrdItensSelecionados.RowCount-1] := '';

  for iCampo := 0 to DataOrderingCriteria.Count-1 do
  begin

    if Trim(GrdItensSelecionados.Cells[0, GrdItensSelecionados.RowCount-1]) <> '' then
      GrdItensSelecionados.RowCount := GrdItensSelecionados.RowCount + 1;
    GrdItensSelecionados.Cells[0, GrdItensSelecionados.RowCount-1] := FListaCampos.Values[DataOrderingCriteria.Items[iCampo].FieldName];

    if DataOrderingCriteria.Items[iCampo].Descending then
      GrdItensSelecionados.Cells[1, GrdItensSelecionados.RowCount-1] := 'Decrescente'
    else
      GrdItensSelecionados.Cells[1, GrdItensSelecionados.RowCount-1] := 'Crescente';

  end;

  Controle;

end;

procedure TFrmOrdenacaoDados.GeraCriterioOrdenacao;

var
  i: Integer;
  sTituloCampo, sNomeCampo, sTipoOrdem: String;
  bDecrescente: Boolean;

begin

  DataOrderingCriteria.Clear;

  for i := 0 to GrdItensSelecionados.RowCount-1 do
  begin

    sTituloCampo := GrdItensSelecionados.Cells[0, i];
    sNomeCampo   := FListaTitulosCampos.Values[sTituloCampo];

    if (Trim(sTituloCampo) <> '') then
    begin

      bDecrescente := (GrdItensSelecionados.Cells[1, i] = 'Decrescente');

      DataOrderingCriteria.AddItem(sNomeCampo, bDecrescente);

    end;

  end;

end;

procedure TFrmOrdenacaoDados.FormCreate(Sender: TObject);
begin

  FListaCampos      := TStringList.Create;
  FListaTitulosCampos := TStringList.Create;

  DataOrderingCriteria := TDataOrderingCriteria.Create;

  inherited;

  FListaCampos.Clear;
  FListaTitulosCampos.Clear;

end;

procedure TFrmOrdenacaoDados.FormShow(Sender: TObject);
begin

  inherited;

  InicializaGrades;

  Controle;

end;

procedure TFrmOrdenacaoDados.FormDestroy(Sender: TObject);
begin

  FListaCampos.Destroy;
  FListaTitulosCampos.Destroy;

  DataOrderingCriteria.Destroy;

  inherited;

end;

procedure TFrmOrdenacaoDados.GrdItensSelecionadosClick(Sender: TObject);
begin

  Controle;

end;

procedure TFrmOrdenacaoDados.GrdItensSelecionadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  Controle;

end;

procedure TFrmOrdenacaoDados.ActInserirExecute(Sender: TObject);
begin

  inherited;

  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := 'Crescente';

  Controle;

end;

procedure TFrmOrdenacaoDados.ActMoverCimaExecute(Sender: TObject);

var
  sCampo, sTipo: String;

begin

  inherited;

  // Salva linha corrente
  sCampo := GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row];
  sTipo  := GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row];

  // Move linha anterior para linha corrente
  GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row] := GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row-1];
  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row-1];

  // Restaura linha corrente na linha anterior
  GrdItensSelecionados.Row := GrdItensSelecionados.Row - 1;
  GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row] := sCampo;
  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := sTipo;

  Controle;

end;

procedure TFrmOrdenacaoDados.ActMoverBaixoExecute(Sender: TObject);

var
  sCampo, sTipo: String;

begin

  inherited;

  // Salva linha corrente
  sCampo := GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row];
  sTipo  := GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row];

  // Move linha posterior para linha corrente
  GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row] := GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row+1];
  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row+1];

  // Restaura linha corrente na linha posterior
  GrdItensSelecionados.Row := GrdItensSelecionados.Row + 1;
  GrdItensSelecionados.Cells[0, GrdItensSelecionados.Row] := sCampo;
  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := sTipo;

  Controle;

end;

procedure TFrmOrdenacaoDados.ActOrdemCrescenteExecute(Sender: TObject);
begin

  inherited;

  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := 'Crescente';

  Controle;

end;

procedure TFrmOrdenacaoDados.ActOrdemDecrescenteExecute(Sender: TObject);
begin

  inherited;

  GrdItensSelecionados.Cells[1, GrdItensSelecionados.Row] := 'Decrescente';

  Controle;

end;

procedure TFrmOrdenacaoDados.ActTipoOrdemExecute(Sender: TObject);
begin

  inherited;

  if ActTipoOrdem.Caption = 'Z..A' then
    ActOrdemDecrescente.Execute
  else
    ActOrdemCrescente.Execute;

  Controle;

end;

procedure TFrmOrdenacaoDados.ActConfirmarExecute(Sender: TObject);
begin

  GeraCriterioOrdenacao;
  
  inherited;

end;

end.
