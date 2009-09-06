#!/usr/bin/env php
<?php
// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.
function euler1() {
   return array_sum(array_filter(range(3, 999),
                    create_function('$x',
                                    'return ($x % 3 == 0) || ($x % 5 == 0);')));
}

$eulers = array(
    1 => euler1,
);

if (isset($argc)) {
    // Main
    if ($argc == 1) {
        // No command line args passed, so run them all.
        foreach ($eulers as $num => $euler) {
            echo "#" . $num . ". " . $euler() . "\n";
        }
    } else {
        // Command line args passed, just run the requested ones.
        foreach (array_slice($argv, 1) as $arg) {
            echo "#" . $arg . ". " . eval('return euler' . $arg . '();') . "\n";
        }
    }
}
?>