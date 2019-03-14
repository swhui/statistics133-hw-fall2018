# ===================================================================
# Title: List of Tests for Functions  of Workout 02
# Description:
#   This script performs tests on the functions `minkowski()`, `is_hex()`, 
# `is_hex_alpha()`, `reverse_chars()`, and `count_vowels()`
# Input(s): R scripts:  minkowski.R
#                       hex-color.R
#                       reverse-chars.R
#                       count-vowels.R
#                       test-minkowski.R
#                       test-hex-color.R
#                       test-reverse-chars.R
#                       test-count-vowels.R
# Output(s): text file: test-output.txt
# Author: Sharon Hui
# Date: 10/06/2018
# ===================================================================



library('testthat')
functions <- dir('../code/functions')
lapply(paste0('../code/functions/', functions), source)
sink(file = 'test-output.txt')
test_dir('../code/tests')
sink()
