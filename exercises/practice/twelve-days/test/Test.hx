package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("verse", {
			it("first day a partridge in a pear tree", {
				TwelveDays.recite(1, 1).should.containExactly([
					"On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
				]);
			});
			xit("second day two turtle doves", {
				TwelveDays.recite(2, 2).should.containExactly([
					"On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("third day three french hens", {
				TwelveDays.recite(3, 3).should.containExactly([
					"On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("fourth day four calling birds", {
				TwelveDays.recite(4, 4).should.containExactly([
					"On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("fifth day five gold rings", {
				TwelveDays.recite(5, 5).should.containExactly([
					"On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("sixth day six geese-a-laying", {
				TwelveDays.recite(6, 6).should.containExactly([
					"On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("seventh day seven swans-a-swimming", {
				TwelveDays.recite(7, 7).should.containExactly([
					"On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("eighth day eight maids-a-milking", {
				TwelveDays.recite(8, 8).should.containExactly([
					"On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("ninth day nine ladies dancing", {
				TwelveDays.recite(9, 9).should.containExactly([
					"On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("tenth day ten lords-a-leaping", {
				TwelveDays.recite(10, 10).should.containExactly([
					"On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("eleventh day eleven pipers piping", {
				TwelveDays.recite(11, 11).should.containExactly([
					"On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("twelfth day twelve drummers drumming", {
				TwelveDays.recite(12, 12).should.containExactly([
					"On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
		});
		describe("lyrics", {
			it("recites first three verses of the song", {
				TwelveDays.recite(1, 3).should.containExactly([
					"On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.",
					"On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("recites three verses from the middle of the song", {
				TwelveDays.recite(4, 6).should.containExactly([
					"On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
			xit("recites the whole song", {
				TwelveDays.recite(1, 12).should.containExactly([
					"On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.",
					"On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
					"On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
				]);
			});
		});
	}
}
