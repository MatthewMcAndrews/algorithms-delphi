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
  System.SysUtils,
  uSequentialSearch;

{ TSequentialSearchTest }

procedure TSequentialSearchTest.sort_empty;
begin
  Assert.AreEqual(-1, Search<string>.Sequential([], '', SameStr));
end;

procedure TSequentialSearchTest.sort_one_found;
begin
  Assert.AreEqual(0, Search<string>.Sequential(['a'], 'a', SameStr));
end;

procedure TSequentialSearchTest.sort_one_not_found;
begin
  Assert.AreEqual(-1, Search<string>.Sequential([''], 'a', SameStr));
end;

initialization
  TDUnitX.RegisterTestFixture(TSequentialSearchTest);

end.
