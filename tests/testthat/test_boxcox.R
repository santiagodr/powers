context("Box-Cox transformation of numeric vector")

# should be success
test_that("numeric positive values work.", {
    num_vec <- c(1:5)
    expect_identical(boxcox(num_vec, 2), c(0, 1.5, 4, 7.5, 12))
})

# should remove NA's
test_that("NA's removed", {
    vector <- c(1,2,NA)
    expect_identical(boxcox(vector, 2, na.rm = TRUE), c(0, 1.5))
})

# should give an error message
test_that("x must be greater than zero", {
    vector <- c(-1, 1, 2, 4)
    expect_equal(boxcox(vector, 2), "x must be greater than zero")
})

# should give an error message
test_that("x must be numeric", {
  expect_equal(boxcox("cat", 2), "x and lambda must be numeric")
})
