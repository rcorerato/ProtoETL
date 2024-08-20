unit SQLSelect;

interface

uses
  Windows, Messages, SysUtils, Classes;

type

  TLogicalOperator = (loNone, loAnd, loOr, loNot);

  TComparasionOperator = (coNone, coDifferentThan, coEqualTo, coGreaterThan, coLessThan, coGreaterThanOrEqualTo, coLessThanOrEqualTo, coIsNull, coIsNotNull, coLike, coNotLike, coIn, coNotIn);

  TSQLSelect = class;
  TWhereClause = class;

  { TSelectClauseItem }

  TSelectClauseItem = class(TPersistent)
  private
    FColumnName: String;
    FExpression: String;
    FSubSelect: TSQLSelect;
  protected
    { Protected declarations }
  public
    constructor Create;
  published
    property ColumnName: String read FColumnName write FColumnName;
    property Expression: String read FExpression write FExpression;
    property SubSelect: TSQLSelect read FSubSelect write FSubSelect;
  end;

  { TFromClauseItem }

  TFromClauseItem = class(TPersistent)
  private
    FTableName: String;
    FAlias: String;
    FSubSelect: TSQLSelect;
  protected
    { Protected declarations }
  public
    constructor Create;
  published
    property TableName: String read FTableName write FTableName;
    property Alias: String read FAlias write FAlias;
    property SubSelect: TSQLSelect read FSubSelect write FSubSelect;
  end;

  { TWhereClauseItem }

  TWhereClauseItem = class(TPersistent)
  private
    FExpression1: String;
    FComparasionOperator: TComparasionOperator;
    FExpression2: String;
    FLogicalOperator: TLogicalOperator;
    FSubWhere: TWhereClause;
  protected
    { Protected declarations }
  public
    constructor Create;
  published
    property Expression1: String read FExpression1 write FExpression1;
    property ComparasionOperator: TComparasionOperator read FComparasionOperator write FComparasionOperator;
    property Expression2: String read FExpression2 write FExpression2;
    property LogicalOperator: TLogicalOperator read FLogicalOperator write FLogicalOperator;
    property SubWhere: TWhereClause read FSubWhere write FSubWhere;
  end;

  { TGroupByClauseItem }

  TGroupByClauseItem = class(TPersistent)
  private
    FExpression: String;
  protected
    { Protected declarations }
  public
    constructor Create;
  published
    property Expression: String read FExpression write FExpression;
  end;

  { TOrderByClauseItem }

  TOrderByClauseItem = class(TPersistent)
  private
    FColumnName: String;
    FDescending: Boolean;
    FNullsFirst: Boolean;
  protected
    { Protected declarations }
  public
    constructor Create;
  published
    property ColumnName: String read FColumnName write FColumnName;
    property Descending: Boolean read FDescending write FDescending;
    property NullsFirst: Boolean read FNullsFirst write FNullsFirst;
  end;

  { TSelectClause }

  TSelectClause = class(TStringList)
  private
    function GetItem(Index: Integer): TSelectClauseItem;
    procedure SetItem(Index: Integer; const Value: TSelectClauseItem);
  protected
    { Protected declarations }
  public
    property Items[Index: Integer]: TSelectClauseItem read GetItem write SetItem;
    function AddItem(sExpression, sColumnName: String): Integer;
    function AddSubSelect(SubSelect: TSQLSelect; sColumnName: String): Integer;
    function GetSQL: TStringList;
    procedure SetSQL(SQL: TStringList);
  published
    { Published declarations }
  end;

  { TFromClause }

  TFromClause = class(TStringList)
  private
    function GetItem(Index: Integer): TFromClauseItem;
    procedure SetItem(Index: Integer; const Value: TFromClauseItem);
  protected
    { Protected declarations }
  public
    property Items[Index: Integer]: TFromClauseItem read GetItem write SetItem;
    function AddItem(sTableName, sAlias: String): Integer;
    function AddSubSelect(SubSelect: TSQLSelect; sAlias: String): Integer;
    function GetSQL: TStringList;
    procedure SetSQL(SQL: TStringList);
  published
    { Published declarations }
  end;

  { TWhereClause }

  TWhereClause = class(TStringList)
  private
    function GetItem(Index: Integer): TWhereClauseItem;
    procedure SetItem(Index: Integer; const Value: TWhereClauseItem);
  protected
    { Protected declarations }
  public
    property Items[Index: Integer]: TWhereClauseItem read GetItem write SetItem;
    function AddItem(sExpression1: String; ComparasionOperator: TComparasionOperator; sExpression2: String; LogicalOperator: TLogicalOperator = loAnd): Integer;
    function AddSubWhere(SubWhere: TWhereClause): Integer;
    function GetSQL: TStringList;
    procedure SetSQL(SQL: TStringList);
  published
    { Published declarations }
  end;

  { TGroupByClause }

  TGroupByClause = class(TStringList)
  private
    function GetItem(Index: Integer): TGroupByClauseItem;
    procedure SetItem(Index: Integer; const Value: TGroupByClauseItem);
  protected
    { Protected declarations }
  public
    property Items[Index: Integer]: TGroupByClauseItem read GetItem write SetItem;
    function AddItem(sExpression: String): Integer;
    function GetSQL: TStringList;
    procedure SetSQL(SQL: TStringList);
  published
    { Published declarations }
  end;

  { TOrderByClause }

  TOrderByClause = class(TStringList)
  private
    function GetItem(Index: Integer): TOrderByClauseItem;
    procedure SetItem(Index: Integer; const Value: TOrderByClauseItem);
  protected
    { Protected declarations }
  public
    property Items[Index: Integer]: TOrderByClauseItem read GetItem write SetItem;
    function AddItem(sColumnName: String; bDescending: Boolean = False; bNullsFirst: Boolean = False): Integer;
    function GetSQL: TStringList;
    procedure SetSQL(SQL: TStringList);
  published
    { Published declarations }
  end;

  { TSQLSelect }

  TSQLSelect = class(TPersistent)
  private
    FSelectClause: TSelectClause;
    FFromClause: TFromClause;
    FWhereClause: TWhereClause;
    FGroupByClause: TGroupByClause;
    FOrderByClause: TOrderByClause;
  protected
    { Protected declarations }
  public
    constructor Create;
    destructor Destroy; override;
    procedure Assign(Source: TSQLSelect);
    function GetSQL: TStringList;
    procedure SetSQL(SQL: TStringList);
  published
    property SelectClause: TSelectClause read FSelectClause;
    property FromClause: TFromClause read FFromClause;
    property WhereClause: TWhereClause read FWhereClause;
    property GroupByClause: TGroupByClause read FGroupByClause;
    property OrderByClause: TOrderByClause read FOrderByClause;
  end;

  function ComparasionOperatorToStr(ComparasionOperator: TComparasionOperator): String;
  function StrToComparasionOperator(sComparasionOperator: String): TComparasionOperator;
  function LogicalOperatorToStr(LogicalOperator: TLogicalOperator): String;
  function StrToLogicalOperator(sLogicalOperator: String): TLogicalOperator;

const
  LogicalOperators: Array[1..3] of TLogicalOperator = (loAnd, loOr, loNot);
  ComparasionOperators: Array[1..12] of TComparasionOperator = (coEqualTo, coDifferentThan, coGreaterThan, coLessThan, coGreaterThanOrEqualTo, coLessThanOrEqualTo, coIsNull, coIsNotNull, coLike, coNotLike, coIn, coNotIn);
  ssBeginSubSelectChar: Char = '(';
  ssEndSubSelectChar: Char = ')';
  ssClauseItemSeparatorChar: Char = ',';

implementation

{ TSelectClauseItem }

constructor TSelectClauseItem.Create;
begin

  inherited;

  FColumnName := '';
  FExpression := '';
  FSubSelect  := nil;

end;

{ TFromClauseItem }

constructor TFromClauseItem.Create;
begin

  inherited;

  FTableName := '';
  FAlias     := '';
  FSubSelect := nil;

end;

{ TWhereClauseItem }

constructor TWhereClauseItem.Create;
begin

  inherited;

  FExpression1         := '';
  FComparasionOperator := coEqualTo;
  FExpression2         := '';
  FLogicalOperator     := loAnd;
  FSubWhere            := nil;

end;

{ TGroupByClauseItem }

constructor TGroupByClauseItem.Create;
begin

  inherited;

  FExpression := '';

end;

{ TOrderByClauseItem }

constructor TOrderByClauseItem.Create;
begin

  inherited;

  FColumnName := '';
  FDescending := False;
  FNullsFirst := False;

end;

{ TSelectClause }

function TSelectClause.GetItem(Index: Integer): TSelectClauseItem;
begin

  Result := TSelectClauseItem(Objects[Index]);

end;

procedure TSelectClause.SetItem(Index: Integer; const Value: TSelectClauseItem);
begin

  Objects[Index] := Value;

end;

function TSelectClause.AddItem(sExpression, sColumnName: String): Integer;
begin

  Result := Add(Trim(sExpression + ' ' + sColumnName));

  Items[Result] := TSelectClauseItem.Create;
  Items[Result].ColumnName := sColumnName;
  Items[Result].Expression := sExpression;

end;

function TSelectClause.AddSubSelect(SubSelect: TSQLSelect; sColumnName: String): Integer;
begin

  Result := Add('[Sub-select] ' + Trim(sColumnName));

  Items[Result] := TSelectClauseItem.Create;
  Items[Result].ColumnName := sColumnName;

  Items[Result].SubSelect := TSQLSelect.Create;
  Items[Result].SubSelect.Assign(SubSelect);

end;

function TSelectClause.GetSQL: TStringList;

var
  i, j: Integer;
  ASubSelect: TSQLSelect;
  StrSubSelect: TStringList;

begin

  Result := TStringList.Create;
  Result.Clear;

  for i := 0 to Count-1 do
  begin

    ASubSelect := Items[i].SubSelect;

    if Assigned(ASubSelect) then
    begin

      StrSubSelect := TStringList.Create;

      try

        StrSubSelect.Clear;
        StrSubSelect.AddStrings(ASubSelect.GetSQL);

        Result.Add(ssBeginSubSelectChar);
        for j := 0 to StrSubSelect.Count-1 do
          Result.Add('  '+StrSubSelect.Strings[j]);
        Result.Add(ssEndSubSelectChar + ' ' + Items[i].ColumnName);

      finally

        StrSubSelect.Free;

      end;

    end
    else
    begin

      Result.Add(Trim(Items[i].Expression + ' ' + Items[i].ColumnName));

    end;

    if i < Count-1 then
      Result.Strings[Result.Count-1] := Result.Strings[Result.Count-1] + ssClauseItemSeparatorChar;

  end;

end;

procedure TSelectClause.SetSQL(SQL: TStringList);

var
  i, j, iPos: Integer;
  sLine, sExpression, sColumnName: String;
  ASubSelect: TSQLSelect;
  StrSubSelect: TStringList;

begin

  i := 0;

  while i <= SQL.Count-1 do
  begin

    sLine := Trim(SQL.Strings[i]);

    iPos := Length(sLine);
    if sLine[iPos] = ssClauseItemSeparatorChar then
      Dec(iPos);

    sLine := Copy(sLine, 1, iPos);

    if sLine = ssBeginSubSelectChar then
    begin

      ASubSelect := TSQLSelect.Create;

      try

        StrSubSelect := TStringList.Create;

        try

          StrSubSelect.Clear;

          Inc(i);

          while (i <= SQL.Count-1) and (Copy(SQL.Strings[i], 3, 1) <> ssEndSubSelectChar) do
          begin

            sLine := SQL.Strings[i];
            sLine := Copy(sLine, 5, Length(sLine));

            StrSubSelect.Add(sLine);

            Inc(i);

          end;

          sLine := Copy(SQL.Strings[i], 3, Length(SQL.Strings[i]));

          iPos := 1;
          if sLine[iPos] = ssEndSubSelectChar then
            Inc(iPos);

          sLine := Copy(sLine, iPos, Length(sLine));

          iPos := Length(sLine);
          if sLine[iPos] = ssClauseItemSeparatorChar then
            Dec(iPos);

          sLine := Copy(sLine, 1, iPos);

          sLine := Trim(sLine);

          sColumnName := sLine;

          ASubSelect.SetSQL(StrSubSelect);

          AddSubSelect(ASubSelect, sColumnName);

        finally

          StrSubSelect.Free;

        end;

      finally

        ASubSelect.Free;

      end;

    end
    else
    begin

      iPos := 0;

      j := Length(sLine);

      while (j >= 1) and (iPos = 0) do
      begin

        if sLine[j] = ' ' then
          iPos := j;

        Dec(j);

      end;

      sColumnName := Copy(sLine, iPos+1, Length(sLine));

      sLine := Copy(sLine, 1, iPos-1);

      sExpression := sLine;

      AddItem(sExpression, sColumnName);

    end;

    Inc(i);

  end;

end;

{ TFromClause }

function TFromClause.GetItem(Index: Integer): TFromClauseItem;
begin

  Result := TFromClauseItem(Objects[Index]);

end;

procedure TFromClause.SetItem(Index: Integer; const Value: TFromClauseItem);
begin

  Objects[Index] := Value;

end;

function TFromClause.AddItem(sTableName, sAlias: String): Integer;
begin

  Result := Add(Trim(sTableName + ' ' + sAlias));

  Items[Result] := TFromClauseItem.Create;
  Items[Result].TableName := sTableName;
  Items[Result].Alias     := sAlias;

end;

function TFromClause.AddSubSelect(SubSelect: TSQLSelect; sAlias: String): Integer;
begin

  Result := Add('[Sub-select] ' + Trim(sAlias));

  Items[Result] := TFromClauseItem.Create;
  Items[Result].Alias := sAlias;

  Items[Result].SubSelect := TSQLSelect.Create;
  Items[Result].SubSelect.Assign(SubSelect);

end;

function TFromClause.GetSQL: TStringList;

var
  i, j: Integer;
  ASubSelect: TSQLSelect;
  StrSubSelect: TStringList;

begin

  Result := TStringList.Create;
  Result.Clear;

  for i := 0 to Count-1 do
  begin

    ASubSelect := Items[i].SubSelect;

    if Assigned(ASubSelect) then
    begin

      StrSubSelect := ASubSelect.GetSQL;

      Result.Add('(');
      for j := 0 to StrSubSelect.Count-1 do
        Result.Add('  '+StrSubSelect.Strings[j]);
      Result.Add(') '+Items[i].Alias);

    end
    else
    begin

      Result.Add(Trim(Items[i].TableName + ' ' + Items[i].Alias));

    end;

    if i < Count-1 then
      Result.Strings[Result.Count-1] := Result.Strings[Result.Count-1] + ssClauseItemSeparatorChar;

  end;

end;

procedure TFromClause.SetSQL(SQL: TStringList);

var
  i, iPos: Integer;
  sLine, sTableName, sAlias: String;

begin

  for i := 0 to SQL.Count-1 do
  begin

    sLine := Trim(SQL.Strings[i]);

    iPos := Length(sLine);
    if sLine[iPos] = ssClauseItemSeparatorChar then
      Dec(iPos);

    sLine := Copy(sLine, 1, iPos);

    iPos := Pos(' ', sLine);
    if iPos = 0 then
      iPos := Length(sLine)+1;

    sTableName := Copy(sLine, 1, iPos-1);

    sLine := Copy(sLine, iPos+1, Length(sLine));

    sAlias := sLine;

    AddItem(sTableName, sAlias);

  end;

end;

{ TWhereClause }

function TWhereClause.GetItem(Index: Integer): TWhereClauseItem;
begin

  Result := TWhereClauseItem(Objects[Index]);

end;

procedure TWhereClause.SetItem(Index: Integer; const Value: TWhereClauseItem);
begin

  Objects[Index] := Value;

end;

function TWhereClause.AddItem(sExpression1: String; ComparasionOperator: TComparasionOperator; sExpression2: String; LogicalOperator: TLogicalOperator): Integer;
begin

  Result := Add(Trim(sExpression1 + ' ' + ComparasionOperatorToStr(ComparasionOperator) + ' ' + sExpression2 + ' ' + LogicalOperatorToStr(LogicalOperator)));

  Items[Result] := TWhereClauseItem.Create;
  Items[Result].Expression1         := sExpression1;
  Items[Result].ComparasionOperator := ComparasionOperator;
  Items[Result].Expression2         := sExpression2;
  Items[Result].LogicalOperator     := LogicalOperator;

end;

function TWhereClause.AddSubWhere(SubWhere: TWhereClause): Integer;
begin

  Result := Add('[Sub-where]');

  Items[Result] := TWhereClauseItem.Create;

  Items[Result].SubWhere := TWhereClause.Create;
  Items[Result].SubWhere.Assign(SubWhere);

end;

function TWhereClause.GetSQL: TStringList;

var
  i, j: Integer;
  ASubWhere: TWhereClause;
  StrSubSelect: TStringList;
  sLogicalOperator: String;

begin

  Result := TStringList.Create;
  Result.Clear;

  for i := 0 to Count-1 do
  begin

    ASubWhere := Items[i].SubWhere;

    if Assigned(ASubWhere) then
    begin

      StrSubSelect := ASubWhere.GetSQL;

      Result.Add(ssBeginSubSelectChar);
      for j := 0 to StrSubSelect.Count-1 do
        Result.Add('  '+StrSubSelect.Strings[j]);
      Result.Add(ssEndSubSelectChar);

    end
    else
    begin

      Result.Add(Items[i].Expression1 + ' ' + ComparasionOperatorToStr(Items[i].ComparasionOperator) + ' ' + Items[i].Expression2);

    end;

    if i < Count-1 then
    begin

      sLogicalOperator := LogicalOperatorToStr(Items[i].LogicalOperator);
      if sLogicalOperator = '' then
        sLogicalOperator := LogicalOperatorToStr(loAnd);

      Result.Strings[Result.Count-1] := Result.Strings[Result.Count-1] + ' ' + sLogicalOperator;

    end;

  end;

end;

procedure TWhereClause.SetSQL(SQL: TStringList);

var
  i, j, iPos: Integer;
  sLine, sAux, sExpression1, sExpression2: String;
  ComparasionOperator: TComparasionOperator;
  LogicalOperator: TLogicalOperator;

begin

  for i := 0 to SQL.Count-1 do
  begin

    sLine := Trim(SQL.Strings[i]);

    LogicalOperator := loNone;

    j := 1;

    while (j <= High(LogicalOperators)) and (LogicalOperator = loNone) do
    begin

      sAux := ' ' + LogicalOperatorToStr(LogicalOperators[j]);

      if UpperCase(Copy(sLine, Length(sLine)-Length(sAux)+1, Length(sAux))) = UpperCase(sAux) then
      begin

        LogicalOperator := LogicalOperators[j];

        sLine := Trim(Copy(sLine, 1, Length(sLine)-Length(sAux)));

      end;

      Inc(j);

    end;

    ComparasionOperator := coNone;
    sExpression1        := '';
    sExpression2        := '';

    j := 1;

    while (j <= High(ComparasionOperators)) and (ComparasionOperator = coNone) do
    begin

      sAux := ComparasionOperatorToStr(ComparasionOperators[j]);

      iPos := Pos(UpperCase(sAux), UpperCase(sLine));

      if iPos > 0 then
      begin

        ComparasionOperator := ComparasionOperators[j];
        sExpression1        := Trim(Copy(sLine, 1, iPos-1));
        sExpression2        := Trim(Copy(sLine, iPos+Length(sAux), Length(sLine)));

      end;

      Inc(j);

    end;

    AddItem(sExpression1, ComparasionOperator, sExpression2, LogicalOperator);

  end;

end;

{ TGroupByClause }

function TGroupByClause.GetItem(Index: Integer): TGroupByClauseItem;
begin

  Result := TGroupByClauseItem(Objects[Index]);

end;

procedure TGroupByClause.SetItem(Index: Integer; const Value: TGroupByClauseItem);
begin

  Objects[Index] := Value;

end;

function TGroupByClause.AddItem(sExpression: String): Integer;
begin

  Result := Add(Trim(sExpression));

  Items[Result] := TGroupByClauseItem.Create;
  Items[Result].Expression := sExpression;

end;

function TGroupByClause.GetSQL: TStringList;

var
  i: Integer;

begin

  Result := TStringList.Create;
  Result.Clear;

  for i := 0 to Count-1 do
  begin

    Result.Add(Items[i].Expression);

    if i < Count-1 then
      Result.Strings[Result.Count-1] := Result.Strings[Result.Count-1] + ssClauseItemSeparatorChar;

  end;

end;

procedure TGroupByClause.SetSQL(SQL: TStringList);

var
  i, iPos: Integer;
  sLine, sExpression: String;

begin

  for i := 0 to SQL.Count-1 do
  begin

    sLine := Trim(SQL.Strings[i]);

    iPos := Length(sLine);
    if sLine[iPos] = ssClauseItemSeparatorChar then
      Dec(iPos);

    sLine := Copy(sLine, 1, iPos);

    sExpression := sLine;

    AddItem(sExpression);

  end;

end;

{ TOrderByClause }

function TOrderByClause.GetItem(Index: Integer): TOrderByClauseItem;
begin

  Result := TOrderByClauseItem(Objects[Index]);

end;

procedure TOrderByClause.SetItem(Index: Integer; const Value: TOrderByClauseItem);
begin

  Objects[Index] := Value;

end;

function TOrderByClause.AddItem(sColumnName: String; bDescending: Boolean = False; bNullsFirst: Boolean = False): Integer;
begin

  Result := Add(Trim(sColumnName));

  Items[Result] := TOrderByClauseItem.Create;
  Items[Result].ColumnName := sColumnName;
  Items[Result].Descending := bDescending;
  Items[Result].NullsFirst := bNullsFirst;

end;

function TOrderByClause.GetSQL: TStringList;

var
  i: Integer;
  s: String;

begin

  Result := TStringList.Create;
  Result.Clear;

  for i := 0 to Count-1 do
  begin

    s := Items[i].ColumnName;

    if Items[i].Descending then
    begin

      s := s + ' DESC';

      if not Items[i].NullsFirst then
        s := s + ' NULLS LAST';

    end
    else
    begin

      if Items[i].NullsFirst then
        s := s + ' NULLS FIRST';

    end;

    Result.Add(s);

    if i < Count-1 then
      Result.Strings[Result.Count-1] := Result.Strings[Result.Count-1] + ssClauseItemSeparatorChar;

  end;

end;

procedure TOrderByClause.SetSQL(SQL: TStringList);

var
  i, iPos: Integer;
  sLine, sColumnName: String;
  bDescending, bNullsFirst: Boolean;

begin

  for i := 0 to SQL.Count-1 do
  begin

    sLine := Trim(SQL.Strings[i]);

    iPos := Length(sLine);
    if sLine[iPos] = ssClauseItemSeparatorChar then
      Dec(iPos);

    sLine := Copy(sLine, 1, iPos);

    iPos := Pos(' ', sLine);
    if iPos = 0 then
      iPos := Length(sLine)+1;

    sColumnName  := Copy(sLine, 1, iPos-1);
    sLine := Copy(sLine, iPos+1, Length(sLine));

    bDescending := False;
    if Copy(sLine, 1, 4) = 'DESC' then
    begin

      bDescending := True;
      sLine := Copy(sLine, 5, Length(sLine));

    end;

    bNullsFirst := False;
    if Copy(sLine, 1, 11) = 'NULLS FIRST' then
    begin

      bNullsFirst := True;
      sLine := Copy(sLine, 12, Length(sLine));

    end;

    AddItem(sColumnName, bDescending, bNullsFirst);

  end;

end;

{ TSQLSelect }

constructor TSQLSelect.Create;
begin

  inherited;

  FSelectClause := TSelectClause.Create;

  FFromClause := TFromClause.Create;

  FWhereClause := TWhereClause.Create;

  FGroupByClause := TGroupByClause.Create;

  FOrderByClause := TOrderByClause.Create;

end;

destructor TSQLSelect.Destroy;
begin

  FSelectClause.Free;

  FFromClause.Free;

  FWhereClause.Free;

  FGroupByClause.Free;

  FOrderByClause.Free;

  inherited;

end;

procedure TSQLSelect.Assign(Source: TSQLSelect);
begin

  FSelectClause.Clear;
  FSelectClause.AddStrings(Source.SelectClause);

  FFromClause.Clear;
  FFromClause.AddStrings(Source.FromClause);

  FWhereClause.Clear;
  FWhereClause.AddStrings(Source.WhereClause);

  FGroupByClause.Clear;
  FGroupByClause.AddStrings(Source.GroupByClause);

  FOrderByClause.Clear;
  FOrderByClause.AddStrings(Source.OrderByClause);

end;

function TSQLSelect.GetSQL: TStringList;

var
  StrClause: TStringList;
  i: Integer;

begin

  Result := TStringList.Create;
  Result.Clear;

  // Cláusula Select
  StrClause := FSelectClause.GetSQL;
  Result.Add('SELECT');
  for i := 0 to StrClause.Count-1 do
    Result.Add('  ' + StrClause.Strings[i]);

  // Cláusula From
  StrClause := FFromClause.GetSQL;
  Result.Add('FROM');
  for i := 0 to StrClause.Count-1 do
    Result.Add('  ' + StrClause.Strings[i]);

  // Cláusula Where
  StrClause := FWhereClause.GetSQL;
  if StrClause.Count > 0 then
  begin
    Result.Add('WHERE');
    for i := 0 to StrClause.Count-1 do
      Result.Add('  ' + StrClause.Strings[i]);
  end;

  // Cláusula Group By
  StrClause := FGroupByClause.GetSQL;
  if StrClause.Count > 0 then
  begin
    Result.Add('GROUP BY');
    for i := 0 to StrClause.Count-1 do
      Result.Add('  ' + StrClause.Strings[i]);
  end;

  // Cláusula Order By
  StrClause := FOrderByClause.GetSQL;
  if StrClause.Count > 0 then
  begin
    Result.Add('ORDER BY');
    for i := 0 to StrClause.Count-1 do
      Result.Add('  ' + StrClause.Strings[i]);
  end;

end;

procedure TSQLSelect.SetSQL(SQL: TStringList);

var
  StrClause: TStringList;
  i: Integer;

begin

  StrClause := TStringList.Create;

  try

    // Cláusula Select
    StrClause.Clear;
    i := 1;
    while (i <= SQL.Count-1) and (Copy(SQL.Strings[i], 1, 2) = '  ') do
    begin
      StrClause.Add(SQL.Strings[i]);
      Inc(i);
    end;
    FSelectClause.SetSQL(StrClause);

    // Cláusula From
    StrClause.Clear;
    Inc(i);
    while (i <= SQL.Count-1) and (Copy(SQL.Strings[i], 1, 2) = '  ') do
    begin
      StrClause.Add(SQL.Strings[i]);
      Inc(i);
    end;
    FFromClause.SetSQL(StrClause);

    // Cláusula Where
    if (i <= SQL.Count-1) and (SQL.Strings[i] = 'WHERE') then
    begin
      StrClause.Clear;
      Inc(i);
      while (i <= SQL.Count-1) and (Copy(SQL.Strings[i], 1, 2) = '  ') do
      begin
        StrClause.Add(SQL.Strings[i]);
        Inc(i);
      end;
      FWhereClause.SetSQL(StrClause);
    end;

    // Cláusula Group By
    if (i <= SQL.Count-1) and (SQL.Strings[i] = 'GROUP BY') then
    begin
      StrClause.Clear;
      Inc(i);
      while (i <= SQL.Count-1) and (Copy(SQL.Strings[i], 1, 2) = '  ') do
      begin
        StrClause.Add(SQL.Strings[i]);
        Inc(i);
      end;
      FGroupByClause.SetSQL(StrClause);
    end;

    // Cláusula Order By
    if (i <= SQL.Count-1) and (SQL.Strings[i] = 'ORDER BY') then
    begin
      StrClause.Clear;
      Inc(i);
      while (i <= SQL.Count-1) and (Copy(SQL.Strings[i], 1, 2) = '  ') do
      begin
        StrClause.Add(SQL.Strings[i]);
        Inc(i);
      end;
      FOrderByClause.SetSQL(StrClause);
    end;

  finally

    StrClause.Free;

  end;

end;

{ Functions }

function ComparasionOperatorToStr(ComparasionOperator: TComparasionOperator): String;
begin

  if ComparasionOperator = coEqualTo then
    Result := '='
  else if ComparasionOperator = coDifferentThan then
    Result := '<>'
  else if ComparasionOperator = coGreaterThan then
    Result := '>'
  else if ComparasionOperator = coLessThan then
    Result := '<'
  else if ComparasionOperator = coGreaterThanOrEqualTo then
    Result := '>='
  else if ComparasionOperator = coLessThanOrEqualTo then
    Result := '<='
  else if ComparasionOperator = coIsNull then
    Result := 'IS NULL'
  else if ComparasionOperator = coIsNotNull then
    Result := 'IS NOT NULL'
  else if ComparasionOperator = coLike then
    Result := 'LIKE'
  else if ComparasionOperator = coNotLike then
    Result := 'NOT LIKE'
  else if ComparasionOperator = coIn then
    Result := 'IN'
  else if ComparasionOperator = coNotIn then
    Result := 'NOT IN'
  else
    Result := '';

end;

function StrToComparasionOperator(sComparasionOperator: String): TComparasionOperator;
begin

  if sComparasionOperator = '=' then
    Result := coEqualTo
  else if sComparasionOperator = '<>' then
    Result := coDifferentThan
  else if sComparasionOperator = '>' then
    Result := coGreaterThan
  else if sComparasionOperator = '<' then
    Result := coLessThan
  else if sComparasionOperator = '>=' then
    Result := coGreaterThanOrEqualTo
  else if sComparasionOperator = '<=' then
    Result := coLessThanOrEqualTo
  else if sComparasionOperator = 'IS NULL' then
    Result := coIsNull
  else if sComparasionOperator = 'IS NOT NULL' then
    Result := coIsNotNull
  else if sComparasionOperator = 'LIKE' then
    Result := coLike
  else if sComparasionOperator = 'NOT LIKE' then
    Result := coNotLike
  else if sComparasionOperator = 'IN' then
    Result := coIn
  else if sComparasionOperator = 'NOT IN' then
    Result := coNotIn
  else
    Result := coNone;

end;

function LogicalOperatorToStr(LogicalOperator: TLogicalOperator): String;
begin

  if LogicalOperator = loAnd then
    Result := 'AND'
  else if LogicalOperator = loOr then
    Result := 'OR'
  else if LogicalOperator = loNot then
    Result := 'NOT'
  else
    Result := '';

end;

function StrToLogicalOperator(sLogicalOperator: String): TLogicalOperator;
begin

  if sLogicalOperator = 'AND' then
    Result := loAnd
  else if sLogicalOperator = 'OR' then
    Result := loOr
  else if sLogicalOperator = 'NOT' then
    Result := loNot
  else
    Result := loNone;

end;

end.