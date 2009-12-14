module Euler
    # Problem #1:
    # Answer: 233168
    #
    # If we list all the natural numbers below 10 that are multiples of 3
    # or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    #
    # Find the sum of all the multiples of 3 or 5 below 1000.

    def _prob1_impl(n, r)
        if n < 1000
           if n % 3 == 0 or n % 5 == 0
              _prob1_impl(n + 1, n + r)
           else
              _prob1_impl(n + 1, r)
           end
        else
            r
        end
    end

    def prob1()
        _prob1_impl(1, 0)
    end
end

puts("#1: ", Euler.prob1())