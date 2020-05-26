smallest_factor <- function(x) {
  fac <- 2
  limit <- ceiling(sqrt(x))
  while (x %% fac != 0) {
    fac <- fac + 1
    if (fac > limit) {
      return(x)
    }
  }
  fac
}

# Input: an integer
# Output: a vector which holds the prime factors of the integer
prime_factorisation <- function(n) {
  prime_factors <- c()
  while (n > 1) {
    
    div <- smallest_factor(n)
    while(n %% div == 0) {
      n <- n / div
      prime_factors <- c(prime_factors, div)
    }
  }
  return(prime_factors)
}

pf <- prime_factorisation(600851475143)
pf[length(pf)]