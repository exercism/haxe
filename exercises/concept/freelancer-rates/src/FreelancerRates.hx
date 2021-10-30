/*
 * Calculate the day rate given the rate per hour.
 * 
 * @param ratePerHour
 * @return the rate per day
 */
function dayRate(ratePerHour:Float):Float {
  throw "Please implement the dayRate() function";
}

/**
 * Calculate the monthly rate given the rate per hour and a discount, rounded up
 * 
 * @param ratePerHour
 * @param discount for exmaple 30% is written as 0.3
 * @return monthly rate minus the discount rounded up
 */
function monthRate(ratePerHour:Float, discount:Float):Float {
  throw "Please implement the monthRate() function";
}

/**
 * Calculate the number of days in a budget, rounded down
 * @param budget
 * @param ratePerHour
 * @param discount for exmaple 30% is written as 0.3
 * @return number of days
 */
function daysInBudget(budget:Int, ratePerHour:Float, discount:Float):Float {
  throw "Please implement the daysInBudget() function";
}
