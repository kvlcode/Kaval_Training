// Object & Clasees Program 1:

class object1 {
    String color, name;
    int maxSpeed; // Speed in kmph

    // Constructor
    object1(String a, int b, String c) {
        this.color = a;
        this.maxSpeed = b;
        this.name = c;

    }

    void show() {
        System.out.println("Car = " + name + "\nmaxspeed = " + maxSpeed + "\ncolor = " + color + "\n");
    }

    public static void main(String[] src) {

        // Create Object
        object1 audi = new object1("Red", 250, "Audi"); // constructor called here.
        audi.show(); // method called

        object1 bmw = new object1("Black", 300, "BMW"); // constructor called here.
        bmw.show(); // method called

    }
     
}
