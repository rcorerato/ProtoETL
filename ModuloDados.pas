unit ModuloDados;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Variants, IniFiles, Forms,
  Rotinas;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    QrySequence: TSQLQuery;
    QryLookup: TSQLQuery;
    SQLMonitor: TSQLMonitor;
    function NextSequenceValue(sSequenceName: String): Integer;
    function LookupQuery(LookupKeyValues: Variant; sLookupKeyFields: String; sLookupTable: String; sLookupResultFields: String): Variant;
    procedure DataSetLookupQuery(DataSet: TDataSet; sFields: String; LookupKeyValues: Variant; sLookupKeyFields: String; sLookupTable: String; sLookupResultFields: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SQLConnectionBeforeConnect(Sender: TObject);
    procedure SQLConnectionAfterConnect(Sender: TObject);
  private
    FIniFile: TIniFile;
  public
    property IniFile: TIniFile read FIniFile write FIniFile;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

function TDM.NextSequenceValue(sSequenceName: String): Integer;
begin

  QrySequence.SQL.Text := 'SELECT ' + sSequenceName + '.NEXTVAL NEXT_VALUE FROM DUAL';
  QrySequence.Open;

  try

    Result := QrySequence.FieldByName('NEXT_VALUE').AsInteger;

  finally

    QrySequence.Close;

  end;

end;

function TDM.LookupQuery(LookupKeyValues: Variant; sLookupKeyFields: String; sLookupTable: String; sLookupResultFields: String): Variant;

var
  i: Integer;
  sAux: String;

begin

  QryLookup.SQL.Clear;
  QryLookup.SQL.Add('SELECT');
  QryLookup.SQL.Add('  ' + StringReplace(sLookupResultFields, ';', ',', [rfReplaceAll]));
  QryLookup.SQL.Add('FROM');
  QryLookup.SQL.Add('  ' + sLookupTable);
  QryLookup.SQL.Add('WHERE');

  if VarIsArray(LookupKeyValues) then
  begin

    for i := 1 to CSVSubStrCount(sLookupKeyFields) do
    begin

      sAux := VarToStr(LookupKeyValues[i-1]);
      if VarType(LookupKeyValues[i-1]) = varString then
        sAux := '''' + sAux + '''';
      sAux := '  ' + CSVSubStr(sLookupKeyFields, i) + ' = ' + sAux;

      if i < CSVSubStrCount(sLookupKeyFields) then
        sAux := sAux + ' AND';

      QryLookup.SQL.Add(sAux);

    end;

  end
  else
  begin

    sAux := VarToStr(LookupKeyValues);
    if VarType(LookupKeyValues) = varString then
      sAux := '''' + sAux + '''';
    sAux := '  ' + sLookupKeyFields + ' = ' + sAux;

    QryLookup.SQL.Add(sAux);

  end;

  QryLookup.Open;

  try

    if QryLookup.FieldCount > 1 then
    begin

      Result := VarArrayCreate([0, QryLookup.FieldCount-1], varVariant);

      for i := 0 to QryLookup.FieldCount-1 do
        Result[i] := QryLookup.Fields[i].Value;

    end
    else
    begin

      Result := QryLookup.Fields[0].Value;

    end;

  finally

    QryLookup.Close;

  end;

end;

procedure TDM.DataSetLookupQuery(DataSet: TDataSet; sFields: String; LookupKeyValues: Variant; sLookupKeyFields: String; sLookupTable: String; sLookupResultFields: String);

var
  LookupResultFields: Variant;
  i: Integer;
  sFieldName: String;

begin

  LookupResultFields := DM.LookupQuery(LookupKeyValues, sLookupKeyFields, sLookupTable, sLookupResultFields);

  if VarIsArray(LookupResultFields) then
  begin

    for i := 0 to VarArrayHighBound(LookupResultFields, 1) do
    begin

      sFieldName := CSVSubStr(sFields, i+1);

      DataSet.FieldByName(sFieldName).Value := LookupResultFields[i];

    end;

  end
  else
  begin

    DataSet.FieldByName(sFields).Value := LookupResultFields;

  end;

end;

procedure TDM.DataModuleCreate(Sender: TObject);

var
  sFileName: String;

begin

  sFileName := ChangeFileExt(Application.ExeName, '.ini');

  IniFile := TIniFile.Create(sFileName);

  IniFile.WriteString('SGBD', 'DataBase',  IniFile.ReadString('SGBD', 'DataBase',  'RODRIGO'));
  IniFile.WriteString('SGBD', 'User_Name', IniFile.ReadString('SGBD', 'User_Name', 'ETL'));
  IniFile.WriteString('SGBD', 'Password',  IniFile.ReadString('SGBD', 'Password',  'ETL'));

end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin

  IniFile.Free;

end;

procedure TDM.SQLConnectionBeforeConnect(Sender: TObject);
begin

  SQLConnection.Params.Values['DataBase']  := IniFile.ReadString('SGBD', 'DataBase',  '');
  SQLConnection.Params.Values['User_Name'] := IniFile.ReadString('SGBD', 'User_Name', '');
  SQLConnection.Params.Values['Password']  := IniFile.ReadString('SGBD', 'Password',  '');

end;

procedure TDM.SQLConnectionAfterConnect(Sender: TObject);
begin

  SQLConnection.Execute('alter session set NLS_NUMERIC_CHARACTERS=''.,''', NIL, NIL);

end;

end.
