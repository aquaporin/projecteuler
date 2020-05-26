# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# 3 + 4 + 5 = 12

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

is_triplet <- function(a, b, c) {
  if (a < b && b < c) {
    return(a^2 + b^2 == c^2)
  }
  else {
    return(FALSE)
  }
}

triplet_finder <- function(n) {
  a <- 1
  while (a < ceiling(n / 3)) {
    b <- a + 1
    while (b < ceiling(n / 2)) {
      c <- n - (a + b)
      if (c < 1) {
        break
      }
      if (is_triplet(a, b, c)) {
        return(a * b * c)
      }
      b <- b + 1
    }
    a <- a + 1
  }
  return("Could not find triplet")
}

triplet_finder(1000)