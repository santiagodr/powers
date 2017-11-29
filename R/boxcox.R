#' Box Cox Transformation function
#'
#' This function performs a Box-Cox transformation to a vector
#'
#' @param x Vector to be transformed.
#'
#' @param lambda the scalar exponent for transformation (1 is linear, 0 is log), no default
#'
#' @param na.rm ask if NA's should be removed for the computation, default is FALSE
#'
#' @return A vector of the same length as `x` that is the Box-Cox transformation of \code{x}
#'
#' @details this function is useful to transform data using the Box-Cox transformation in order to adjust them to a normal distribution
#' The user should explore a range of values for lambda to find the optimal value that approximates the data to a normal distribution
#' The function only takes positive values for x
#'
#' @examples
#' boxcox(1:10, 2)
#' boxcox(0.5, 1)
#'
#' @export
#'

boxcox <- function(x,lambda, na.rm = FALSE){
    if(na.rm == TRUE){
        x <- x[!is.na(x)] # remove NA's
    }
    if(any(x < 0)){return("x must be greater than zero")}
    if(is.numeric(x) & is.numeric(lambda)){
    if(lambda==0){
        return(log(x))
    } else {
    xtrans <- ((x^lambda - 1)/lambda)
    return(xtrans)
    }
    }
    else{
        return("x and lambda must be numeric")
    }
}
