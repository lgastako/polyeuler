import java.lang.reflect.Method;

public class Euler
{
    public static final int MAX_IMPLEMENTED_EULER = 1;

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