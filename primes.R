# Sieve of Eratosthenes
# Returns a vector of prime numbers up to `limit`
sieve <- function(limit) {
  # Begin by assuming every number is prime
  nums <- rep(TRUE, limit)
  
  # 1 is nonprime by definition
  nums[1] = FALSE
  
  # Optimisation 1: stop loop early since any number larger than sqrt(limit) will be covered
  # by previous numbers.
  stop <- floor(sqrt(limit))
  for (i in 2:stop) {
    
    # Optimisation 2: start at i^2 because numbers before this will be covered by smaller
    # numbers in this loop.
    start <- i*i
    
    # Mark mulitples of i as FALSE
    multiples <- seq(start, limit, i)
    nums[multiples] = FALSE
  }
  
  # `which()` returns the indeces which are TRUE
  primes <- which(nums)
  return(primes)
}

# Tests if a number is prime by trial division
is_prime <- function(n){
  # Primes cannot be under 2
  if(n < 2) { 
    return(FALSE)
  }
  # 2 is a prime
  if(n == 2){
    return(TRUE)
  }
  # No prime other than 2 is even
  if(n %% 2 == 0) {
    return(FALSE)
  }
  
  # Checks all odd numbers 3 and over
  div <- 3
  while(div * div < n + 1) {
    if(n %% div == 0){
      return(FALSE)
    }
    else{
      div <- div + 2
    }
  }
  return(TRUE)
}