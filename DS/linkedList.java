class Node {

    int data;    // Data in node
    Node next;   

    public Node(int n) {     // Constructor
        this.data = n;
    }
}

public class linkedList {

    public static void main(String[] args) {

        Node a = new Node(1);       // Set data in nodes
        Node b = new Node(2);
        Node c = new Node(3);
        Node d = new Node(4);
        Node e = new Node(5);
        Node f = new Node(6);

        a.next = b;             // Point to next node
        b.next = c;
        c.next = d;
        d.next = e; 
        e.next = f;              // f point to NULL.

        System.out.println("length of linked list : " + countNodes(a));   // call function 

    }

    static int countNodes(Node head) {        // Take data  which in node 
            // head != null
            int count = 1;                    // Count variable stores number of nodes
            Node current = head;              
            while (current.next != null) {    // Check if next node is null or not
                current = current.next;        // Update Current Node
                count += 1;
            }
            return count;                // Return Final count of node
        
    }
}
