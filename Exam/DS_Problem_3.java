
class Node {

    int data;
    Node left, right;

    Node(int data) {
        this.data = data;
        this.left = null;
        this.right = null;
    }


}


public class DS_Problem_3 {
     
        

        public static void main(String[] args) {
            Node root = new Node(3);
            root.left = new Node(9); 
            root.right = new Node(20); 
            root.right.left = new Node(15); 
            root.right.right = new Node(7);

            

            
            Sum1(root);
            // System.out.println("Sum is:"+ Sum1(root));
               

        }

        private static void Sum1(Node root) {

            Node temp;
            // temp = .head.left + head.right.left;


        }


}

