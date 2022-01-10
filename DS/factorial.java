//Factorial using Recursion

import java.util.Scanner;

class factorial {

    static int fact(int n) {
        if (n == 0) {
            return 1; // for n=0 factorial will be 1
        } else {
            return n = n * fact(n - 1); // call again
        }
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int n, a = 1;
        System.out.print("Enter n:\t");

        n = sc.nextInt(); // To find n! take input n

        a = fact(n); // Call function to find factorial

        System.out.println(n + "! is " + a);

    }

}
