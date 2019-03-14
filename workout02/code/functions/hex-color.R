#' @title Is Hex Function
#' @description checks whether an input string is a valid hex color without an alpha transparency value
#' @param col a string of characters
#' @return TRUE if the input is a valid hex color without an alpha transparency value, FALSE if not, or "invalid input; a string was expected"

library(stringr)
is_hex <- function(col) {
  if ((is.character(col) & length(col) == 1) != TRUE) {
    stop("invalid input; a string was expected")
  }
  else if ((str_detect(col, 
                      pattern = "^#[A-Fa-f0-9]{6}") & length(unlist((str_split(col, "")))) == 7) == TRUE) {
    return(TRUE) }
  else if((str_detect(col, 
                     pattern = "^#[A-Fa-f0-9]{6}") & length(unlist((str_split(col, "")))) == 7) != TRUE) {
    return(FALSE) }
}



#' @title Is Hex Alpha Function
#' @description checks whether an input string is a valid hex color with an alpha transparency value
#' @param col a string of characters
#' @return TRUE if the input is a valid hex color with an alpha transparency value, FALSE if not, or "invalid input; a string was expected"

is_hex_alpha <- function(col) {
  if ((is.character(col) & length(col) == 1) != TRUE) {
    stop("invalid input; a string was expected")
  }
  else if ((str_detect(col, 
                       pattern = "^#[A-Fa-f0-9]{8}") & length(unlist((str_split(col, "")))) == 9) == TRUE) {
    return(TRUE) }
  else if((str_detect(col, 
                      pattern = "^#[A-Fa-f0-9]{8}") & length(unlist((str_split(col, "")))) == 9) != TRUE) {
    return(FALSE) }
}


