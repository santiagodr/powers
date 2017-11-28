#' Generic Power Function
#'
#' This function is internal and is used by the other functions
#'
#' @param x Vector to raise to some power.
#'
#' @param a Power to raise \code{x} by.
#'
#' @param na.rm ask if NA's should be removed for the computation, default is FALSE
#'
#' @return The vector \code{x}, raised to the power of \code{a}.
#'
pow <- function(x, a, na.rm = FALSE){
    if(is.numeric(x)){
        x^a
    } else {
        return("x must be numeric")
    }
    if(na.rm == TRUE){
        x <- x[!is.na(x)]  # remove NA's
        if (is.numeric(x)){
            x^a
        }
        else{
            return("x must be numeric")
        }
    }
}
