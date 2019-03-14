#' @title Count Vowels Function
#' @description Finds parts of the string with "a", "e", "i", "o", "u", "A", "E", "I", "O", or "U" and  computes the number of vowels of a character string.
#' @param x any input but it it needs to be a string
#' @return numeric vector with names for vowels with the counts of each vowel


count_vowels <- function(x){
  if ((is.character(x) & length(x) == 1) != TRUE) {
    stop("invalid input; a string was expected") }
  else if ((is.character(x) & length(x) == 1) == TRUE){
    (c("a" = as.double(sum(str_detect((unlist(str_extract_all(x, pattern = "[aeiouAEIOU]"))), pattern = "a|A"))),
       "e" = as.double(sum(str_detect((unlist(str_extract_all(x, pattern = "[aeiouAEIOU]"))), pattern = "e|E"))),
       "i" = as.double(sum(str_detect((unlist(str_extract_all(x, pattern = "[aeiouAEIOU]"))), pattern = "i|I"))),
       "o" = as.double(sum(str_detect((unlist(str_extract_all(x, pattern = "[aeiouAEIOU]"))), pattern = "o|O"))),
       "u" = as.double(sum(str_detect((unlist(str_extract_all(x, pattern = "[aeiouAEIOU]"))), pattern = "u|U")))
    ))
  }
}
  

