package;

import massive.munit.Assert;

class LeapTest 
{
	private var isLeap : Leap;

	public function new() {}
	
	
	@Test
	public function test2015():Void
	{
		Assert.isFalse(Leap.isLeap(2015));
	}
	
	@Test
	public function test2016():Void
	{
		Assert.isTrue(Leap.isLeap(2016));
	}
	
	@Test
	public function test1900():Void
	{
		Assert.isFalse(Leap.isLeap(1900));
	}
	
	@Test
	public function test2000():Void
	{
		Assert.isTrue(Leap.isLeap(2000));
	}
	
	// Feel free to uncomment the following tests to check some more examples
	/*@Test
	public function testAdditional():Void
	{
		Assert.isFalse(Leap.isLeap(1978));
		Assert.isTrue(Leap.isLeap(1992));
		Assert.isFalse(Leap.isLeap(2100));
		Assert.isTrue(Leap.isLeap(2400));
	}*/
	
}