unit sPoNgEbObCaSe;

interface

type
  TSpongeBobCaseHelper = record helper for string
    function ToSpongeBobCase: string;
  end;

implementation

{ TSpongeBobCaseHelper }

function LoCase(AChar: Char): Char;
begin
  case AChar of
    'A'..'Z':
    begin
      Result := Char(Ord(AChar) + Ord('a') - Ord('A'));
    end;
  else
    Result := AChar;
  end;
end;

function UpCase(AChar: Char): Char;
begin
  case AChar of
    'a'..'z':
    begin
      Result := Char(Ord(AChar) + Ord('A') - Ord('a'));
    end;
  else
    Result := AChar;
  end;
end;

function TSpongeBobCaseHelper.ToSpongeBobCase: string;
var
  LResult: string;
  LLength: Integer;
  I: Integer;
begin
  LLength := Length(Self);
  SetLength(LResult, LLength);
  for I := 1 to LLength do
  begin
    if ((I mod 2) = 0) then
    begin
      LResult[I] := UpCase(Self[I]);
    end
    else
    begin
      LResult[I] := LoCase(Self[I]);
    end;
  end;
  Result := LResult;
end;

end.

