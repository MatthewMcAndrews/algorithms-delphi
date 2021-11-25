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
  end;

implementation

uses
  uSequentialSearch;

{ TSequentialSearchTest }

procedure TSequentialSearchTest.sort_empty;
begin
  Assert.AreEqual(-1, SequentialSort([], ''));
end;

initialization
  TDUnitX.RegisterTestFixture(TSequentialSearchTest);

end.
