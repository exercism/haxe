import AnnalynsInfiltration;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Testing quest logic", {
			it("cannot execute fast attack if knight is awake", {
				var knightIsAwake = true;
				canFastAttack(knightIsAwake).should.be(false);
			});

			xit("can execute fast attack if knight is sleeping", {
				var knightIsAwake = false;
				canFastAttack(knightIsAwake).should.be(true);
			});

			xit("cannot spy if everyone is sleeping", {
				var knightIsAwake = false;
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(false);
			});

			xit("can spy if everyone but knight is sleeping", {
				var knightIsAwake = true;
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can spy if everyone but archer is sleeping", {
				var knightIsAwake = false;
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can spy if everyone but prisoner is sleeping", {
				var knightIsAwake = false;
				var archerIsAwake = false;

				var prisonerIsAwake = true;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can spy if only knight is sleeping", {
				var knightIsAwake = false;
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can spy if only archer is sleeping", {
				var knightIsAwake = true;
				var archerIsAwake = false;
				var prisonerIsAwake = true;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can spy if only prisoner is sleeping", {
				var knightIsAwake = true;
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can spy if everyone is awake", {
				var knightIsAwake = true;
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("can signal prisoner ifarcher is sleeping and prisoner is awake", {
				var archerIsAwake = false;
				var prisonerIsAwake = true;
				canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(true);
			});

			xit("cannot signal prisoner ifarcher is awake and prisoner is sleeping", {
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(false);
			});

			xit("cannot signal prisoner ifarcher and prisoner are both sleeping", {
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(false);
			});

			xit("cannot signal prisoner ifarcher and prisoner are both awake", {
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(false);
			});

			xit("cannot release prisoner if everyone is awake and pet dog is present", {
				var knightIsAwake = true;
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});

			xit("cannot release prisoner if everyone is awake and pet dog is absent", {
				var knightIsAwake = true;
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});

			xit("can release prisoner if everyone is asleep and pet dog is present", {
				var knightIsAwake = false;
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
			});

			xit("cannot release prisoner if everyone is asleep and pet dog is absent", {
				var knightIsAwake = false;
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});

			xit("can release prisoner if only prisoner is awake and pet dog is present", {
				var knightIsAwake = false;
				var archerIsAwake = false;
				var prisonerIsAwake = true;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
			});

			xit("can release prisoner if only prisoner is awake and pet dog is absent", {
				var knightIsAwake = false;
				var archerIsAwake = false;
				var prisonerIsAwake = true;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
			});

			xit("cannot release prisoner if only archer is awake and pet dog is present", {
				var knightIsAwake = false;
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});

			xit("cannot release prisoner if only archer is awake and pet dog is absent", {
				var knightIsAwake = false;
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
			xit("can release prisoner if only knight is awake and pet dog is present", {
				var knightIsAwake = true;
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
			});
			xit("cannot release prisoner if only knight is awake and pet dog is absent", {
				var knightIsAwake = true;
				var archerIsAwake = false;
				var prisonerIsAwake = false;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
			xit("cannot release prisoner if only knight is asleep and pet dog is present", {
				var knightIsAwake = false;
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
			xit("cannot release prisoner if only knight is asleep and pet dog is absent", {
				var knightIsAwake = false;
				var archerIsAwake = true;
				var prisonerIsAwake = true;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
			xit("can release prisoner if only archer is asleep and pet dog is present", {
				var knightIsAwake = true;
				var archerIsAwake = false;
				var prisonerIsAwake = true;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
			});
			xit("cannot release prisoner if only archer is asleep and pet dog is absent", {
				var knightIsAwake = true;
				var archerIsAwake = false;
				var prisonerIsAwake = true;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
			xit("cannot release prisoner if only prisoner is asleep and pet dog is present", {
				var knightIsAwake = true;
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				var petDogIsPresent = true;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
			xit("cannot release prisoner if only prisoner is asleep and pet dog is absent", {
				var knightIsAwake = true;
				var archerIsAwake = true;
				var prisonerIsAwake = false;
				var petDogIsPresent = false;
				canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
			});
		});
	}
}
