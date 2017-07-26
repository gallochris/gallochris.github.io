---
title: "Subsetting Vectors"
type: learn
slug: /r/subsetting-vectors
weight: 6
---

# Subsetting Vectors

This section of <a href="http://swirlstats.com/students.html" >swirl</a> introduces how to extract elements from a vector based on certain conditions. 

You may not need a full set of data or the full vector. Maybe you only want the first 10 elements, or maybe only elements that aren't NA, or maybe only ones that correspond to a specific variable. 

## How to Select a Subset

Use an **index vector** in square brackets immediately following the name of the vector. 

For example, `x[1:10]` shows the first 10 elements of x. 

**4 types of index vectors** 

1. logical vectors

2. vectors of positive integers

3. vectors of negative integers

4. vectors of character strings

## Logical Vectors 

Common example is to retrieve all elements of a vector that are **not** NA or no missing values. 

This function `x[is.na(x)]` results in all TRUEs or all the NAs in the vector x. 

How do you create a vector of all the non-NAs or FALSEs? 

`y <- x[!is.na(x)]` results in all the non-NAs, so 0 missing values. 

## Vectors of Positive Integers

Use the expression `> 0` to find all the positive integers in a vector. 

For example, `y[y > 0]` results in all the positive integers of y or all the positive elements of our original vector x. 

**Important**: You can't start with `x[x > 0]` because NA > 0 results in NA. Remember, NA is **not a value**, it's a placeholder. Need to remove the NA's first. 

**Shortcut** is using logical expressions `x[!is.na(x) & x > 0]` resulting in only values of x that are both non-missing *and* greater than zero.

### Important Things to Remember

R uses **one-based indexing** meaning the first element of a vector is considered element 1. Not zero-based indexing like many other programming languages. 

For example, `x[c(3, 5, 7)]` subsets the 3rd, 5th, and 7th elements of x.

Remember to stick to the length of your index. If x only has 40 elements, you can't subset `x[0]` or `x[90]`. The result is not useful. 

## Vectors of Negative Integers

Comes in handy when you want all elements of x **except the 2nd and 10th** elements. 

For example `x[c(-2, -10)]` returns all elements **except** for the 2nd and 10 elements. 

**Use the shorthand** `x[-c(2, 10)]` to return the same result (only type - once, not twice). 

## Vectors of Character Strings

These vectors include **named elements**. 

For example, `vect <- c(abc = 10, def = NA, ghi = 5)` results in . . . 

` abc  def   ghi `
 ` 10    NA   5 `

The `names()` function returns the names of the vector, i.e. `names(vect)` returns `"abc" "def" "ghi"`. 

OR assign the names to an unnamed vector after, for example . . . 

`vect2 <- c(10, NA, 5)` and `names(vect2) <- c("abc", "def", "ghi")`

And you can check if these vectors are identical using the `identical()` function. 

`identical(vect, vect2)` results in `TRUE` 

Use `vect["def"]` to subset the second element of the vector, results in `NA`. 


