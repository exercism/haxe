package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Largest Series Product", {
			it("finds the largest product if span equals length", {
				LargestSeriesProduct.largestProduct(2, "29").should.be(18);
			});

			xit("can find the largest product of 2 with numbers in order", {
				LargestSeriesProduct.largestProduct(2, "0123456789").should.be(72);
			});

			xit("can find the largest product of 2", {
				LargestSeriesProduct.largestProduct(2, "576802143").should.be(48);
			});

			xit("can find the largest product of 3 with numbers in order", {
				LargestSeriesProduct.largestProduct(3, "0123456789").should.be(504);
			});

			xit("can find the largest product of 3", {
				LargestSeriesProduct.largestProduct(3, "1027839564").should.be(270);
			});

			xit("can find the largest product of 5 with numbers in order", {
				LargestSeriesProduct.largestProduct(5, "0123456789").should.be(15120);
			});

			xit("can get the largest product of a big number", {
				var digits = "73167176531330624919225119674426574742355349194934";

				LargestSeriesProduct.largestProduct(6, digits).should.be(23520);
			});

			xit("reports zero if the only digits are zero", {
				LargestSeriesProduct.largestProduct(2, "0000").should.be(0);
			});

			xit("reports zero if all spans include zero", {
				LargestSeriesProduct.largestProduct(3, "99099").should.be(0);
			});

			xit("rejects span longer than string length", {
				LargestSeriesProduct.largestProduct.bind(4, "123").should.throwValue("span must be smaller than string length");
			});

			xit("reports 1 for empty string and empty product (0 span)", {
				LargestSeriesProduct.largestProduct(0, "").should.be(1);
			});

			xit("reports 1 for nonempty string and empty product (0 span)", {
				LargestSeriesProduct.largestProduct(0, "123").should.be(1);
			});

			xit("rejects empty string and nonzero span", {
				LargestSeriesProduct.largestProduct.bind(1, "").should.throwValue("span must be smaller than string length");
			});

			xit("rejects invalid character in digits", {
				LargestSeriesProduct.largestProduct.bind(2, "1234a5").should.throwValue("digits input must only contain digits");
			});

			xit("rejects negative span", {
				LargestSeriesProduct.largestProduct.bind(-1, "12345").should.throwValue("span must not be negative");
			});
		});
	}
}
