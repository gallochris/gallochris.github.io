---
title: "Missing Values"
type: learn
slug: /r/missing-values
weight: 5
---

# Missing Values

Section 5 of <a href="http://swirlstats.com/students.html" >swirl</a> covers missing values. Important because there might be an underlying cause or pattern for *why* the values are missing.

2 types: 

1.  `NA` represents any value that is missing or not available. 

2. `NaN` means not a number, `0 / 0` and `Inf - Inf` both result in `NaN`

Let's focus on NA for this section. 

## Examples 

`x <- c(4, NA, 5, NA)` and `x * 3` results in `12, NA, 15, NA`

These next couple examples are verbatim for swirl. 

First, `y <- rnorm(1000)` creates a vector containing 1000 draws from a standard normal distribution.

Next, `z <- rep(NA, 1000)` creates a vector containing 1000 NAs. 

And finally, `my_data <- sample(c(y, z), 100)` selects 100 elements at random for these 2000 values (combined y and z). It's random, so you don't know how many NA's will be created or what positions they'll occupy. 

Use the `is.na()` function tells you whether each element of a vector is NA.

For example, `my_na <- is.na(my_data)` and print `my_na` results in a series of TRUE and FALSE values. 

TRUE means a corresponding value is NA. FALSE means it's a random draw of standard deviation or not a NA. 

**Important**: NA isn't a value. It's a placeholder. Be cautious when using logical expressions with NA's because one NA renders an expression incomplete. 

This means `my_data == NA` doesn't result in the same as `is.na()`. It would simply print a bunch of NA's because it's not a value. 

## Find Total Amount of NA's 

In R, TRUE has the value of 1 and FALSE has the value of 0. 

If you take the `sum()` of TRUEs and FALSEs, you get total number of TRUEs. 

For example, if `sum(my_na)` results in `54` it means you have 54 total NA's. 


