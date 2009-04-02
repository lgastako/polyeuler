object ScalaEuler {
    /**
     * Euler #1
     * Answer: 233168
     *
     * If we list all the natural numbers below 10 that are multiples of 3 or 5,
     * we get 3, 5, 6 and 9. The sum of these multiples is 23.
     *
     * Find the sum of all the multiples of 3 or 5 below 1000.
     */
    // Really? not built in?
    def inject(arr: Collection[Int], initial: Int, operation: (Int, Int) => Int) : Int = {
        var carryOver = initial
        arr.foreach(element => carryOver = operation(carryOver, element) )
        carryOver
    }

    // Reallye? not built in?
    def sum(list:Collection[Int]):Int = inject(list, 0, (carryOver, elem) => carryOver + elem)

    def euler1():Int = sum((3 until 1000).map(n => if (n % 3 == 0 || n % 5 == 0) n else 0))

    val eulers = List(euler1)

    def show_results(prob_number:Int, result:Int):Unit = println("#" + prob_number + ": " + result)

    def main(args: Array[String]) = {
        if (args.length > 0) {
            for (arg <- args) {
                val problem_number = Integer.parseInt(arg)
                val euler = eulers(problem_number-1)
                show_results(problem_number, euler)
            }
        } else {
            for ((euler, index) <- eulers.zipWithIndex) {
                val problem_number = index + 1
                show_results(problem_number, euler)
            }
        }
    }
}
