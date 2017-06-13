---
title: "R Basics"
layout: manifesto
permalink: r/basics
---

# Basic Building Blocks of R 

In the first section of <a href="http://swirlstats.com/students.html" >swirl's</a> R package, you learn the basics of R. Here are my notes. 

R is a calculator on steriods. Like any programming langauage, a big advantage is you eliminate repeating the same steps over and over again. Automation. 

## Variables

A variable stores results of basic arithmitec (`+, -, /, *, sqrt(), ^2`). 

Assign a variable by using the less-than sign and a dash. This `<-` creates an *arrow*.

An example is `x <- 3+8`

Print a variable by typing it and clicking enter. 

Type `x` and result is `11`. 

You can also **combine variables** and make them interact with one another. 

`y <- x - 6` which results in `y` = `5`. 

## Vectors

A vector is a small collection of numbers. Numeric vectors are the simplest form of data structure in R. 

The number `1` is a vector in the length of one. 

Create vectors by using `c()` 

This stands for concetanate or combine. 

For example, `z <- c(88, 2.2, 12)` 

Type `z` to print the result `[1] 88 2.2 12` 

**Combining vectors** creates a new vector. 

An example is `c(z, 17, z)` that prints `[1] 88 2.2, 12 17 88 2.2 12`

One or more vectors can **interact with arithmetic** too. 

`z * 2 + 10` results in `[1] 186 14.4 34`

It multiplies each element by 2 and then adds 10. Or what it really is performing is: 

`z * c(2, 2, 2) + c(10, 10, 10)`

If one or more vectors have a different length, R **recycles** the shorter vector until it's the same length of the longer vector. 

As an example, `c(5, 6, 7, 8) + c(10, 0)` results in `[1] 15 16 13 8`


**Important**: If the length of a short vector doesn't divide evenly into the length of the longer vector, R 'recycles' the vector with a **warning**. 

`c(5, 6, 7, 8) + c(10, 0, 1)` results in `[1] 15 6 8 8`

In `c(5, 6, 7, 8) + c(10, 0, 1)` :
  longer object length is not a multiple of shorter object length

## Tricks and Shortcuts 


* Use the **up arrow** on your keyboard to cycle through previous commands and make any changes. 
* Type the first few letters of a variable name and click **tab** to locate variable to auto-complete it. 
* Bonus: Ctrl+L clears the console. 




