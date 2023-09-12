import LogLevels;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Testing LogLevels", {
			it("error message()", {
				message("[ERROR]: Stack overflow").should.be("Stack overflow");
			});

			xit("warning message()", {
				message("[WARNING]: Disk almost full").should.be("Disk almost full");
			});

			xit("info message()", {
				message("[INFO]: File moved").should.be("File moved");
			});

			xit("message with leading and trailing white space()", {
				message("[WARNING]:   \tTimezone not set  \r\n").should.be("Timezone not set");
			});

			xit("error log level()", {
				logLevel("[ERROR]: Disk full").should.be("error");
			});

			xit("warning log level()", {
				logLevel("[WARNING]: Unsafe password").should.be("warning");
			});

			xit("info log level()", {
				logLevel("[INFO]: Timezone changed").should.be("info");
			});

			xit("error reformat()", {
				reformat("[ERROR]: Segmentation fault").should.be("Segmentation fault (error)");
			});

			xit("warning reformat()", {
				reformat("[WARNING]: Decreased performance").should.be("Decreased performance (warning)");
			});

			xit("info reformat()", {
				reformat("[INFO]: Disk defragmented").should.be("Disk defragmented (info)");
			});

			xit("reformat with leading and trailing white space()", {
				reformat("[ERROR]: \t Corrupt disk\t \t \r\n").should.be("Corrupt disk (error)");
			});
		});
	}
}
