package;

import massive.munit.Assert;

class BobTest {
  public function new() : Void {}

  public static inline var WHATEVER = "Whatever.";
  public static inline var SURE     = "Sure.";
  public static inline var CHILL    = "Whoa, chill out!";
  public static inline var FINE     = "Fine. Be that way!";

  @Test
  public function testStateSomething() : Void {
    Assert.areEqual(WHATEVER, Bob.hey("Tom-ay-to, tom-aaaah-to."));
  }

  @Test
  public function testShouting() : Void {
    Assert.areEqual(CHILL, Bob.hey("WHATCH OUT!"));
  }

  @Test
  public function testAskingAQuestion() : Void {
    Assert.areEqual(SURE,
                    Bob.hey("Does this cryogenic chamber make me look fat?"));
  }

  @Test
  public function testTalkingForcefully() : Void {
    Assert.areEqual(WHATEVER, Bob.hey("Let's go make out behind the gym!"));
  }

  @Test
  public function testUsingAcronymsInRegularSpeech() : Void {
    Assert.areEqual(WHATEVER,
                    Bob.hey("It's OK if you don't want to go to the DMV."));
  }

  @Test
  public function testShoutingQuestion() : Void {
    Assert.areEqual(CHILL, Bob.hey("WHAT THE HELL WERE YOU THINKING?"));
  }

  @Test
  public function testShoutingNumbers() : Void {
    Assert.areEqual(CHILL, Bob.hey("1, 2, 3 GO!"));
  }

  @Test
  public function testOnlyNumbers() : Void {
    Assert.areEqual(WHATEVER, Bob.hey("1, 2, 3"));
  }

  @Test
  public function testNumberQuestion() : Void {
    Assert.areEqual(SURE, Bob.hey("4?"));
  }

  @Test
  public function testShoutingWithSpecial() : Void {
    Assert.areEqual(CHILL,
                    Bob.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"));
  }

  @Test
  public function testShoutingWithoutExclamationMark() : Void {
    Assert.areEqual(CHILL, Bob.hey("I HATE YOU"));
  }

  @Test
  public function testStatementWithQuestionMark() : Void {
    Assert.areEqual(WHATEVER, Bob.hey("Ending with a ? means a question."));
  }

  @Test
  public function testPrattling() : Void {
    Assert.areEqual(SURE, Bob.hey("Wait! Hang on. Are you going to be OK?"));
  }

  @Test
  public function testSilence() : Void {
    Assert.areEqual(FINE, Bob.hey(""));
  }

  @Test
  public function testProlongedSilence() : Void {
    Assert.areEqual(FINE, Bob.hey("   "));
  }
}
