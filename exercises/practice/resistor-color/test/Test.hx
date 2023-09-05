package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("Color codes", {
            it("Black", {
                ResistorColor.colorCode("black").should.be(0);
            });
            xit("White", {
                ResistorColor.colorCode("white").should.be(9);
            });
            xit("Orange", {
                ResistorColor.colorCode("orange").should.be(3);
            });
            xit("Colors", {
                ResistorColor.colors.should.containExactly([
                    "black", "brown",    "red", "orange", "yellow",
                    "green",  "blue", "violet",   "grey",  "white"
                ]);
            });
        });
    }
}
