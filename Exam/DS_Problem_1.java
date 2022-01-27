class Node {

    int data; // Data in node
    Node next;

    public Node(int n) { // Constructor
        this.data = n;
    }
}

public class DS_Problem_1 {

    public static void main(String[] args) {

        Node a = new Node(1); // Set data in nodes
        Node b = new Node(2);
        Node c = new Node(3);
        Node d = new Node(4);
        Node e = new Node(5);

        a.next = b;
        b.next = c;
        c.next = d;
        d.next = e;


        Node[] arr = convertInArray(a);   // array having data of list

        int len = arr.length;

        Node reverseList[] = rvereseList(arr, 0, len);  // function to reverse array

        for (int j = 0; j < len; j++) {                         //print sorted array
            System.out.println(reverseList[j] + "\n");

        }


    }


    public static Node[] rvereseList(Node arr[], int start, int end) {
        Node temp;
        if (start >= end) {
            return arr;
        }

        temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;
        rvereseList(arr, start + 1, end - 1);

        return arr;
    }

    public static Node[] convertInArray(Node head) {

        int count = 1; // Count variable use to find lenght
        Node current = head;
        while (current.next != null) {
            current = current.next;
            count += 1;
        }

        int len = count; // Length of linked list
        Node nodeValues[] = new Node[len];


        // Covert linked list into Array

        for (int i = 0; i < len && current.next != null; i++) {

            nodeValues[i] = current;
            current = current.next;
        }

        return nodeValues;

    }
}
