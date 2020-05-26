# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Gives remainder when x is divided by y
rem <- function(x, y) {
  a <- (x / y)
  b <- floor(a)
  diff <- a - b
  return(diff* y)
}

# Takes two numbers and returns true if x is a multiple of y
mo <- function(x, y) {
  r <- rem(x, y)
  return(r == 0)
}

nums <- 1:999
fun1 <- function(x) { return (mo(x,3) || mo(x,5)) }
indexes <- sapply(nums, fun1)
sum(nums[indexes])