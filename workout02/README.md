# Workout 02 - Testing Functions and Strings

## Purpose

This README file contains information about Workout 02 - Testing Functions and Strings. This file will let me or any other user understand what this assignment is about.

This project works on creating a set of different functions and applying the concepts that we have learned so far. We will create functions, document functions with Roxygen comments, use if-conditionals, manipulate strings, and utilize loop structures. Furthermore, I will implement the testing of my functions using the R package `"testthat"`.

All of my functions should include Roxgyen comments, which are the following:

 - `@title`
 - `@description`
 - `@param`
 - `@return`

## Homework Structure

### File Structure

The file structure will look like the following:

      workout02/
      README.md
      code/
        functions/
          minkowski.R
          hex-color.R
          reverse-chars.R
          count-vowels.R
        tests/
          test-minkowski.R
          test-hex-color.R
          test-reverse-chars.R
          test-count-vowels.R
      output/
          run-tests.R
          test-output.txt

### Minkowski Distance

In the subdirectory `functions/`, I created an R script file `minkowski.R` in order to write a function `minkowski()`—including roxygen comments—for the Minkowski distances. To learn more about minkowski distances, refer to [https://en.wikipedia.org/wiki/Distance](https://en.wikipedia.org/wiki/Distance)

The function has 3 arguments, which are 

 - x = numeric vector for one point
 - y = numeric vector for the other point
 - p = either a numeric value greater than 1, or a character string max (default 1)

The function will return a computed distance or raise an error if x and y have difference lengths. The default value of p is 1. Furthermore, when p is numeric, I must check if the p is greater than 1 or raise an error stating that p cannot be less than 1. Furthermore, if p is a character, I must check if p equals `"max"` or raise the error that there is an invalid character value for p.

Inside the `tests/` subdirectory, create a file `test-minkowski.R` with tests for the function `minkowski()`.

### Colors in Hexadecimal Notation

In the subdirectory `functions/`, I created an R script file `hex-color.R` in order to write two functions: `is_hex()` and `is_hex_alpha()`, to check whether an input string is a valid color in hexadecimal notation.

The `is_hex()` function will check if an input string is a valid hex color without an _alpha_ transparency value or raise an error if the input is not a string.

The `is_hex_alpha()` function will check if an input string is a valid hex color with an _alpha_ transparency value or raise an error if the input is not a string.

Both functions should work with upper and lower case letters.

The function will return `TRUE`, `FALSE`, or an error (`"invalid input; a string was expected"`).

Inside the `tests/` subdirectory, create a file `test-hex-color.R` with tests for the function `is_hex` and `is_hex_alpha()`.

### Reversing Characters

In the subdirectory `functions/`, I created an R script file `reverse-chars.R` in order to write a function `reverse_chars()` that reverses a string by characters.

The function should return a string with reversed characters.

Inside the `tests/` subdirectory, I created a file `test-reverse-chars.R` with tests for the function `reverse_chars()`.

### Counting Vowels

In the subdirectory `functions/`, I created an R script file `count-vowels.R` in order to write a function `count_vowels()` that computes the number of vowels of a character string. When the input is not a string, the function would raise an error that there is an invalid input and that a string was expected. The function `count_vowels` will count vowels in both lower and upper case letters.

The function should return a numeric vector with the names for vowels.

Inside the `tests/` subdirectory, I created a file `test-count-vowels.R` with tests for the function `count_vowels`.

### Running Tests

In the subdirectory `output/` create an R script file run-tests.R with a master script to execute which will run all of the tests. I should run this script assuming that your working directory is the directory `output/`.

