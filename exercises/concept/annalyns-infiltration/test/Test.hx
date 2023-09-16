import AnnalynsInfiltration;

using buddy.Should;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("annalyns-infiltration",
			{
				it("cannot execute fast attack if knight is awake",
					{
						final knightIsAwake = true;

						canFastAttack(knightIsAwake).should.be(false);
					});

				xit("can execute fast attack if knight is sleeping",
					{
						final knightIsAwake = false;

						canFastAttack(knightIsAwake).should.be(true);
					});

				xit("cannot spy if everyone is sleeping",
					{
						final knightIsAwake = false;
						final archerIsAwake = false;
						final prisonerIsAwake = false;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(false);
					});

				xit("can spy if everyone but knight is sleeping",
					{
						final knightIsAwake = true;
						final archerIsAwake = false;
						final prisonerIsAwake = false;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can spy if everyone but archer is sleeping",
					{
						final knightIsAwake = false;
						final archerIsAwake = true;
						final prisonerIsAwake = false;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can spy if everyone but prisoner is sleeping",
					{
						final knightIsAwake = false;
						final archerIsAwake = false;
						final prisonerIsAwake = true;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can spy if only knight is sleeping",
					{
						final knightIsAwake = false;
						final archerIsAwake = true;
						final prisonerIsAwake = true;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can spy if only archer is sleeping",
					{
						final knightIsAwake = true;
						final archerIsAwake = false;
						final prisonerIsAwake = true;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can spy if only prisoner is sleeping",
					{
						final knightIsAwake = true;
						final archerIsAwake = true;
						final prisonerIsAwake = false;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can spy if everyone is awake",
					{
						final knightIsAwake = true;
						final archerIsAwake = true;
						final prisonerIsAwake = true;

						canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("can signal prisoner if archer is sleeping and prisoner is awake",
					{
						final archerIsAwake = false;
						final prisonerIsAwake = true;

						canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(true);
					});

				xit("cannot signal prisoner if archer is awake and prisoner is sleeping",
					{
						final archerIsAwake = true;
						final prisonerIsAwake = false;

						canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(false);
					});

				xit("cannot signal prisoner if archer and prisoner are both sleeping",
					{
						final archerIsAwake = false;
						final prisonerIsAwake = false;

						canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(false);
					});

				xit("cannot signal prisoner if archer and prisoner are both awake",
					{
						final archerIsAwake = true;
						final prisonerIsAwake = true;

						canSignalPrisoner(archerIsAwake, prisonerIsAwake).should.be(false);
					});

				xit("cannot release prisoner if everyone is awake and pet dog is present",
					{
						final knightIsAwake = true;
						final archerIsAwake = true;
						final prisonerIsAwake = true;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("cannot release prisoner if everyone is awake and pet dog is absent",
					{
						final knightIsAwake = true;
						final archerIsAwake = true;
						final prisonerIsAwake = true;
						final petDogIsPresent = false;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("can release prisoner if everyone is asleep and pet dog is present",
					{
						final knightIsAwake = false;
						final archerIsAwake = false;
						final prisonerIsAwake = false;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
					});

				xit("cannot release prisoner if everyone is asleep and pet dog is absent",
					{
						final knightIsAwake = false;
						final archerIsAwake = false;
						final prisonerIsAwake = false;
						final petDogIsPresent = false;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("can release prisoner if only prisoner is awake and pet dog is present",
					{
						final knightIsAwake = false;
						final archerIsAwake = false;
						final prisonerIsAwake = true;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
					});

				xit("can release prisoner if only prisoner is awake and pet dog is absent",
					{
						final knightIsAwake = false;
						final archerIsAwake = false;
						final prisonerIsAwake = true;
						final petDogIsPresent = false;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
					});

				xit("cannot release prisoner if only archer is awake and pet dog is present",
					{
						final knightIsAwake = false;
						final archerIsAwake = true;
						final prisonerIsAwake = false;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("cannot release prisoner if only archer is awake and pet dog is absent",
					{
						final knightIsAwake = false;
						final archerIsAwake = true;
						final prisonerIsAwake = false;
						final petDogIsPresent = false;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("can release prisoner if only knight is awake and pet dog is present",
					{
						final knightIsAwake = true;
						final archerIsAwake = false;
						final prisonerIsAwake = false;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
					});

				xit("cannot release prisoner if only knight is awake and pet dog is absent",
					{
						final knightIsAwake = true;
						final archerIsAwake = false;
						final prisonerIsAwake = false;
						final petDogIsPresent = false;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("cannot release prisoner if only knight is asleep and pet dog is present",
					{
						final knightIsAwake = false;
						final archerIsAwake = true;
						final prisonerIsAwake = true;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("cannot release prisoner if only knight is asleep and pet dog is absent",
					{
						final knightIsAwake = false;
						final archerIsAwake = true;
						final prisonerIsAwake = true;
						final petDogIsPresent = false;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("can release prisoner if only archer is asleep and pet dog is present",
					{
						final knightIsAwake = true;
						final archerIsAwake = false;
						final prisonerIsAwake = true;
						final petDogIsPresent = true;

						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(true);
					});

				xit("cannot release prisoner if only archer is asleep and pet dog is absent",
					{
						final knightIsAwake = true;
						final archerIsAwake = false;
						final prisonerIsAwake = true;
						final petDogIsPresent = false;
						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("cannot release prisoner if only prisoner is asleep and pet dog is present",
					{
						final knightIsAwake = true;
						final archerIsAwake = true;
						final prisonerIsAwake = false;
						final petDogIsPresent = true;
						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});

				xit("cannot release prisoner if only prisoner is asleep and pet dog is absent",
					{
						final knightIsAwake = true;
						final archerIsAwake = true;
						final prisonerIsAwake = false;
						final petDogIsPresent = false;
						canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent).should.be(false);
					});
			});
	}
}
