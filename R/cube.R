#' Cube function
#'
#' This function cube a vector
#'
#' @param x The vector to be cubed
#'
#' @param na.rm indicates whether to remove NA's, default is false
#'
#' @return A vector of the same lenght as `x` containing the cube of \code{x}
#'
#' @details This function relies on the internal function pow
#'
#' @examples
#' cube(5)
#' cube(1:10)
#' @export
#'
cube <- function(x, na.rm=FALSE) pow(x, a=3, na.rm)
