% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/device.R
\name{check_sides}
\alias{check_sides}
\title{check_sides function}
\usage{
check_sides(sides)
}
\arguments{
\item{sides}{vector}
}
\value{
TRUE if conditions are met or FALSE if any one of the conditions are not met
}
\description{
checks if sides of the rolling die has at least 2 elements, numeric/character sides, and has no duplicated elements
}
\examples{
# check_sides(c("1", "2", "3"))
# [1] TRUE

# check_sides(c("apples", "bananas", "oranges", "plums"))
# [1] TRUE

# check_sides(c("1"))
# Error in check_sides(c("1")) :
# 'sides' must be a vector of length greater than 1

}
