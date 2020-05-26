# Gives remainder when x is divided by y
rem <- function(x, y) {
  a <- (x / y)
  b <- floor(a)
  diff <- a - b
  return(diff* y)
}

# Returns TRUE if x is even
is_even <- function(x) {
  rem(x, 2) == 0
}

# Returns TRUE if x is odd
is_odd <- function(x) {
  !is_even(x)
}