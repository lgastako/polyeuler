// Problem #1
// Answer: 233168
//
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we
// get 3, 5, 6 and 9. The sum of these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.

fn euler1() -> int {
    return range(1, 1000).filter(|x| x % 3 == 0 || x % 5 == 0).fold(0, |a, b| a + b);
}

fn main() {
    println(fmt!("%d", euler1()));
}
