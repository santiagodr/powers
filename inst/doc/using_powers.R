## ------------------------------------------------------------------------
library(powers)

#Lets create a vector
vector1 <- c(1:10)

# and now apply our function to square each element on this vector
square(vector1)

# we can also power each element to the cube
cube(vector1)

## ------------------------------------------------------------------------
vector2 <- c(-1, 0, 1, NA, 3, NA, 5)
square(vector2)
square(vector2, na.rm = TRUE)
cube(vector2, na.rm = TRUE)

## ------------------------------------------------------------------------
# we can use our previous vector1, we have to provide a lambda parameter
boxcox(vector1, 1)
boxcox(vector1, 2)
boxcox(vector1, 0)

