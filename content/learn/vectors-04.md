---
title: "Types of Vectors"
type: learn
slug: /r/vectors
weight: 4
---

# Types of Vectors

Types of vectors covered in section 4 of <a href="http://swirlstats.com/students.html" >swirl</a>. 

1. atomic vectors: exactly one data type

2. lists: multiple data types

## Types of Atomic Vectors

- numeric
- logical
- character
- integer
- complex

## Logical Vectors 

Contain the values TRUE, FALSE, and NA (not available).

For example, `num_vect <- c(0.4, 45, -5, 77)` and `tf <- num_vect < 1` results in a vector of 4 logical values: `TRUE FALSE TRUE FALSE`

**Logical operators**: `<`, `>=`, `>`, `<=`, `==` (exact equality), and `!=` (for inequality).

If you have 2 logical expressions, A and B, use R to see if: 

1. at least 1 is TRUE with `A **|** B` (**logical or**, known as an union)

2. or both are TRUE with `A **&** B` (**logical and** known as an intersection)

3. `!A` is the negation of `A`, TRUE when `A is FALSE` and vice versa 

In short . . . 

* `|` means at least one is `TRUE`. 
* `&` means both are `TRUE` 

## 3 Examples

1. `(3 > 5) & (4 == 4)` results in `FALSE`

2. `(TRUE == TRUE) | (TRUE == FALSE)` results in `TRUE` 

3. `((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)` results in `TRUE`

## Character Vectors 

Double-quotes are used to distinguish character vectors. 

For example, `my_char <- c("My", "name", "is")` results in `"My" "name" "is"`

Use the `paste()` function to join together the elements in a continuous character string. 

`paste(my_char, collapse = " ")` results in `"My name is"` 

Use the `collapse` argument to  join together the elements and separate them with single spaces.

The `paste()` can also be used to join the elements of multiple character vectors.

For example, `paste("Hello", "world!", sep = " ")` results in `"Hell world!"`. It separates the joined elements with a single space.

**Remember**: Vectors recycle when they are different lengths. 

For example, `paste(LETTERS, 1:4, sep = "-")` results in R recycling or repeating 1:4 until it matches the length of LETTERS (the alphabet) because the character vector LETTERS is longer than the numeric vector 1:4. 
