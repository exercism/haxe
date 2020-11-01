package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("Bob", {
            final SURE     = "Sure.";
            final CHILL    = "Whoa, chill out!";
            final CALM     = "Calm down, I know what I'm doing!"; 
            final FINE     = "Fine. Be that way!";
            final WHATEVER = "Whatever.";


            it("stating something", {
                Bob.hey("Tom-ay-to, tom-aaaah-to.").should.be(WHATEVER);
            });
            it("shouting", {
                pending("Skipping");
                Bob.hey("WATCH OUT!").should.be(CHILL);
            });
            it("shouting gibberish", {
                pending("Skipping");
                Bob.hey("FCECDFCAAB").should.be(CHILL);
            });
            it("asking a question", {
                pending("Skipping");
                Bob.hey("Does this cryogenic chamber make me look fat?").should.be(SURE);
            });
            it("asking a numeric question", {
                pending("Skipping");
                Bob.hey("You are, what, like 15?").should.be(SURE);
            });
            it("asking gibberish", {
                pending("Skipping");
                Bob.hey("fffbbcbeab?").should.be(SURE);
            });
            it("talking forcefully", {
                pending("Skipping");
                Bob.hey("Hi there!").should.be(WHATEVER);
            });
            it("using acronyms in regular speech", {
                pending("Skipping");
                Bob.hey("It's OK if you don't want to go work for NASA.").should.be(WHATEVER);
            });
            it("forceful question", {
                pending("Skipping");
                Bob.hey("WHAT'S GOING ON?").should.be(CALM);
            });
            it("shouting numbers", {
                pending("Skipping");
                Bob.hey("1, 2, 3 GO!").should.be(CHILL);
            });
            it("no letters", {
                pending("Skipping");
                Bob.hey("1, 2, 3").should.be(WHATEVER);
            });
            it("question with no letters", {
                pending("Skipping");
                Bob.hey("4?").should.be(SURE);
            });
            it("shouting with special characters", {
                pending("Skipping");
                Bob.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!").should.be(CHILL);
            });
            it("shouting with no exclamation mark", {
                pending("Skipping");
                Bob.hey("I HATE THE DENTIST").should.be(CHILL);
            });
            it("statement containing question mark", {
                pending("Skipping");
                Bob.hey("Ending with ? means a question.").should.be(WHATEVER);
            });
            it("non-letters with question", {
                pending("Skipping");
                Bob.hey(":) ?").should.be(SURE);
            });
            it("prattling on", {
                pending("Skipping");
                Bob.hey("Wait! Hang on. Are you going to be OK?").should.be(SURE);
            });
            it("silence", {
                pending("Skipping");
                Bob.hey("").should.be(FINE);
            });
            it("prolonged silence", {
                pending("Skipping");
                Bob.hey("          ").should.be(FINE);
            });
            it("alternate silence", {
                pending("Skipping");
                Bob.hey("\t\t\t\t\t\t\t\t\t\t").should.be(FINE);
            });
            it("multiple line question", {
                pending("Skipping");
                Bob.hey("\nDoes this cryogenic chamber make me look fat?\nNo.").should.be(WHATEVER);
            });
            it("starting with whitespace", {
                pending("Skipping");
                Bob.hey("         hmmmmmmm...").should.be(WHATEVER);
            });
            it("ending with whitespace", {
                pending("Skipping");
                Bob.hey("Okay if like my  spacebar  quite a bit?   ").should.be(SURE);
            });
            it("other whitespace", {
                pending("Skipping");
                Bob.hey("\n\r \t").should.be(FINE);
            });
            it("non-question ending with whitespace", {
                pending("Skipping");
                Bob.hey("This is a statement ending with whitespace      ").should.be(WHATEVER);
            });
        });
    }
}