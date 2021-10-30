final HOURS_PER_DAY = 8;
final BILLABLE_DAYS = 22;

function dayRate(hourlyRate:Float):Float {
  return hourlyRate * HOURS_PER_DAY;
}

function monthRate(hourlyRate:Float, discount:Float):Float {
  var monthlyRate = dayRate(hourlyRate) * BILLABLE_DAYS;
  return Math.ceil(monthlyRate - (discount * monthlyRate));
}

function daysInBudget(budget:Int, hourlyRate:Float, discount:Float):Float {
  return Math.floor(budget / (dayRate(hourlyRate) - (discount * dayRate(hourlyRate))));
}
