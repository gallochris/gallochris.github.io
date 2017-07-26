---
title: "Sequences of Numbers"
type: learn
slug: /r/sequences-of-numbers
weight: 3
---

# Sequences of Numbers

How to create sequences brought to you by <a href="http://swirlstats.com/students.html" >swirl</a>. 

## Examples

`1:20` - counts upwards to 20 in incremets of 1 creating a sequence of every integer between (and including) 1 and 20.

`pi:10` - creates a vector starting with 3.14 (pi) and increasing in increments of 1. The upper limit of 10 is never reached, since the next number in our sequence would be greater than 10.

`15:1` - counts down from 15 in increments of 1. 

## Sequence function 

`seq()` - similar function as `:`, i.e. `seq(1, 20)` results in same as `1:20` 

The `seq()` function is useful to add increments or length. 

`seq(0, 10, by=0.5)` creates vector of numbers from 0 to 10 incremented by 5: `0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0 7.5  8.0  8.5  9.0  9.5 10.0` 

`seq(5, 10, length=30)` creates sequence of 30 numbers between 5 and 10: `.000000  5.172414  5.344828  5.517241  5.689655  5.862069  6.034483 6.206897  6.379310  6.551724  6.724138  6.896552  7.068966  7.241379 7.413793  7.586207  7.758621  7.931034  8.103448  8.275862  8.448276 8.620690  8.793103  8.965517  9.137931  9.310345  9.482759  9.655172 9.827586 10.000000` 

`length()` - determines the length of a sequence 

`seq_along()` - helps to generate a sequence of integers from 1 to N, where N represents the length of the `my_seq`

`rep()` - replicates a sequence, i.e. `rep(0, times=40)` creates 40 0's 

`rep( times= x)` - another example is `rep(c(0, 1, 2), times = 10)` creates to 10 repetitions of the vector (0, 1, 2)

`rep ( each = x)` the example `rep(c(0, 1, 2), each = 10)` creates vector with 10 zeros, then 10 ones, then 10 twos.





