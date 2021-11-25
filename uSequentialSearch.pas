unit uSequentialSearch;

interface

uses
  System.SysUtils;

type
  TEqualsFunc<T> = reference to function (
    const Value1: T;
    const Value2: T): Boolean;
  Search<T> = class
    class function Sequential(
      const Domain: TArray<T>;
      const Target: T;
      const Equals: TEqualsFunc<T>): Integer;
  end;

implementation

{ Search<T> }

class function Search<T>.Sequential(
  const Domain: TArray<T>;
  const Target: T;
  const Equals: TEqualsFunc<T>): Integer;
var
  i: Integer;
begin
  for i := Low(Domain) to High(Domain) do begin
    if Equals(Target, Domain[i]) then begin
      Exit(i);
    end;
  end;
  Exit(-1);
end;

end.
