#' @title check_sides function
#' @description checks if sides of the rolling die has at least 2 elements, numeric/character sides, and has no duplicated elements
#' @param sides vector
#' @return TRUE if conditions are met or FALSE if any one of the conditions are not met
#' @export
#' @examples
#' # check_sides(c("1", "2", "3"))
#' # [1] TRUE
#'
#' # check_sides(c("apples", "bananas", "oranges", "plums"))
#' # [1] TRUE
#'
#' # check_sides(c("1"))
#' # Error in check_sides(c("1")) :
#' # 'sides' must be a vector of length greater than 1
#'
check_sides <- function(sides){
  if (length(sides) <= 1) {
    stop("'sides' must be a vector of length greater than 1")
  }
  if (!is.numeric(sides) & !is.character(sides)) {
    stop("\n'sides' must be a character or numeric vector")
  }
  if (any(duplicated(sides))) {
    stop("'sides' cannot have duplicated elements")
  }
  TRUE
  }


#' @title check_prob function
#' @description checks if the probability has any NA values, each probability is between 0 and 1 inclusive, and the elements in the probability add up to 1
#' @param prob vector of probabilities for each side
#' @return TRUE if conditions are met or stops with error message if any one of the conditions are not met
#' @export
#' @examples
#' # check_prob(c(.5, .4, .1))
#' # [1] TRUE
#'
#' # check_prob(c(.2, .2, .2, .2, .2))
#' # [1] TRUE
#'
#' # check_prob(c(-1, .4, .1))
#' # Error in check_prob(c(-1, 0.4, 0.1)) :
#' # prob' values must range within 0 and 1
#'
check_prob <- function(prob){
  if (length(prob) <= 1) {
    stop("prob must have a length of at least 2")
  }
  if (any(is.na(prob))) {
    stop("\n'prob' cannot contain missing values")
  }
  if (any(prob < 0) | any(prob > 1)) {
    stop("\n'prob' values must range within 0 and 1")
  }
  if (sum(prob) != 1) {
    stop("\nelements in 'prob' must add up to 1")
  }
  TRUE
}


#' @title Device
#' @description stimulates rollin and object using the object of class "device"
#' @param sides vector of k >= 2 elements by default numbers 1 and 2, which must be of the same length as prob
#' @param prob vector of probabilities for each side (all equal to 1/2 by default), which must be of the same length as sides
#' @return displays the class of the object, and a tabular display of the sides and the associated probabilities
#' @export
#' @examples
#' # default
#' # fair_coin <- device()
#'
#' # another device
#' # regular die
#' # regular_die <- device(sides = c("a", "b", "c", "d", "e", "f"),
#' #                       prob = c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6))
#'
#' # fruit_die <- device(sides = c("oranges", "plums", "apples",
#' #                     "bananas", "durians", "tomatoes"),
#' #                      prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
#'
#' # loaded die
#' # loaded <- device(sides = c(1, 2, 3, 4, 5, 6), prob = c(.1, .1, .1, .1, .1, .5))
#'
device <- function(sides = c(1, 2), prob = c(0.5, 0.5)) {
  check_sides(sides)
  check_prob(prob)
  if (length(sides) != length(prob)) {
    stop("'sides' and 'prob' have different lengths")
  }

  object <- list(
    sides = sides,
    prob = prob)
  class(object) <- "device"
  object
}

#' @export
print.device <- function(x, ...) {
  cat('object "device"\n\n')
  print(data.frame("side" = x$sides, "prob" = x$prob))
  invisible(x)
}

#' @title Is.Device Function
#' @description checks if the item in the function is a device
#' @param x any object
#' @return displays TRUE if the class of the object is device or FALSE is the class of the object is not device
#' @export
#' @examples
#' # fair_coin <- device()
#' # is.device(fair_coin)
#' # [1] TRUE
#'
#' # loaded <- device(sides = c(1, 2, 3, 4, 5, 6), prob = c(.1, .1, .1, .1, .1, .5))
#' # is.device(loaded)
#' # [1] TRUE
#'
is.device <- function(x) {
  if (class(x) == "device") {
    return(TRUE)
  }
  else {
    return(FALSE)
  }
}
