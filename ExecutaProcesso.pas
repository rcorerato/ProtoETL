unit ExecutaProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseTarefa, ImgList, ActnList, ExtCtrls, FMTBcd, DB, SqlExpr,
  DBXpress, Rotinas;

type
  TFrmExecutaProcesso = class(TFormBaseTarefa)
    SQLConnection: TSQLConnection;
    PrcExecutaProcesso: TSQLStoredProc;
    procedure Executa(iIdProcesso: Integer);
    procedure FormCreate(Sender: TObject);
  private
    FIDProcesso: Integer;
    procedure SetIDProcesso(const Value: Integer);
  public
    property IDProcesso: Integer read FIDProcesso write SetIDProcesso;
  end;

var
  FrmExecutaProcesso: TFrmExecutaProcesso;

implementation

uses ModuloDados;

{$R *.dfm}

procedure TFrmExecutaProcesso.SetIDProcesso(const Value: Integer);
begin

  FIDProcesso := Value;

  Mensagem := '';

  if FIDProcesso <> 0 then
  begin

    Mensagem := VarToStr(DM.LookupQuery(FIDProcesso, 'ID_PROCESSO', 'PROCESSO', 'NOME'));

  end;

end;

procedure TFrmExecutaProcesso.Executa(iIDProcesso: Integer);

var
  vIDProcesso: Variant;

begin

  Show;

  try

    IDProcesso := iIDProcesso;

    vIDProcesso := IDProcesso;

    PrcExecutaProcesso.ParamByName('P_ID_PROCESSO').Value := vIDProcesso;
    PrcExecutaProcesso.ExecProc;

  finally

    Close;

  end;

end;

procedure TFrmExecutaProcesso.FormCreate(Sender: TObject);
begin

  inherited;

  FIDProcesso := 0;

end;

end.
