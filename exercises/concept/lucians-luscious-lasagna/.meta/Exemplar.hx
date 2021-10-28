function expectedMinutesInOven():Int {
  return 40;
}

function remainingMinutesInOven(minutesInOven:Int):Int {
  return expectedMinutesInOven() - minutesInOven;
}

function preparationTimeInMinutes(layers:Int):Int {
  return layers * 2;
}

function totalTimeInMinutes(layers:Int, minutesInOven:Int) {
  return preparationTimeInMinutes(layers) + minutesInOven;
}
