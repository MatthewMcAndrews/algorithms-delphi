unit uSequentialSearchTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TSequentialSearchTest = class(TObject)
  public
    [Test]
    procedure search_empty;
    [Test]
    procedure search_one_not_found;
    [Test]
    procedure search_one_found;
  end;

implementation

uses
  System.SysUtils,
  uSequentialSearch;

{ TSequentialSearchTest }

procedure TSequentialSearchTest.search_empty;
begin
  Assert.AreEqual(-1, Search<string>.Sequential([], '', SameStr));
end;

procedure TSequentialSearchTest.search_one_found;
begin
  Assert.AreEqual(0, Search<string>.Sequential(['a'], 'a', SameStr));
end;

procedure TSequentialSearchTest.search_one_not_found;
begin
  Assert.AreEqual(-1, Search<string>.Sequential([''], 'a', SameStr));
end;

initialization
  TDUnitX.RegisterTestFixture(TSequentialSearchTest);

end.
