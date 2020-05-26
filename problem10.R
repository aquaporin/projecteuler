# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

source("./primes.r")

# This function is slow. This question uses the sieve from the primes.R file.
prime_summer <- function(limit) {
  n <- 3
  total <- 2
  while (n < limit) {
    if (is_prime(n)) {
      total <- total + n
    }
    n <- n + 2
  }
  total
}

sum(sieve(2000000))