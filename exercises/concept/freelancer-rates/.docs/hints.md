# Hints

## 1. Calculate the day rate given an hourly rate

- Use the arithmetic operators.

## 2. Calculate the month rate given an hourly rate and a discount

- The discount is found by multiplying it to the full price.
- Subtract the discount from the full price.
- Use the built in `Math` object to round down (`Math.floor()`), or round up (`Math.ceil()`).

## 3. Calculate the number of workdays given a budget, an hourly rate and a discount

- First determine the dayRate, given the discount, then calculate the number of days, and finally round that number down.
