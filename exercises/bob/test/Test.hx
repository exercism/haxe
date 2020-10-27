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
                Bob.hey("WATCH OUT!").should.be(CHILL);
            });
            it("shouting gibberish", {
                Bob.hey("FCECDFCAAB").should.be(CHILL);
            });
            it("asking a question", {
                Bob.hey("Does this cryogenic chamber make me look fat?").should.be(SURE);
            });
            it("asking a numeric question", {
                Bob.hey("You are, what, like 15?").should.be(SURE);
            });
            it("asking gibberish", {
                Bob.hey("fffbbcbeab?").should.be(SURE);
            });
            it("talking forcefully", {
                Bob.hey("Hi there!").should.be(WHATEVER);
            });
            it("using acronyms in regular speech", {
                Bob.hey("It's OK if you don't want to go work for NASA.").should.be(WHATEVER);
            });
            it("forceful question", {
                Bob.hey("WHAT'S GOING ON?").should.be(CALM);
            });
            it("shouting numbers", {
                Bob.hey("1, 2, 3 GO!").should.be(CHILL);
            });
            it("no letters", {
                Bob.hey("1, 2, 3").should.be(WHATEVER);
            });
            it("question with no letters", {
                Bob.hey("4?").should.be(SURE);
            });
            it("shouting with special characters", {
                Bob.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!").should.be(CHILL);
            });
            it("shouting with no exclamation mark", {
                Bob.hey("I HATE THE DENTIST").should.be(CHILL);
            });
            it("statement containing question mark", {
                Bob.hey("Ending with ? means a question.").should.be(WHATEVER);
            });
            it("non-letters with question", {
                Bob.hey(":) ?").should.be(SURE);
            });
            it("prattling on", {
                Bob.hey("Wait! Hang on. Are you going to be OK?").should.be(SURE);
            });
            it("silence", {
                Bob.hey("").should.be(FINE);
            });
            it("prolonged silence", {
                Bob.hey("          ").should.be(FINE);
            });
            it("alternate silence", {
                Bob.hey("\t\t\t\t\t\t\t\t\t\t").should.be(FINE);
            });
            it("multiple line question", {
                Bob.hey("\nDoes this cryogenic chamber make me look fat?\nNo.").should.be(WHATEVER);
            });
            it("starting with whitespace", {
                Bob.hey("         hmmmmmmm...").should.be(WHATEVER);
            });
            it("ending with whitespace", {
                Bob.hey("Okay if like my  spacebar  quite a bit?   ").should.be(SURE);
            });
            it("other whitespace", {
                Bob.hey("\n\r \t").should.be(FINE);
            });
            it("non-question ending with whitespace", {
                Bob.hey("This is a statement ending with whitespace      ").should.be(WHATEVER);
            });
        });
    }
}