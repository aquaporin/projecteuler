# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10,001st prime number?

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
  while(div < sqrt(n) + 1) {
    if(n %% div == 0){
      return(FALSE)
    }
    else{
      div <- div + 2
    }
  }
  return(TRUE)
}

nth_prime <- function(n){
  counter <- 0
  p <- 0
  while(counter < n){
    p <- p + 1
    if(is_prime(p)){
      counter <- counter + 1
    }
  }
  return(p)
}

nth_prime(10001)