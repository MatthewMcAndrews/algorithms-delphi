unit uSearch;

interface

uses
  System.SysUtils;

type
  TEqualsFunc<T> = reference to function (
    const Value1: T;
    const Value2: T): Boolean;
  TCompareFunc<T> = reference to function (
    const Value1: T;
    const Value2: T): Integer;
  Search<T> = class
    class function Sequential(
      const Domain: TArray<T>;
      const Target: T;
      const Equals: TEqualsFunc<T>): Integer;
    class function Binary(
      const Domain: TArray<T>;
      const Target: T;
      const Compare: TCompareFunc<T>): Integer;
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

class function Search<T>.Binary(
  const Domain: TArray<T>;
  const Target: T;
  const Compare: TCompareFunc<T>): Integer;
var
  Left: Integer;
  Middle: Integer;
  Right: Integer;
  Comparison: Integer;
begin
  Left := Low(Domain);
  Right := High(Domain);
  while (Left <= Right) do begin
    Middle := (Left + Right) div 2;
    Comparison := Compare(Target, Domain[Middle]);
    case Comparison of
      -1: Left := Middle + 1;
      0: Exit(Middle);
      1: Right := Middle - 1;
    else
      raise Exception.CreateFmt(
        'Invalid Comparison Result %i, Expected Comparison Domain (-1, 0, 1).',
        [Comparison]);
    end;
  end;
  Exit(-1);
end;

end.
