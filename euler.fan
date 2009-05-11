class Euler
{
    /**
     * Euler #1
     * Answer: 233168
     *
     * If we list all the natural numbers below 10 that are multiples of 3 or 5,
     * we get 3, 5, 6 and 9. The sum of these multiples is 23.
     *
     * Find the sum of all the multiples of 3 or 5 below 1000.
     */
    static Int euler1() {
        sum := 0
        (3..<1000).each |n| {
            if (n % 3 == 0 || n % 5 == 0) {
                sum = sum + n
            }
        }
        return sum
    }

    static Void main(Str[] args) {
        // Kinda lame that we need an instance just to use trap for
        // dynamic invokes, but that appears to be the case....
        euler := Euler.make()
        if (args.size > 0) {
            args.each |Str arg| {
                v := euler.trap("euler$arg", [,])
                echo("#$arg: $v")
            }
        } else {
            // TODO: Some other more dynamic means of reflecting each method...
            [1].each |index| {
                v := euler.trap("euler$index", [,])
                echo("#$index: $v")
            }
        }
    }
}
