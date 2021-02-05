package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Create a handshake for a number", {
			it("wink for 1", {
				SecretHandshake.commands(1).should.containExactly(["wink"]);
			});
			xit("double blink for 10", {
				SecretHandshake.commands(2).should.containExactly(["double blink"]);
			});
			xit("close your eyes for 100", {
				SecretHandshake.commands(4).should.containExactly(["close your eyes"]);
			});
			xit("jump for 1000", {
				SecretHandshake.commands(8).should.containExactly(["jump"]);
			});
			xit("combine two actions", {
				SecretHandshake.commands(3).should.containExactly(["wink", "double blink"]);
			});
			xit("reverse two actions", {
				SecretHandshake.commands(19).should.containExactly(["double blink", "wink"]);
			});
			xit("reversing one action gives the same action", {
				SecretHandshake.commands(24).should.containExactly(["jump"]);
			});
			xit("reversing no actions still gives no actions", {
				SecretHandshake.commands(16).should.containExactly([]);
			});
			xit("all possible actions", {
				SecretHandshake.commands(15).should.containExactly(["wink", "double blink", "close your eyes", "jump"]);
			});
			xit("reverse all possible actions", {
				SecretHandshake.commands(31).should.containExactly(["jump", "close your eyes", "double blink", "wink"]);
			});
			xit("do nothing for zero", {
				SecretHandshake.commands(0).should.containExactly([]);
			});
		});
	}
}
