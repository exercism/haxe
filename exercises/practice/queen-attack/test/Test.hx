package;

import QueenAttack.CreateResult;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Test creation of Queens with valid and invalid positions", {
			it("queen with a valid position", {
				QueenAttack.create({
					column: 2,
					row: 2
				}).should.equal(CreateResult.Success);
			});
			xit("queen must have positive row", {
				QueenAttack.create({
					column: 2,
					row: -2
				}).should.equal(Fail("row not positive"));
			});
			xit("queen must have row on board", {
				QueenAttack.create({
					column: 4,
					row: 8
				}).should.equal(Fail("row not on board"));
			});
			xit("queen must have positive column", {
				QueenAttack.create({
					column: -2,
					row: 2
				}).should.equal(Fail("column not positive"));
			});
			xit("queen must have column on board", {
				QueenAttack.create({
					column: 8,
					row: 4
				}).should.equal(Fail("column not on board"));
			});
		});
		describe("Test the ability of one queen to attack another", {
			it("cannot attack", {
				QueenAttack.canAttack({
					column: 4,
					row: 2
				}, {
					column: 6,
					row: 6
				}).should.be(false);
			});
			xit("can attack on same row", {
				QueenAttack.canAttack({
					column: 4,
					row: 2
				}, {
					column: 6,
					row: 2
				}).should.be(true);
			});
			xit("can attack on same column", {
				QueenAttack.canAttack({
					column: 5,
					row: 4
				}, {
					column: 5,
					row: 2
				}).should.be(true);
			});
			xit("can attack on first diagonal", {
				QueenAttack.canAttack({
					column: 2,
					row: 2
				}, {
					column: 4,
					row: 0
				}).should.be(true);
			});
			xit("can attack on second diagonal", {
				QueenAttack.canAttack({
					column: 2,
					row: 2
				}, {
					column: 1,
					row: 3
				}).should.be(true);
			});
			xit("can attack on third diagonal", {
				QueenAttack.canAttack({
					column: 2,
					row: 2
				}, {
					column: 1,
					row: 1
				}).should.be(true);
			});
			xit("can attack on fourth diagonal", {
				QueenAttack.canAttack({
					column: 7,
					row: 1
				}, {
					column: 6,
					row: 0
				}).should.be(true);
			});
		});
	}
}
