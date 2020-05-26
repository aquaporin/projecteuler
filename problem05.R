# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

d <- 11:20
n <- 2520

while (any(n %% d > 0)) {
  n <- n + 2520
}

print(n)