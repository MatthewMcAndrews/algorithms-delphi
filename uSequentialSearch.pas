unit uSequentialSearch;

interface

function SequentialSort(
  const Domain: TArray<string>;
  const Target: string): Integer;

implementation

function SequentialSort(
  const Domain: TArray<string>;
  const Target: string): Integer;
var
  i: Integer;
begin
  for i := Low(Domain) to High(Domain) do begin
    if Target = Domain[i] then begin
      Exit(i);
    end;
  end;
  Result := -1;
end;

end.
