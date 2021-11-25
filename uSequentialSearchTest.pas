unit uSequentialSearchTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TSequentialSearchTest = class(TObject)
  public
    [Test]
    procedure sort_empty;
    [Test]
    procedure sort_one_not_found;
    [Test]
    procedure sort_one_found;
  end;

implementation

uses
  uSequentialSearch;

function StringEquals(
  Str1: string;
  Str2: string): Boolean;
begin
  Result := Str1 = Str2;
end;

{ TSequentialSearchTest }

procedure TSequentialSearchTest.sort_empty;
begin
  Assert.AreEqual(-1, Search<string>.Sequential([], '', StringEquals));
end;

procedure TSequentialSearchTest.sort_one_found;
begin
  Assert.AreEqual(0, Search<string>.Sequential(['a'], 'a', StringEquals));
end;

procedure TSequentialSearchTest.sort_one_not_found;
begin
  Assert.AreEqual(-1, Search<string>.Sequential([''], 'a', StringEquals));
end;

initialization
  TDUnitX.RegisterTestFixture(TSequentialSearchTest);

end.
