#' This function square a vector
#' That's it!
#'
#' @param x The vector to be squared
#'
#' @param na.rm indicates whether to remove NA's, default is false
#'
#' @return  A vector that is the squared of \code{x}
#'
#' @details This function relies on the internal function pow
#'
#' @examples
#' square(5)
#' square(1:10)
#' @export
#'
square <- function(x, na.rm=FALSE) pow(x, a=2, na.rm)

