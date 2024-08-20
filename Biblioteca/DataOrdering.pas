unit DataOrdering;

interface

uses
  Windows, Messages, SysUtils, Classes;

type

  { TDataOrderingCriteriaItem }

  TDataOrderingCriteriaItem = class(TPersistent)
  private
    FFieldName: String;
    FDescending: Boolean;
  protected
    { Protected declarations }
  public
    constructor Create;
  published
    property FieldName: String read FFieldName write FFieldName;
    property Descending: Boolean read FDescending write FDescending;
  end;

  { TDataOrderingCriteria }

  TDataOrderingCriteria = class(TStringList)
  private
    function GetItem(Index: Integer): TDataOrderingCriteriaItem;
    procedure SetItem(Index: Integer; const Value: TDataOrderingCriteriaItem);
  protected
    { Protected declarations }
  public
    property Items[Index: Integer]: TDataOrderingCriteriaItem read GetItem write SetItem;
    function AddItem(sFieldName: String; bDescending: Boolean = False): Integer;
  published
    { Published declarations }
  end;

implementation

{ TDataOrderingCriteriaItem }

constructor TDataOrderingCriteriaItem.Create;
begin

  inherited;

  FFieldName  := '';
  FDescending := False;

end;

{ TDataOrderingCriteria }

function TDataOrderingCriteria.GetItem(Index: Integer): TDataOrderingCriteriaItem;
begin

  Result := TDataOrderingCriteriaItem(Objects[Index]);

end;

procedure TDataOrderingCriteria.SetItem(Index: Integer; const Value: TDataOrderingCriteriaItem);
begin

  Objects[Index] := Value;

end;

function TDataOrderingCriteria.AddItem(sFieldName: String; bDescending: Boolean = False): Integer;
begin

  Result := Add(Trim(sFieldName));

  Items[Result] := TDataOrderingCriteriaItem.Create;
  Items[Result].FieldName  := sFieldName;
  Items[Result].Descending := bDescending;

end;

end.