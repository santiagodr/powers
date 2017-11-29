
<!-- README.md is generated from README.Rmd. Please edit that file -->
`powers`
========

This is a simple package that performs basic computations on numerical vectors.

There are three functions on this package:

-   [`square()`](https://github.com/santiagodr/powers/blob/master/R/square.R): computes the square of a number or vector
-   [`cube()`](https://github.com/santiagodr/powers/blob/master/R/cube.R): computes the cube of a number or vector
-   [`boxcox()`](https://github.com/santiagodr/powers/blob/master/R/boxcox.R): performs Box-Cox transformation for any scalar parameter (lambda), only for positive numbers

### Installation

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("santiagodr/powers")
```

### Examples

``` r
library(powers)
```

You can explore more examples in the [vignette](https://htmlpreview.github.io/?https://github.com/santiagodr/powers/blob/master/inst/doc/using_powers.html), but here is a quick example for the three functions on one vector of values

``` r
example <- c(1:5)
square(example)
```

    ## [1]  1  4  9 16 25

``` r
cube(example)
```

    ## [1]   1   8  27  64 125

``` r
boxcox(example, 2)
```

    ## [1]  0.0  1.5  4.0  7.5 12.0

You can also remove NA values in each function, by calling `na.rm = TRUE`, and also select different values for the parameter lambda in the `boxcox(vector, lambda)` function.

### For Developers

The boxcox function only takes positive values, a next extension of this function would be to perform transformation of negative values, by adding another term to the function. Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`. This package was created as part of a homework for STAT547-UBC It is an extension of the package powers created by Vincenzo Coia It is not intended to be a serious package,
