package;

import massive.munit.Assert;

class HelloWorldTest {
  private var hello : HelloWorld;

  public function new() : Void {}

  @Test
  public function testHelloWorld() : Void {
    Assert.areEqual("Hello, World!", HelloWorld.hello());
  }
}
