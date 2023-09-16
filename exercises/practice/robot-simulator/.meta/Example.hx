class Robot
{
	public var x:Int;
	public var y:Int;
	public var direction:String;

	public function new(x:Int, y:Int, direction:String)
	{
		this.x = x;
		this.y = y;
		this.direction = direction;
	}

	public function move(instructions:String):Robot
	{
		for (i in instructions.split(""))
			switch (i)
			{
				case "R":
					this.turn(true);
				case "L":
					this.turn(false);
				case "A":
					this.advance();
			}

		return this;
	}

	private function turn(clockwise:Bool)
	{
		this.direction = switch (this.direction)
		{
			case "north": clockwise ? "east" : "west";
			case "east": clockwise ? "south" : "north";
			case "south": clockwise ? "west" : "east";
			case "west": clockwise ? "north" : "south";
			case _: throw "invalid direction";
		};
	}

	private function advance()
	{
		switch (this.direction)
		{
			case "north":
				this.y++;
			case "east":
				this.x++;
			case "south":
				this.y--;
			case "west":
				this.x--;
			case _:
				throw "invalid direction";
		};
	}

	public function equals(other:Robot):Bool
	{
		return this.x == other.x && this.y == other.y && this.direction == other.direction;
	}
}
