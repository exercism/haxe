package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("testing for eggs allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("eggs", 0).should.be(false);
			});
			it("allergic only to eggs", {
				pending("Skipping");
				Allergies.allergicTo("eggs", 1).should.be(true);
			});
			it("allergic to eggs and something else", {
				pending("Skipping");
				Allergies.allergicTo("eggs", 3).should.be(true);
			});
			it("allergic to something, but not eggs", {
				pending("Skipping");
				Allergies.allergicTo("eggs", 2).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("eggs", 255).should.be(true);
			});
		});
		describe("testing for peanuts allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("peanuts", 0).should.be(false);
			});
			it("allergic only to peanuts", {
				pending("Skipping");
				Allergies.allergicTo("peanuts", 2).should.be(true);
			});
			it("allergic to peanuts and something else", {
				pending("Skipping");
				Allergies.allergicTo("peanuts", 7).should.be(true);
			});
			it("allergic to something, but not peanuts", {
				pending("Skipping");
				Allergies.allergicTo("peanuts", 5).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("peanuts", 255).should.be(true);
			});
		});
		describe("testing for shellfish allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("shellfish", 0).should.be(false);
			});
			it("allergic only to shellfish", {
				pending("Skipping");
				Allergies.allergicTo("shellfish", 4).should.be(true);
			});
			it("allergic to shellfish and something else", {
				pending("Skipping");
				Allergies.allergicTo("shellfish", 14).should.be(true);
			});
			it("allergic to something, but not shellfish", {
				pending("Skipping");
				Allergies.allergicTo("shellfish", 10).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("shellfish", 255).should.be(true);
			});
		});
		describe("testing for strawberries allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("strawberries", 0).should.be(false);
			});
			it("allergic only to strawberries", {
				pending("Skipping");
				Allergies.allergicTo("strawberries", 8).should.be(true);
			});
			it("allergic to strawberries and something else", {
				pending("Skipping");
				Allergies.allergicTo("strawberries", 28).should.be(true);
			});
			it("allergic to something, but not strawberries", {
				pending("Skipping");
				Allergies.allergicTo("strawberries", 20).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("strawberries", 255).should.be(true);
			});
		});
		describe("testing for tomatoes allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("tomatoes", 0).should.be(false);
			});
			it("allergic only to tomatoes", {
				pending("Skipping");
				Allergies.allergicTo("tomatoes", 16).should.be(true);
			});
			it("allergic to tomatoes and something else", {
				pending("Skipping");
				Allergies.allergicTo("tomatoes", 56).should.be(true);
			});
			it("allergic to something, but not tomatoes", {
				pending("Skipping");
				Allergies.allergicTo("tomatoes", 40).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("tomatoes", 255).should.be(true);
			});
		});
		describe("testing for chocolate allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("chocolate", 0).should.be(false);
			});
			it("allergic only to chocolate", {
				pending("Skipping");
				Allergies.allergicTo("chocolate", 32).should.be(true);
			});
			it("allergic to chocolate and something else", {
				pending("Skipping");
				Allergies.allergicTo("chocolate", 112).should.be(true);
			});
			it("allergic to something, but not chocolate", {
				pending("Skipping");
				Allergies.allergicTo("chocolate", 80).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("chocolate", 255).should.be(true);
			});
		});
		describe("testing for pollen allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("pollen", 0).should.be(false);
			});
			it("allergic only to pollen", {
				pending("Skipping");
				Allergies.allergicTo("pollen", 64).should.be(true);
			});
			it("allergic to pollen and something else", {
				pending("Skipping");
				Allergies.allergicTo("pollen", 224).should.be(true);
			});
			it("allergic to something, but not pollen", {
				pending("Skipping");
				Allergies.allergicTo("pollen", 160).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("pollen", 255).should.be(true);
			});
		});
		describe("testing for cats allergy", {
			it("not allergic to anything", {
				Allergies.allergicTo("cats", 0).should.be(false);
			});
			it("allergic only to cats", {
				pending("Skipping");
				Allergies.allergicTo("cats", 128).should.be(true);
			});
			it("allergic to cats and something else", {
				pending("Skipping");
				Allergies.allergicTo("cats", 192).should.be(true);
			});
			it("allergic to something, but not cats", {
				pending("Skipping");
				Allergies.allergicTo("cats", 64).should.be(false);
			});
			it("allergic to everything", {
				pending("Skipping");
				Allergies.allergicTo("cats", 255).should.be(true);
			});
		});
		describe("testing for all allergies", {
			it("not allergic to anything", {
				Allergies.list(0).should.containExactly([]);
			});
			it("just eggs", {
				pending("Skipping");
				Allergies.list(1).should.containExactly(["eggs"]);
			});
			it("just peanuts", {
				pending("Skipping");
				Allergies.list(2).should.containExactly(["peanuts"]);
			});
			it("just strawberries", {
				pending("Skipping");
				Allergies.list(8).should.containExactly(["strawberries"]);
			});
			it("eggs and peanuts", {
				pending("Skipping");
				Allergies.list(3).should.containExactly(["eggs", "peanuts"]);
			});
			it("more than eggs but not peanuts", {
				pending("Skipping");
				Allergies.list(5).should.containExactly(["eggs", "shellfish"]);
			});
			it("lots of stuff", {
				pending("Skipping");
				Allergies.list(248).should.containExactly([
					"strawberries", "tomatoes", "chocolate",
					"pollen"      , "cats"
				]);
			});
			it("everything", {
				pending("Skipping");
				Allergies.list(255).should.containExactly([
					"eggs"        , "peanuts" , "shellfish",
					"strawberries", "tomatoes", "chocolate",
					"pollen"      , "cats"
				]);
			});
			it("no allergen score parts", {
				pending("Skipping");
				Allergies.list(509).should.containExactly([
					"eggs"        , "shellfish", "strawberries",
					"tomatoes"    , "chocolate", "pollen"      , 
					"cats"
				]);
			});
		});
	}
}
