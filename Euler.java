import java.lang.reflect.Method;
import org.apfloat.Apint;
import org.apfloat.ApintMath;

public class Euler
{
    public static final int MAX_IMPLEMENTED_EULER = 4;

    /**
     * Euler #1
     * Answer: 233168
     * 
     * If we list all the natural numbers below 10 that are multiples of 3 or 5,
     * we get 3, 5, 6 and 9. The sum of these multiples is 23.
     * 
     * Find the sum of all the multiples of 3 or 5 below 1000.
     */
    public static int euler1() {
        int sum = 0;
        for (int i=3; i<1000; i++) {
            if ((i % 3 == 0) || (i % 5 == 0)) {
                sum += i;
            }
        }
        return sum;
    }

    /**
     * Euler #2
     * Answer: 4613732
     *
     * Each new term in the Fibonacci sequence is generated by adding the previous
     * two terms. By starting with 1 and 2, the first 10 terms will be:
     *
     * 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
     *
     * Find the sum of all the even-valued terms in the sequence which do not
     * exceed four million.
     */
    public static int euler2() {
        int n = 2, a = 1, b = 2;
        while (true) {
            int c = a + b;
            if (4000000 <= c) {
                break;
            }
            if (0 == c % 2) {
                n += c;
            }
            a = b;
            b = c;
        }
        return n;
    }


    /**
     * Euler #3:
     * Answer: 6857
     * Slow as balls, but ok whatever, it works.
     *
     * The prime factors of 13195 are 5, 7, 13 and 29.
     *
     * What is the largest prime factor of the number 600851475143 ?
     */
    public static final boolean is_prime(int n) 
    {
        double maxFactor = Math.ceil(Math.sqrt(n));
        if (n == 2) {
            return true;
        }
        for (int i=2; i<=maxFactor; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static int euler3() {
        final Apint target = new Apint("600851475143");
        final Apint APZERO = new Apint(0);
        Apint[] xs = ApintMath.sqrt(target);
        Apint maxFactor = xs[1].compareTo(APZERO) > 0 ? xs[0].add(new Apint("1")) : xs[0];
        for (int i=maxFactor.intValue(); i>=2; i--) {
            if (target.mod(new Apint(i)).compareTo(APZERO) == 0 && is_prime(i)) {
                return i;
            }
        }
        return -1;
    }


    /**
     * Problem #4
     * Answer: 906609
     *
     * A palindromic number reads the same both ways. The largest
     * palindrome made from the product of two 2-digit numbers is 9009 =
     * 91 99.
     *
     * Find the largest palindrome made from the product of two 3-digit
     * numbers.
     */

    public static String reverseString(String s)
    {
        if ((null == s) || (s.length() <= 1)) {
            return s;
        }
        return new StringBuffer(s).reverse().toString();
    }

    public static boolean is_palindromic_number(int n)
    {
        String s = "" + n;
        return s.equals(reverseString(s));
    }

    public static int euler4()
    {
        int result = 0;
        for (int i=100; i<1000; i++) {
            for (int j=0; j<1000; j++) {
                int p = i * j;
                if (p > result && is_palindromic_number(p)) {
                    result = p;
                }
            }
        }
        return result;
    }


    /**************
     * Main stuff *
     **************/

    public static void show(int n)
        throws Exception {
        Method method = Euler.class.getMethod("euler" + n);
        System.out.println("#" + n + ": " + method.invoke(null));
    }

    public static void main(String[] args) 
        throws Exception
    {
        if (args.length > 0) {
            for (int i=0; i<args.length; i++) {
                show(Integer.parseInt(args[i]));
            }
        } else {
            for (int i=0; i<MAX_IMPLEMENTED_EULER; i++) {
                show(i + 1);
            }
        }
    }
}