context("Cubing numerics")

# should be success
test_that("numeric values work.", {
    num_vec <- c(0, -4.6, 3.4)
    expect_identical(cube(num_vec), num_vec^3)
})

# should remove NA's
test_that("NA's removed", {
    vector <- c(3,5,NA)
    expect_identical(cube(vector, na.rm = TRUE), c(27, 125))
    expect_identical(cube(vector), c(27, 125,NA))
})

# should be failure
test_that("x must be numeric", {
    vector <- "this is a string"
    expect_error(cube(vector), "x must be numeric")
})
