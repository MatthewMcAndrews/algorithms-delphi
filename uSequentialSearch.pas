unit uSequentialSearch;

interface

function SequentialSearch(
  const Domain: TArray<string>;
  const Target: string): Integer;

implementation

function SequentialSearch(
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
  Exit(-1);
end;

end.
