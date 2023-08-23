function canFastAttack(knightIsAwake:Bool):Bool {
	return !knightIsAwake;
}

function canSpy(knightIsAwake:Bool, archerIsAwake:Bool, prisonerIsAwake:Bool):Bool {
	return knightIsAwake || archerIsAwake || prisonerIsAwake;
}

function canSignalPrisoner(archerIsAwake:Bool, prisonerIsAwake:Bool):Bool {
	return prisonerIsAwake && !archerIsAwake;
}

function canFreePrisoner(knightIsAwake:Bool, archerIsAwake:Bool, prisonerIsAwake:Bool, petDogIsPresent:Bool):Bool {
	return prisonerIsAwake && !archerIsAwake && !knightIsAwake || petDogIsPresent && !archerIsAwake;
}
