---
title: "Logic"
layout: learn
permalink: /learn/r/logic
---

# Logic

This section from <a href="http://swirlstats.com/students.html" >Swirl</a> is all about logic. 

R has two logical or boolean values:  

1. TRUE

2. FALSE  

In order to create a logical expression, you need **logical operators.** Examples are `+`, `-`, `*`, `==`, `/`, `<`, `<=`, `>`, `>=`, and `!=`. 

## Examples 

`TRUE == TRUE` results in `TRUE`

Logical expressions also use parentheses, i.e. `(FALSE == TRUE) == FALSE` results in `FALSE` 

Not equals operator is `!=`, i.e. `TRUE != FALSE` results in `TRUE` `

THE **NOT** operator negates a boolean expression, i.e. `!5 == 7` results in `TRUE` 

In summary . . . 

* `==` - shows whether two boolean values or numbers are **equal** 

* `!=` - shows whether two boolean values or numbers are **unequal**

* `!` - NOT operate negates logical expressions, `TRUE` becomes `FALSE` and vice versa


## AND Operators

1. `&` - if the right and left operands of AND are both `TRUE` the entire expression is `TRUE`, otherwise it is `FALSE`, i.e. `TRUE & TRUE` evaluates to `TRUE`

2. `&&` - only evaluates the **first member** of a vector, i.e. `TRUE && c(TRUE, FALSE, FALSE)` results in `TRUE` 

## OR Operators

1. `|` - evaluates OR across an entire vector, i.e. `TRUE | c(TRUE, FALSE, FALSE)` results in `TRUE TRUE TRUE` 

2. `||` - only evaluates the **first member** of a vector, i.e. `TRUE || c(TRUE, FALSE, FALSE)` results in `TRUE` 

## Order of Operations

**Important**: logical expressions follow an order of operations. All **AND operators are evaluated before OR operators**. 

For example, `5 > 8 || 6 != 8 && 4 > 3.9` results in `TRUE` 

But why? 

The left and right operands of the AND operator are evaluated **first**. 

* 6 is not eqaul to 8 and 4 is greater than 3.9. This results in `TRUE`

* Now look at the left operand of the OR operator, 5 is not greater than 8, which results in `FALSE` 

* The final results is `FALSE || TRUE`, the right operand is true, so the entire expression results in `TRUE` 

## Functions for Expressions

`isTRUE()` - takes the argument, if arugment evaluates to `TRUE` the result is `TRUE`, and if `FALSE`, the result is `FALSE`  

For example, `isTRUE(6 > 4)` evaluates to `TRUE` 

`identical()` - returns `TRUE` if the objects passed are identical and `FALSE` if they're not, i.e. `identical('joke', 'joke')` evaluates to `TRUE` 

`xor()` - exclusive OR, if one argument evaluates to `TRUE` and another to `FALSE`, then the function will return `TRUE`, if not it returns `FALSE` 

For example, `xor(5 == 6, !FALSE)` evaluates to `TRUE` 

Why is that? 

First, `5 == 6` evaluates to `FALSE`. 

Next, `!FALSE` evaluates to `TRUE`. 

So one argument is `FALSE` and the other is `TRUE`, so it evaluates to `TRUE`. 

This example, `xor(5 == 5, !FALSE)` evaluates to `FALSE` because both arguments are `TRUE`, so `xor(TRUE, TRUE)` results in `FALSE`. 

## Using Vectors with Logical Expressions

Let's say you have a vector `ints <- sample(10)` for a sample of 10 integers from 1 to 10 without any replacement. 

Enter `ints > 5` returns `FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE` to show which integers are greater than 5. 

Use the `which()` function to determine which parts of the vector are `TRUE`, i.e. ` which(c(TRUE, FALSE, TRUE))` returns `c(1, 3)`. 

Or `which(ints > 7)` finds the parts of the vector greater than 7. 

The `any()` function returns `TRUE` if one or more of the elements in the logical vector is `TRUE`, i.e. `any(ints < 0)` shows `FALSE` because none of the elements are less than 0. 

And the `all()` function evaluates to `TRUE` if every element in the logical vector is `TRUE`, i.e. `all(ints > 0)` evaluates to `TRUE` because all elements are greater than 0. 



