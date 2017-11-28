#' Box Cox Transformation function
#'
#' This function performs a Box-Cox transformation to a vector
#'
#' @param x Vector to be transformed.
#'
#' @param lambda the scalar exponent for transform (1 is linear, 0 is log)
#'
#' @param na.rm ask if NA's should be removed for the computation, default is FALSE
#'
#' @return A vector that is the Box-Cox transformation of \code{y}
#'
#' @details this function is useful to transform data usually to adjust them to a normal distribution
#'
#' @examples
#' boxcox(1,2,10,40)
#' boxcox(-10,3,5)
#'
#' @export
#'

boxcox <- function(x,lambda, na.rm = FALSE){
    if(is.numeric(x) & is.numeric(lambda)){
    gm <- exp(mean(log(x))) #gm is the geometric mean of the x values
    if(lambda==0) return(log(x)*gm)
    xtrans <- (x^lambda - 1)/(lambda * gm^(lambda-1))
    return(xtrans)
    }
    else{
        return("x and lambda must be numeric")
    }
    if(na.rm == TRUE){
        xtrans <- xtrans[!is.na(xtrans)]
        return(xtrans)
    }else{
        return(xtrans)
    }
}
