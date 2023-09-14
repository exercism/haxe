package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("allergies", {
			describe("testing for eggs allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("eggs", 0).should.be(false);
				});

				it("allergic only to eggs", {
					Allergies.allergicTo("eggs", 1).should.be(true);
				});

				it("allergic to eggs and something else", {
					Allergies.allergicTo("eggs", 3).should.be(true);
				});

				it("allergic to something, but not eggs", {
					Allergies.allergicTo("eggs", 2).should.be(false);
				});
				
				it("allergic to everything", {
					Allergies.allergicTo("eggs", 255).should.be(true);
				});
			});
			
			describe("testing for peanuts allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("peanuts", 0).should.be(false);
				});

				it("allergic only to peanuts", {
					Allergies.allergicTo("peanuts", 2).should.be(true);
				});

				it("allergic to peanuts and something else", {
					Allergies.allergicTo("peanuts", 7).should.be(true);
				});

				it("allergic to something, but not peanuts", {
					Allergies.allergicTo("peanuts", 5).should.be(false);
				});

				it("allergic to everything", {
					Allergies.allergicTo("peanuts", 255).should.be(true);
				});
			});

			describe("testing for shellfish allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("shellfish", 0).should.be(false);
				});

				it("allergic only to shellfish", {
					Allergies.allergicTo("shellfish", 4).should.be(true);
				});
				
				it("allergic to shellfish and something else", {
					Allergies.allergicTo("shellfish", 14).should.be(true);
				});

				it("allergic to something, but not shellfish", {
					Allergies.allergicTo("shellfish", 10).should.be(false);
				});

				it("allergic to everything", {
					Allergies.allergicTo("shellfish", 255).should.be(true);
				});
			});

			describe("testing for strawberries allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("strawberries", 0).should.be(false);
				});

				it("allergic only to strawberries", {
					Allergies.allergicTo("strawberries", 8).should.be(true);
				});

				it("allergic to strawberries and something else", {
					Allergies.allergicTo("strawberries", 28).should.be(true);
				});

				it("allergic to something, but not strawberries", {
					Allergies.allergicTo("strawberries", 20).should.be(false);
				});

				it("allergic to everything", {
					Allergies.allergicTo("strawberries", 255).should.be(true);
				});
			});

			describe("testing for tomatoes allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("tomatoes", 0).should.be(false);
				});

				it("allergic only to tomatoes", {
					Allergies.allergicTo("tomatoes", 16).should.be(true);
				});

				it("allergic to tomatoes and something else", {
					Allergies.allergicTo("tomatoes", 56).should.be(true);
				});

				it("allergic to something, but not tomatoes", {
					Allergies.allergicTo("tomatoes", 40).should.be(false);
				});

				it("allergic to everything", {
					Allergies.allergicTo("tomatoes", 255).should.be(true);
				});
			});
			
			describe("testing for chocolate allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("chocolate", 0).should.be(false);
				});

				it("allergic only to chocolate", {
					Allergies.allergicTo("chocolate", 32).should.be(true);
				});

				it("allergic to chocolate and something else", {
					Allergies.allergicTo("chocolate", 112).should.be(true);
				});

				it("allergic to something, but not chocolate", {
					Allergies.allergicTo("chocolate", 80).should.be(false);
				});
				
				it("allergic to everything", {
					Allergies.allergicTo("chocolate", 255).should.be(true);
				});
			});

			describe("testing for pollen allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("pollen", 0).should.be(false);
				});

				it("allergic only to pollen", {
					Allergies.allergicTo("pollen", 64).should.be(true);
				});

				it("allergic to pollen and something else", {
					Allergies.allergicTo("pollen", 224).should.be(true);
				});

				it("allergic to something, but not pollen", {
					Allergies.allergicTo("pollen", 160).should.be(false);
				});

				it("allergic to everything", {
					Allergies.allergicTo("pollen", 255).should.be(true);
				});
			});

			describe("testing for cats allergy", {
				it("not allergic to anything", {
					Allergies.allergicTo("cats", 0).should.be(false);
				});

				it("allergic only to cats", {
					Allergies.allergicTo("cats", 128).should.be(true);
				});

				it("allergic to cats and something else", {
					Allergies.allergicTo("cats", 192).should.be(true);
				});

				it("allergic to something, but not cats", {
					Allergies.allergicTo("cats", 64).should.be(false);
				});

				it("allergic to everything", {
					Allergies.allergicTo("cats", 255).should.be(true);
				});
			});

			describe("testing for all allergies", {
				it("not allergic to anything", {
					Allergies.list(0).should.containExactly([]);
				});

				it("just eggs", {
					Allergies.list(1).should.containExactly(["eggs"]);
				});

				it("just peanuts", {
					Allergies.list(2).should.containExactly(["peanuts"]);
				});

				it("just strawberries", {
					Allergies.list(8).should.containExactly(["strawberries"]);
				});

				it("eggs and peanuts", {
					Allergies.list(3).should.containExactly(["eggs", "peanuts"]);
				});

				it("more than eggs but not peanuts", {
					Allergies.list(5).should.containExactly(["eggs", "shellfish"]);
				});

				it("lots of stuff", {
					Allergies.list(248).should.containExactly([
						"strawberries", "tomatoes", "chocolate",
						"pollen"      , "cats"
					]);
				});

				it("everything", {
					Allergies.list(255).should.containExactly([
						"eggs"        , "peanuts" , "shellfish",
						"strawberries", "tomatoes", "chocolate",
						"pollen"      , "cats"
					]);
				});

				it("no allergen score parts", {
					Allergies.list(509).should.containExactly([
						"eggs"        , "shellfish", "strawberries",
						"tomatoes"    , "chocolate", "pollen"      , 
						"cats"
					]);
				});
				
				it("no allergen score parts without highest valid score", {
					Allergies.list(257).should.containExactly(["eggs"]);
				});
			});
		});
	}
}
