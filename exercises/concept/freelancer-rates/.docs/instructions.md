# Instructions
In this exercise you will be writing code to help a freelancer communicate with a project manager by providing a few utility functions to quickly calculate daily and monthly rates, optionally with a given discount.

We first establish a few rules between the freelancer and the project manager:

- The daily rate is 8 times the hourly rate
- A month has 22 billable days.

If the freelancer bills the project manager per month or more, there is a discount applied. This can be handy if the project manager has a fixed budget.

Discounts are modeled as fractional numbers (percentage) between `0.0` (`0%`, no discount) and `0.90` (`90%`, maximum discount).

## 1. Calculate the day rate given an hourly rate
Implement a function to calculate the day rate given an hourly rate:

```haxe
dayRate(89); // 712
```

## 2. Calculate the month rate given an hourly rate and a discount
Implement a function to calculate the month rate and apply a discount given an hourly rate and a discount (as `percentage / 100`; e.g. `20%` is given as `0.2`), and round everything up:

```haxe
monthRate(89, 0.42); // 9086
```

The result **must** be rounded up.

## 3. Calculate the number of workdays given a budget, an hourly rate and a discount
Implement a function to calculate the number of days to work based on the budget and the hourly rate, with the discount applied, and round everything down:

```haxe
daysInBudget(20000, 89, 0.2002); // 35
```

The result **must** be rounded down.