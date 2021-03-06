context("Squaring numerics")

# should be success
test_that("numeric values work.", {
    num_vec <- c(0, -4.6, 3.4)
    expect_identical(square(num_vec), num_vec^2)
})

# should remove NA's
test_that("NA's removed", {
    vector <- c(3,5,NA)
    expect_identical(square(vector, na.rm = TRUE), c(9,25))
    expect_identical(square(vector), c(9,25,NA))
})

# should be failure
test_that("x must be numeric", {
    vector <- "this is a string"
    expect_error(square(vector), "x must be numeric")
})
