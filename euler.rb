#!/usr/bin/env ruby

# Project Euler in Ruby (1.8.5)
# John Evans <john@jpevans.com>


# Euler #1
# Answer: 233168
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def euler1
    (1..999).select { |n| n % 3 == 0 or n % 5 == 0 }.inject(0) { |a,b| a + b }
end


EULERS = [
    euler1
]


if __FILE__ == $0
    if ARGV.length > 0
        puts "ARGV"
        for arg in ARGV
            puts "#{arg}: #{eval("euler#{arg}")}"
        end
    else
        EULERS.each_with_index do |euler, index|
            puts "#{index+1}: #{euler}"
        end
    end
end
