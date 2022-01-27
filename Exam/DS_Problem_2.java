
class node_list {
    int data;
    node_list next;

    node_list(int x) {
        data = x;
        next = null;
    }
}

public class DS_Problem_2{


    public static void main(String args[]) {

        node_list l1 = new node_list(1);
        l1.next = new node_list(2);
        l1.next.next = new node_list(4);
        
        
        node_list l2 = new node_list(1);
        l2.next = new node_list(3);
        l2.next.next = new node_list(4);
        print(merge_lists(l1, l2));
    }



    public static void print(node_list head) {
        while (head != null) {
            System.out.print(head.data + " ");
            head = head.next;
        }
        return;
    }

    public static node_list merge_lists(node_list l1, node_list l2) {

        if (l1 == null) {                   
            return l2;              //Return l2 if l1 is null  
        }

        if (l2 == null) {
            return l1;                  //Return l1 if l2 is null 
        }

        node_list list_temp;

        if (l1.data < l2.data)
        {

            list_temp = new node_list(l1.data);
            list_temp.next = merge_lists(l1.next, l2);

        } 
        else
        {
            list_temp = new node_list(l2.data);
            list_temp.next = merge_lists(l1, l2.next);
        }

        return list_temp;
    }

    
}