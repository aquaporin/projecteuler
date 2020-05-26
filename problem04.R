# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

num_to_vec <- function(x){
  vec <- c()
  while(x > 0){
    vec <- c(x %% 10, vec)
    x <- floor(x / 10)
  }
  return(vec)
}

is_palindrome <- function(x){
  xvec <- num_to_vec(x)
  return(all(xvec == rev(xvec)))
}

get_products <- function(lower, upper){
  products <- c()
  
  for(i in lower:upper){
    for(j in i:upper) {
      k <- i * j
      products <- c(products, k)
    }
  }
  return(products)
}

prods <- get_products(800, 999)
pals <- sapply(prods, is_palindrome)
largest <- max(prods[pals])
largest