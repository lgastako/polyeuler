# Written on Node 5.x but should work most places
_ = require "underscore"

add = (a, b) -> a + b
sum = (xs) -> _(xs).reduce add, 0

String.prototype.startsWith = (prefix) -> 0 == this.indexOf(prefix)


# Euler #1
# Answer: 233168
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
exports.euler1 = () ->
    sum (n for n in [3..999] when n % 3 == 0 or n % 5 == 0)


# Technically there's an exploit here but we don't care.
run = (number) ->
    label = "euler" + number
    displayEuler label, exports[label]


displayEuler = (label, euler) ->
    console.log label + ": " + euler()


run_all = () ->
    for own label, euler of exports
        if label.startsWith "euler"
            displayEuler label, euler


if require.main == module
    do main = () ->
        args = process.argv.slice 2  # Get rid of "node/coffee" and filename.
        if args.length <= 0
            do run_all
        else
            for number in args
                run number
