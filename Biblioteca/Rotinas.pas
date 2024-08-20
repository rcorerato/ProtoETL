unit Rotinas;

interface

uses Classes, Controls, ComCtrls, QForms, SysUtils, DB, Variants,
  CaixaAdvertencia, CaixaErro, CaixaInformacao;

  procedure CaixaAdvertencia(Efeito, Causa, Acao: String);
  procedure CaixaErro(Mensagem, Classe: String);
  procedure CaixaInformacao(Informacao: String);
  procedure CaixaConclusao(dInicio, dTermino: TDateTime);
  procedure HabilitaControles(WinControl: TWinControl; bHabilitar: Boolean);
  procedure FocalizaControle(WinControl: TWinControl; iPosicao: Integer);
  procedure FocalizaPrimeiro(WinControl: TWinControl);
  function SubStrCount(sSubStr, sString: String): Integer;
  function CSVSubStrCount(sString: String): Integer;
  function CSVSubStr(sString: String; iPos: Integer): String;
  function ChecaNaoNulo(Expressao: Variant; Descricao: String): Boolean;
  function ChecaFaixa(Expressao: Variant; Descricao: String; Min: Variant; PodeIgualMin: Boolean; Max: Variant; PodeIgualMax: Boolean): Boolean;
  function ChecaFaixaMin(Expressao: Variant; Descricao: String; Min: Variant; PodeIgualMin: Boolean): Boolean;
  function ChecaFaixaMax(Expressao: Variant; Descricao: String; Max: Variant; PodeIgualMax: Boolean): Boolean;
  function CampoNaoNulo(Campo: TField): Boolean;
  function CampoFaixa(Campo: TField; Min: Variant; PodeIgualMin: Boolean; Max: Variant; PodeIgualMax: Boolean): Boolean;
  function CampoFaixaMin(Campo: TField; Min: Variant; PodeIgualMin: Boolean): Boolean;
  function CampoFaixaMax(Campo: TField; Max: Variant; PodeIgualMax: Boolean): Boolean;
  function ZerosEsquerda(Valor: Variant; iTamanho: Integer): String;
  function CampoZerosEsquerda(Campo: TField): String;

implementation

// Caixa de advertências
procedure CaixaAdvertencia(Efeito, Causa, Acao: String);

var
  ModalForm: TFrmCaixaAdvertencia;

begin

  // Cria formulário
  ModalForm := TFrmCaixaAdvertencia.Create(Application);

  try

    ModalForm.EdtEfeito.Text      := Efeito;
    ModalForm.MemCausa.Lines.Text := Causa;
    ModalForm.MemAcao.Lines.Text  := Acao;

    // Exibe formulário
    ModalForm.ShowModal;

  finally

    // Destrói formulário
    ModalForm.Release;

  end;

end;

// Caixa de erros
procedure CaixaErro(Mensagem, Classe: String);

var
  ModalForm: TFrmCaixaErro;

begin

  // Cria formulário
  ModalForm := TFrmCaixaErro.Create(Application);

  try

    ModalForm.MemMensagem.Lines.Text := Mensagem;
    ModalForm.EdtClasse.Text         := Classe;

    // Exibe formulário
    ModalForm.ShowModal;

  finally

    // Destrói formulário
    ModalForm.Release;

  end;

end;

// Caixa de informações
procedure CaixaInformacao(Informacao: String);

var
  ModalForm: TFrmCaixaInformacao;
  
begin

  // Cria formulário
  ModalForm := TFrmCaixaInformacao.Create(Application);

  try

    ModalForm.MemInformacao.Lines.Text := Informacao;

    // Exibe formulário
    ModalForm.ShowModal;

  finally

    // Destrói formulário
    ModalForm.Release;

  end;

end;

procedure CaixaConclusao(dInicio, dTermino: TDateTime);

var
  sInformacao: String;

begin

  sInformacao := 'Processamento concluído!' + Chr(13) + Chr(10) +
                 'Início....: ' + DateTimeToStr(dInicio) + Chr(13) + Chr(10) +
                 'Término...: ' + DateTimeToStr(dTermino);

  CaixaInformacao(sInformacao);

end;

procedure HabilitaControles(WinControl: TWinControl; bHabilitar: Boolean);

var
  iControle: Integer;
  Control: TControl;

begin

  for iControle := 0 to WinControl.ControlCount-1 do
  begin

    Control := WinControl.Controls[iControle];

    // Caso não haja nenhuma acão associada ao controle...
    if (Control.Action = nil) and ((not (Control is TPageControl)) and (not (Control is TTabSheet))) then

      // Habilita/desabilita controle
      Control.Enabled := bHabilitar;

    // Caso o controle possua outros controles vinculados...
    if Control is TWinControl then

      // Habilita/desabilita controles vinculados
      HabilitaControles(TWinControl(Control), bHabilitar);

  end;

end;

// Focaliza controle
procedure FocalizaControle(WinControl: TWinControl; iPosicao: Integer);

var
  List: TList;
  iControle, iPodeFocalizar: Integer;

begin

  List := TList.Create;

  try

    iPodeFocalizar := 0;

    // Obtém lista ordenada de componentes
    WinControl.GetTabOrderList(List);

    for iControle := 0 to List.Count-1 do
    begin

      // Caso controle possa receber foco...
      if TWinControl(List[iControle]).CanFocus and TWinControl(List[iControle]).TabStop then
      begin

        // Conta controles aptos a receber foco
        Inc(iPodeFocalizar);

        if iPodeFocalizar = iPosicao then
        begin

          // Focaliza controle
          TWinControl(List[iControle]).SetFocus;

          if TWinControl(List[iControle]).ControlCount > 0 then

            FocalizaControle(TWinControl(List[iControle]), 1);

          Break;

        end;

      end;
      
    end;

  finally

    List.Free;

  end;

end;

// Focaliza primeiro componente em determinado controle
procedure FocalizaPrimeiro(WinControl: TWinControl);
begin

  FocalizaControle(WinControl, 1);

end;

function SubStrCount(sSubStr, sString: String): Integer;

var
  i, iSubStrLen: Integer;

begin

  Result := 0;

  iSubStrLen := Length(sSubStr);

  i := 1;

  while i < Length(sString) do
  begin

    if Copy(sString, i, iSubStrLen) = sSubStr then
      Inc(Result);

    Inc(i);

  end;

end;

function CSVSubStrCount(sString: String): Integer;

var
  i: Integer;

begin

  i := SubStrCount(';', sString);

  if (i = 0) and (sString <> '') then
    i := 1;

  Result := i;

end;

function CSVSubStr(sString: String; iPos: Integer): String;

var
  i, iLen: Integer;
  sAux: String;

begin

  Result := '';

  sAux := sString;

  i := 1;

  repeat

    iLen := Pos(';', sAux);

    if iLen = 0 then
      iLen := Length(sAux)+1;

    if i = iPos then
      Result := Copy(sAux, 1, iLen-1);

    sAux := Copy(sAux, iLen+1, Length(sAux));

    Inc(i);

  until (sAux = '') or (Result <> '');

end;

function ChecaNaoNulo(Expressao: Variant; Descricao: String): Boolean;

var
  sMensagem: String;

begin

  sMensagem := '';

  case VarType(Expressao) of

    varEmpty: sMensagem := Descricao+' é campo obrigatório!';

    varNull: sMensagem := Descricao+' é campo obrigatório!';

    varString: if Trim(Expressao) = '' then sMensagem := Descricao+' é campo obrigatório!';

    varInteger: if Expressao = 0 then sMensagem := Descricao+' é campo obrigatório!';

    varSingle: if Expressao = 0 then sMensagem := Descricao+' é campo obrigatório!';

    varDouble: if Expressao = 0 then sMensagem := Descricao+' é campo obrigatório!';

    varCurrency: if Expressao = 0 then sMensagem := Descricao+' é campo obrigatório!';

  end;

  Result := (sMensagem = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Campo não informado!', sMensagem, 'Preencha o campo.');

end;

function ChecaFaixa(Expressao: Variant; Descricao: String; Min: Variant; PodeIgualMin: Boolean; Max: Variant; PodeIgualMax: Boolean): Boolean;

var
  sOcorrencia, sAcao: String;

begin

  sOcorrencia := '';

  if (Expressao < Min) then
  begin

    sOcorrencia := Descricao+' menor que '+VarToStr(Min)+'!';

  end
  else
  begin

    if (Expressao > Max) then
    begin

      sOcorrencia := Descricao+' maior que '+VarToStr(Max)+'!';

    end
    else
    begin

      if (Expressao = Min) and (not PodeIgualMin) then
      begin

        sOcorrencia := Descricao+' igual a '+VarToStr(Min)+'!';

      end
      else
      begin

        if (Expressao = Max) and (not PodeIgualMax) then
        begin

          sOcorrencia := Descricao+' igual a '+VarToStr(Max)+'!';

        end;

      end;

    end;

  end;

  if PodeIgualMin then
  begin

    if PodeIgualMax then
      sAcao := 'Informe valor maior ou igual a '+VarToStr(Min)+' e menor ou igual a '+VarToStr(Max)+'.'
    else
      sAcao := 'Informe valor maior ou igual a '+VarToStr(Min)+' e menor que '+VarToStr(Max)+'.';

  end
  else
  begin

    if PodeIgualMax then
      sAcao := 'Informe valor maior que '+VarToStr(Min)+' e menor ou igual a '+VarToStr(Max)+'.'
    else
      sAcao := 'Informe valor maior que '+VarToStr(Min)+' e menor que '+VarToStr(Max)+'.';

  end;

  Result := (sOcorrencia = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Valor inválido!', sOcorrencia, sAcao);

end;

function ChecaFaixaMin(Expressao: Variant; Descricao: String; Min: Variant; PodeIgualMin: Boolean): Boolean;

var
  sOcorrencia, sAcao: String;

begin

  sOcorrencia := '';

  if (Expressao < Min) then
  begin

    sOcorrencia := Descricao+' menor que '+VarToStr(Min)+'!';

    if PodeIgualMin then
      sAcao := 'Informe valor maior ou igual a '+VarToStr(Min)+'.'
    else
      sAcao := 'Informe valor maior que '+VarToStr(Min)+'.';

  end
  else
  begin

    if (Expressao = Min) and (not PodeIgualMin) then
    begin

      sOcorrencia := Descricao+' igual a '+VarToStr(Min)+'!';
      sAcao := 'Informe valor maior que '+VarToStr(Min)+'.';

    end;

  end;

  Result := (sOcorrencia = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Valor inválido!', sOcorrencia, sAcao);

end;

function ChecaFaixaMax(Expressao: Variant; Descricao: String; Max: Variant; PodeIgualMax: Boolean): Boolean;

var
  sOcorrencia, sAcao: String;

begin

  sOcorrencia := '';

  if (Expressao > Max) then
  begin

    sOcorrencia := Descricao+' maior que '+VarToStr(Max)+'!';

    if PodeIgualMax then
      sAcao := 'Informe valor menor ou igual a '+VarToStr(Max)+'.'
    else
      sAcao := 'Informe valor menor que '+VarToStr(Max)+'.';

  end
  else
  begin

    if (Expressao = Max) and (not PodeIgualMax) then
    begin

      sOcorrencia := Descricao+' igual a '+VarToStr(Max)+'!';
      sAcao := 'Informe valor menor que '+VarToStr(Max)+'.';

    end;

  end;

  Result := (sOcorrencia = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Valor inválido!', sOcorrencia, sAcao);

end;

function CampoNaoNulo(Campo: TField): Boolean;
begin

  if Campo.IsNull then
    Result := False
  else if (Campo.DataType in [ftInteger, ftFloat]) then
    Result := (Campo.AsFloat <> 0)
  else
    Result := (Trim(Campo.AsString) <> '');

  if not Result then
  begin

    // Exibe mensagem de erro
    CaixaAdvertencia('Campo obrigatório não informado!', Campo.DisplayLabel+' é campo obrigatório.', 'Preencha o campo.');

    Campo.FocusControl;

  end;

end;

function CampoFaixa(Campo: TField; Min: Variant; PodeIgualMin: Boolean; Max: Variant; PodeIgualMax: Boolean): Boolean;

var
  sOcorrencia, sAcao: String;

begin

  sOcorrencia := '';

  if (Campo.Value < Min) then
  begin

    sOcorrencia := Campo.DisplayLabel+' menor que '+VarToStr(Min)+'!';

  end
  else
  begin

    if (Campo.Value > Max) then
    begin

      sOcorrencia := Campo.DisplayLabel+' maior que '+VarToStr(Max)+'!';

    end
    else
    begin

      if (Campo.Value = Min) and (not PodeIgualMin) then
      begin

        sOcorrencia := Campo.DisplayLabel+' igual a '+VarToStr(Min)+'!';

      end
      else
      begin

        if (Campo.Value = Max) and (not PodeIgualMax) then
        begin

          sOcorrencia := Campo.DisplayLabel+' igual a '+VarToStr(Max)+'!';

        end;

      end;

    end;

  end;

  if PodeIgualMin then
  begin

    if PodeIgualMax then
      sAcao := 'Informe valor maior ou igual a '+VarToStr(Min)+' e menor ou igual a '+VarToStr(Max)+'.'
    else
      sAcao := 'Informe valor maior ou igual a '+VarToStr(Min)+' e menor que '+VarToStr(Max)+'.';

  end
  else
  begin

    if PodeIgualMax then
      sAcao := 'Informe valor maior que '+VarToStr(Min)+' e menor ou igual a '+VarToStr(Max)+'.'
    else
      sAcao := 'Informe valor maior que '+VarToStr(Min)+' e menor que '+VarToStr(Max)+'.';

  end;

  Result := (sOcorrencia = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Valor fora da faixa!', sOcorrencia, sAcao);

end;

function CampoFaixaMin(Campo: TField; Min: Variant; PodeIgualMin: Boolean): Boolean;

var
  sOcorrencia, sAcao: String;

begin

  sOcorrencia := '';

  if (Campo.Value < Min) then
  begin

    sOcorrencia := Campo.DisplayLabel+' menor que '+VarToStr(Min)+'!';

    if PodeIgualMin then
      sAcao := 'Informe valor maior ou igual a '+VarToStr(Min)+'.'
    else
      sAcao := 'Informe valor maior que '+VarToStr(Min)+'.';

  end
  else
  begin

    if (Campo.Value = Min) and (not PodeIgualMin) then
    begin

      sOcorrencia := Campo.DisplayLabel+' igual a '+VarToStr(Min)+'!';
      sAcao := 'Informe valor maior que '+VarToStr(Min)+'.';

    end;

  end;

  Result := (sOcorrencia = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Valor abaixo da faixa mínima!', sOcorrencia, sAcao);

end;

function CampoFaixaMax(Campo: TField; Max: Variant; PodeIgualMax: Boolean): Boolean;

var
  sOcorrencia, sAcao: String;

begin

  sOcorrencia := '';

  if (Campo.Value > Max) then
  begin

    sOcorrencia := Campo.DisplayLabel+' maior que '+VarToStr(Max)+'!';

    if PodeIgualMax then
      sAcao := 'Informe valor menor ou igual a '+VarToStr(Max)+'.'
    else
      sAcao := 'Informe valor menor que '+VarToStr(Max)+'.';

  end
  else
  begin

    if (Campo.Value = Max) and (not PodeIgualMax) then
    begin

      sOcorrencia := Campo.DisplayLabel+' igual a '+VarToStr(Max)+'!';
      sAcao := 'Informe valor menor que '+VarToStr(Max)+'.';

    end;

  end;

  Result := (sOcorrencia = '');

  if not Result then

    // Exibe mensagem de erro
    CaixaAdvertencia('Valor acima da faixa máxima!', sOcorrencia, sAcao);

end;

function ZerosEsquerda(Valor: Variant; iTamanho: Integer): String;
begin

  Result := VarToStr(Valor);
  Result := StringOfChar('0', iTamanho - Length(Result)) + Result;

end;

function CampoZerosEsquerda(Campo: TField): String;
begin

  try

    Result := ZerosEsquerda(Campo.AsInteger, Campo.Size);

  except

    Result := Campo.AsString;

  end;

  if Campo.DataSet.State in [dsEdit, dsInsert] then
    if Result <> Campo.AsString then
      Campo.AsString := Result;

end;

end.
