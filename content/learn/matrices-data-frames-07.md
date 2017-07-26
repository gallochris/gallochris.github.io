---
title: "Matrices and Data Frames"
type: learn
slug: /r/matrices-data-frames
weight: 7
---

# Matrices and Data Frames

<a href="http://swirlstats.com/students.html" >Swirl</a> gives examples of how to store rectangular or tabular (rows and columns) data in this section. 

Matrices only contain a **single class** of data. 

Data frames consist of **many different classes** of data.

## Functions 

`dim()` shows the *dimensions* of any object. 

`length()` shows the length of any object. 

Example is giving a vector a dim attribute, i.e. `dim(my_vector) <- c(4, 5)`

And `dim(my_vector)` results in `4 5` 

`attributes()` shows the attributes on a vector, i.e. `attributes(my_vector)` results in 
`$dim 4 5`

What did this just do? 

It gave it **4 rows** and **5 columns** and makes it a **matrix**. 

`class()` shows what kind of data we're storing, i.e. `class(my_vector)` returns `matrix` 

Use the `matrix()` function to create a matrix too. 

For example, `my_matrix2 <- matrix(1:20, nrow =  4, ncol = 5)` creates a matrix for the numbers 1:20 (increasing by 1) with 4 rows and 5 columns. 

## Label Rows

Imagine the numbers in the table represent some measurements from a clinical experiment, where each row represents one patient and each column represents one variable for which measurements were taken.

A way to label the rows is to add a column to the matrix with the name of the patient. 

Use a **character vector** to create this column, i.e. `patients <- c("Bill", "Gina", "Kelly", "Sean")` 

The `cbind()` function combines the columns, i.e. `cbind(patients, my_matrix)` combines the character vector with the matrix of numbers. 

<pre>
 patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"
</pre>

**Important:** this examples creates a function of all character strings (see the double quotes). It's implicit coercion because you combined a character vector with a numeric matrix, and matrices can only contain ONE class of data.

**Use data.frame()** to fix it. 

Entering `my_data <- data.frame(patients, my_matrix)` creates a data frame, so you can store the character vector of names alongside the matrix of numbers.

<pre>
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20

</pre>

Now when entering `class(my_data)` the result is `"data frame"`

## Label Columns 

Create a character vector with the labels, i.e. `cnames <- c("patient", "age", "weight", "bp", "rating", "test")` 

Use the `colnames()` function to label the column names. 

For example, `colnames(my_data) <- cnames` labels each column of the data. 

<pre>
patient age weight bp  rating test

Bill     1    5    9     13   17

Gina     2    6    10    14   18

Kelly    3    7    11    15   19

Sean     4    8    12    16   20
</pre>



