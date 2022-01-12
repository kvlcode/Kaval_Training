// 12-01-2022 
// Stack basic operations

class Stack {

    int max = 500;
    int top;
    int a[] = new int[max]; // maximum size of Stack

    // boolean isEmpty() {
    //     return (top < 0);
    // }

    Stack() {
        top = -1;
    }


    void printStack() {                             //Function to print elements of stack
        for (int i=top; i >= 0; i--) {
            System.out.print(" " + a[i]);
        }
    }

    boolean push(int x) {                           //Function to push element, it returns boolean
        if (top >= (max - 1)) 
        {
            System.out.println("Overflow");
            return false;
        }
        else 
        {
            a[++top] = x;
            System.out.println(x + " pushed into stack");
            return true;
        }
    }

    int pop() {                                   //Function to pop element from stack              
        if (top < 0) {
            System.out.println("Stack Underflow");
            return 0;
        } 
        else 
        {
            int x = a[top--];
            return x;
        }
    }

   
}

public class StackBasic {
    public static void main(String args[]) {

        Stack s1 = new Stack();             //Object

        s1.push(5);                     //Call push function
        s1.push(2);
        s1.push(13);
        s1.push(12);
        s1.push(15);
        s1.push(3);

        System.out.print("Elements in stack after push :");
        s1.printStack();                        //print stack after push

        System.out.println();
        
        System.out.println(s1.pop() + " Popped from stack"); //pop function called
        System.out.println(s1.pop() + " Popped from stack");
        System.out.println(s1.pop() + " Popped from stack");
        System.out.println(s1.pop() + " Popped from stack");

       
        System.out.print("Elements in stack after pop :");
        s1.printStack();                                    //print stack after pop
    }
}