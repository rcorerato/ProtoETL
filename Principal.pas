unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePrincipal, Menus, ComCtrls, ToolWin, ExtCtrls, ActnList,
  ImgList, AppEvnts, StdCtrls, Rotinas, Provider, SqlExpr, Grids, DBGrids,
  DB, DBClient, DBLocal, SQLSelect;

type
  TFrmPrincipal = class(TFormBasePrincipal)
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    ServidordeProcessos1: TMenuItem;
    Processos1: TMenuItem;
    abelas1: TMenuItem;
    ProcessoETL1: TMenuItem;
    Ferramentas1: TMenuItem;
    N1: TMenuItem;
    Junes1: TMenuItem;
    Colunas1: TMenuItem;
    N2: TMenuItem;
    Filtros1: TMenuItem;
    ransformaes1: TMenuItem;
    Mapeamentos1: TMenuItem;
    Processamentos1: TMenuItem;
    LimpezadeProcessamentos1: TMenuItem;
    procedure abelas1Click(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure Junes1Click(Sender: TObject);
    procedure Mapeamentos1Click(Sender: TObject);
    procedure Filtros1Click(Sender: TObject);
    procedure ransformaes1Click(Sender: TObject);
    procedure Processos1Click(Sender: TObject);
    procedure ServidordeProcessos1Click(Sender: TObject);
    procedure Processamentos1Click(Sender: TObject);
    procedure LimpezadeProcessamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses Tabela, Coluna, Juncao, Processo, ServidorExecucaoProcessos,
  Mapeamento, Filtro, Transformacao, Processamento, LimpezaProcessamentos;

{$R *.dfm}

procedure TFrmPrincipal.abelas1Click(Sender: TObject);
begin

  inherited;

  FrmTabela := TFrmTabela.Create(Application);
  FrmTabela.Show;

end;

procedure TFrmPrincipal.Colunas1Click(Sender: TObject);
begin

  inherited;

  FrmColuna := TFrmColuna.Create(Application);
  FrmColuna.Show;

end;

procedure TFrmPrincipal.Junes1Click(Sender: TObject);
begin

  inherited;

  FrmJuncao := TFrmJuncao.Create(Application);
  FrmJuncao.Show;

end;

procedure TFrmPrincipal.Mapeamentos1Click(Sender: TObject);
begin

  inherited;

  FrmMapeamento := TFrmMapeamento.Create(Application);
  FrmMapeamento.Show;

end;

procedure TFrmPrincipal.Filtros1Click(Sender: TObject);
begin

  inherited;

  FrmFiltro := TFrmFiltro.Create(Application);
  FrmFiltro.Show;

end;

procedure TFrmPrincipal.ransformaes1Click(Sender: TObject);
begin

  inherited;

  FrmTransformacao := TFrmTransformacao.Create(Application);
  FrmTransformacao.Show;

end;

procedure TFrmPrincipal.Processos1Click(Sender: TObject);
begin

  inherited;

  FrmProcesso := TFrmProcesso.Create(Application);
  FrmProcesso.Show;

end;

procedure TFrmPrincipal.Processamentos1Click(Sender: TObject);
begin

  inherited;

  FrmProcessamento := TFrmProcessamento.Create(Application);
  FrmProcessamento.Show;

end;

procedure TFrmPrincipal.ServidordeProcessos1Click(Sender: TObject);
begin

  inherited;

  FrmServidorExecucaoProcessos := TFrmServidorExecucaoProcessos.Create(Application);
  FrmServidorExecucaoProcessos.Show;

end;

procedure TFrmPrincipal.LimpezadeProcessamentos1Click(Sender: TObject);
begin

  inherited;

  FrmLimpezaProcessamentos := TFrmLimpezaProcessamentos.Create(Application);
  FrmLimpezaProcessamentos.Show;

end;

end.
