
#' @title Reversing Characters
#' @description Reverses a string by characters
#' @param x a string of characters
#' @return a string of characters that is reversed from the input string by characters

library(stringr)
reverse_chars <- function(x){
  paste(rev(unlist((str_split(x, "")))), collapse = "")
}