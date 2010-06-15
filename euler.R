# Problem #1
# Answer: 233168
#
# If we list all the natural numbers below 10 that are multiples of 3
# or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

xs <- 1:999
euler1 <- sum(xs[xs %% 3 == 0 | xs %% 5 == 0])
