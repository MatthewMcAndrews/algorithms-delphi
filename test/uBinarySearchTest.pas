unit uBinarySearchTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TBinarySearchTest = class
  public
    [Test]
    procedure search_empty;
    [Test]
    procedure search_one_not_found;
    [Test]
    procedure search_one_found;
    [Test]
    procedure search_multiple_found;
  end;

implementation

uses
  System.SysUtils,
  uSearch;

{ TBinarySearchTest }

procedure TBinarySearchTest.search_empty;
begin
  Assert.AreEqual(-1, Search<string>.Binary([], '', AnsiCompareStr));
end;

procedure TBinarySearchTest.search_multiple_found;
begin
  Assert.AreEqual(2, Search<string>.Binary(['c', 'b', 'a'], 'a', AnsiCompareStr));
end;

procedure TBinarySearchTest.search_one_found;
begin
  Assert.AreEqual(0, Search<string>.Binary(['a'], 'a', AnsiCompareStr));
end;

procedure TBinarySearchTest.search_one_not_found;
begin
  Assert.AreEqual(-1, Search<string>.Binary([''], 'a', AnsiCompareStr));
end;

initialization
  TDUnitX.RegisterTestFixture(TBinarySearchTest);

end.
