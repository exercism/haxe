using StringTools;

class Clock {
	var hours:Int;
	var minutes:Int;

	public function new(hours:Int, minutes:Int) {
		this.hours = hours;
		this.minutes = minutes;
	}

	public function equals(other:Clock):Bool {
		final clock_a = this.normalize();
		final clock_b = other.normalize();
		final total_minutes_a = (clock_a.hours * 60) + clock_a.minutes;
		final total_minutes_b = (clock_b.hours * 60) + clock_b.minutes;

		return total_minutes_a == total_minutes_b;
	}

	public function add(minutes:Int):Clock {
		return new Clock(this.hours, this.minutes + minutes).normalize();
	}

	public function subtract(minutes:Int):Clock {
		return new Clock(this.hours, this.minutes - minutes).normalize();
	}

	private function normalize():Clock {
		// handle negative time values with rollover
		var minutes = this.minutes;
		var hours = this.hours;
		while (minutes < 0) {
			minutes += 60;
			hours--;
		}
		while (hours < 0)
			hours += 24;

		var _minutes = minutes % 60;
		var minuteRollover = Std.int(minutes / 60);
		var _hours = (hours + minuteRollover) % 24;

		return new Clock(_hours, _minutes);
	}

	public function toString():String {
		function formatTime(time:Int) {
			return '${StringTools.lpad(Std.string(time), "0", 2)}';
		};

		var clock = this.normalize();
		return '${formatTime(clock.hours)}:${formatTime(clock.minutes)}';
	}
}
