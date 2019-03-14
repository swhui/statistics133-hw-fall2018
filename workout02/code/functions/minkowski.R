#' @title Minkowski Distance
#' @description calculates the Minkowski distance between points of order p using the p-norm distance
#' @param x a numeric vector for one point
#' @param y a numeric vector for another point
#' @param p either a numeric value greater than 1 or a character string max with a default 1
#' @return calculated Minkowski distance

minkowski <- function(x, y, p = 1) {
  if (length(x) != length(y)) {
    stop("x and y have different lengths")
  }
  else if (is.numeric(p) == TRUE) {
    if ((p < 1) == TRUE) {
    stop("p cannot be less than one")
    } 
    else 
      sum <- 0
      a <- c()
      z <- c()
      for (i in 1:length(x)) {

      z[i] <- x[i]-y[i]
      a[i] <- (abs(z[i]))^(p)
      sum <- a[i]+sum }
    return(sum^(1/p))
  }
  else if (is.character(p) == TRUE) {
    if (p != "max") {
      stop("invalid character value for p")
    }
    else 
      a <- c()
      z <- c()
      for (i in 1:length(x)) {
        z[i] <- x[i]-y[i]
        a[i] <- (abs(z[i]))}
    return(max(a))
  }

  }

