---
title: "Functions"
layout: learn
permalink: /learn/r/functions
---

# Functions

<a href="http://swirlstats.com/students.html" >Swirl</a> covers different types of functions that you'll use over and over again.  

## How to Assign a Function 

function_name <- function(arg1, arg2){
#	# Manipulate arguments in some way
#	# Return a value
# }
#

# The "variable name" you assign will become the name of your function. arg1 and
# arg2 represent the arguments of your function. You can manipulate the arguments
# you specify within the function. After sourcing the function, you can use the 
# function by typing:
# 
# function_name(value1, value2)
#

To understand computations in R, two slogans are helpful: 1. Everything that
| exists is an object. 2. Everything that happens is a function call.

Yes it's true: you can pass functions as arguments!
| This is a very powerful concept. Let's write a script to see how it works.
