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

{ TSequentialSearchTest }

procedure TSequentialSearchTest.sort_empty;
begin
  Assert.AreEqual(-1, SequentialSort([], ''));
end;

procedure TSequentialSearchTest.sort_one_found;
begin
  Assert.AreEqual(0, SequentialSort(['a'], 'a'));
end;

procedure TSequentialSearchTest.sort_one_not_found;
begin
  Assert.AreEqual(-1, SequentialSort([''], 'a'));
end;

initialization
  TDUnitX.RegisterTestFixture(TSequentialSearchTest);

end.
