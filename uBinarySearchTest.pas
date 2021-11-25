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

initialization
  TDUnitX.RegisterTestFixture(TBinarySearchTest);

end.
