---
title: "Workspaces and Files"
layout: learn
permalink: /learn/r/workspaces-files
---

# Workspaces and Files

The R package, <a href="http://swirlstats.com/students.html" >swirl</a>, describes how to use your workspace in R on your own machine. 

R uses a common API to interact with files. 

## Special Functions and Commands

`getwd()` - determines current working directory on your machine 

`ls()` - lists all the objects in your workspace, similar to the Unix command `ls`

`list.files()` or `dir()` - lists all the files in your working directory 

`args()` - shows what arguments a function can take, example: `args(list.files)` 

**Assign a variable** to the current working directory by entering `old.dir <- getwd()` 

`dir.create()` - creates a directory in the current working directory, i.e. `dir.create("testdir")` 

`setwd()` - sets current working direction, i.e. `setwd("testdir")` 

`file.create()` - creates a file in your current working directory, i.e. `file.create("mytest.R")`

`file.exists()` - check to see if a file exists in a directory, useful when using directories with lots of files 

`file.info()` - shows the contents or info in the file, i.e. `file.info("mytest.R")`

`file.rename()` - renames file, i.e. `file.rename("mytest.R", "mytest2.R")` changes name from `mytest.R` to `mytest2R` 

`file.remove()` - removes a file from directory 

`file.copy()` - copies a file in a directory, i.e. `file.copy("mytest2.R", "mytest3.R")` creates a copy with the name `mytest3.R`

`file.path()` - provides relative path of file, i.e. `file.path("mytest3.R")` 

`recursive` - must be set to `recursive = TRUE` to create nested directories, i.e. `dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)` creates a directory in the current working directory called `"testdir2"` and a subdirectory for it called `"testdir3"` all at once. 





