package;

using buddy.Should;

import haxe.ds.Option;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Binary Search Tree",
			{
				describe("data",
					{
						it("data is retained",
							{
								var result = BinarySearchTree.data(["4"]);
								var expected =
									{
										data: "4",
										left: None,
										right: None
									};
								BinarySearchTree.equals(result, expected).should.be(true);
							});

						xit("can create complex tree",
							{
								var result = BinarySearchTree.data(["4", "2", "6", "1", "3", "5", "7"]);
								var expected =
									{
										data: "4",
										left: Some(
											{
												data: "2",
												left: Some(
													{
														data: "1",
														left: None,
														right: None
													}),
												right: Some(
													{
														data: "3",
														left: None,
														right: None
													})
											}),
										right: Some(
											{
												data: "6",
												left: Some(
													{
														data: "5",
														left: None,
														right: None
													}),
												right: Some(
													{
														data: "7",
														left: None,
														right: None
													})
											})
									};
								BinarySearchTree.equals(result, expected).should.be(true);
							});
					});

				describe("insert data at proper node",
					{
						xit("smaller number at left node",
							{
								var result = BinarySearchTree.data(["4", "2"]);
								var expected =
									{
										data: "4",
										left: Some(
											{
												data: "2",
												left: None,
												right: None
											}),
										right: None
									};
								BinarySearchTree.equals(result, expected).should.be(true);
							});

						xit("same number at left node",
							{
								var result = BinarySearchTree.data(["4", "4"]);
								var expected =
									{
										data: "4",
										left: Some(
											{
												data: "4",
												left: None,
												right: None
											}),
										right: None
									};
								BinarySearchTree.equals(result, expected).should.be(true);
							});

						xit("greater number at right node",
							{
								var result = BinarySearchTree.data(["4", "5"]);
								var expected =
									{
										data: "4",
										left: None,
										right: Some(
											{
												data: "5",
												left: None,
												right: None
											})
									};
								BinarySearchTree.equals(result, expected).should.be(true);
							});
					});

				describe("can sort data",
					{
						xit("can sort single number",
							{
								BinarySearchTree.sortedData(["2"]).should.containExactly(["2"]);
							});

						xit("can sort if second number is smaller than first",
							{
								BinarySearchTree.sortedData(["2", "1"]).should.containExactly(["1", "2"]);
							});

						xit("can sort if second number is same as first",
							{
								BinarySearchTree.sortedData(["2", "2"]).should.containExactly(["2", "2"]);
							});

						xit("can sort if second number is greater than first",
							{
								BinarySearchTree.sortedData(["2", "3"]).should.containExactly(["2", "3"]);
							});

						xit("can sort complex tree",
							{
								BinarySearchTree.sortedData(["2", "1", "3", "6", "7", "5"]).should.containExactly(["1", "2", "3", "5", "6", "7"]);
							});
					});
			});
	}
}
