package;

using buddy.Should;
using SaddlePoints;

//Created by testgen.hx
class Test extends buddy.SingleSuite {
    public function new() {
		function assertEqual(a:Array<Point>, b:Array<Point>)
			for (point in 0...a.length) {
				a[point].column.should.be(b[point].column);
				a[point].row.should.be(b[point].row);
			}

        describe("Saddle Points", {
            it("Can identify single saddle point", {
                var result = SaddlePoints.saddlePoints([
					[ 9, 8, 7 ],
					[ 5, 3, 2 ],
					[ 6, 6, 7 ]
				]);
				var expected = [
					{ column: 1, row: 2 }
				];
				assertEqual(expected, result);
            });
            xit("Can identify that empty matrix has no saddle points", {
				var result = SaddlePoints.saddlePoints([ [ ] ]);
				var expected = [];
				assertEqual(expected, result);
            });
            xit("Can identify lack of saddle points when there are none", {
				var result = SaddlePoints.saddlePoints([
					[ 1, 2, 3 ],
					[ 3, 1, 2 ],
					[ 2, 3, 1 ]
				]);
				var expected = [];
				assertEqual(expected, result);
            });
            xit("Can identify multiple saddle points in a column", {
				var result = SaddlePoints.saddlePoints([
					[ 4, 5, 4 ],
					[ 3, 5, 5 ],
					[ 1, 5, 4 ]
				]);
				var expected = [
					{ column: 2, row: 1 },
					{ column: 2, row: 2 },
					{ column: 2, row: 3 }
				];
				assertEqual(expected, result);
            });
            xit("Can identify multiple saddle points in a row", {
				var result = SaddlePoints.saddlePoints([
					[ 6, 7, 8 ],
					[ 5, 5, 5 ],
					[ 7, 5, 6 ]
				]);
				var expected = [
					{ column: 1, row: 2 },
					{ column: 2, row: 2 },
					{ column: 3, row: 2 }
				];
				assertEqual(expected, result);
            });
            xit("Can identify saddle point in bottom right corner", {
				var result = SaddlePoints.saddlePoints([
					[ 8, 7, 9 ],
					[ 6, 7, 6 ],
					[ 3, 2, 5 ]
				]);
				var expected = [
					{ column: 3, row: 3 }
				];
				assertEqual(expected, result);
            });
            xit("Can identify saddle points in a non square matrix", {
				var result = SaddlePoints.saddlePoints([
					[ 3, 1, 3 ],
					[ 3, 2, 4 ]
				]);
				var expected = [
					{ column: 1, row: 1 },
					{ column: 3, row: 1 }
				];
				assertEqual(expected, result);
            });
            xit("Can identify that saddle points in a single column matrix are those with the minimum value", {
				var result = SaddlePoints.saddlePoints([
					[ 2 ],
					[ 1 ],
					[ 4 ],
					[ 1 ]
				]);
				var expected = [
					{ column: 1, row: 2 },
					{ column: 1, row: 4 }
				];
				assertEqual(expected, result);
            });
            xit("Can identify that saddle points in a single row matrix are those with the maximum value", {
				var result = SaddlePoints.saddlePoints([
					[ 2, 5, 3, 5 ]
				]);
				var expected = [
					{ column: 2, row: 1 },
					{ column: 4, row: 1 }
				];
				assertEqual(expected, result);
            });
        });
    }
}
