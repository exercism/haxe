package;

import massive.munit.Assert;

class HelloWorldTest {
  private var hello : HelloWorld;

  public function new() : Void {}

  @Test
  public function testHelloWorld() : Void {
    Assert.areEqual("Hello, World!", HelloWorld.hello(""));
  }

  @Test
  public function testHelloBob() : Void {
    Assert.areEqual("Hello, Bob!", HelloWorld.hello("Bob"));
  }

  @Test
  public function testHelloSally() : Void {
    Assert.areEqual("Hello, Sally!", HelloWorld.hello("Sally"));
  }
}
