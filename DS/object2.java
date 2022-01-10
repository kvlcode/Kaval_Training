// Object & Clasees Program 2

class object2{
    public static void main(String[] src) {

        // Create Car Object
        Car audi = new Car("Red", 250, "Audi"); // constructor called here.
        Car bmw = new Car("Black", 300, "BMW"); // constructor called here.

        audi.show(); // method called
        bmw.show(); // method called
        
        // Create Person Object
        Person p1 = new Person("Salman", "aggressive", false); // Person 1
        Person p2 = new Person("Stan", "talkative", true); // Person 2

        // Connection between Classes
        p1.carOwned = audi; 
        p2.carOwned = bmw;

        p1.carOwned.show(); //Access method of one class using second class 
        p2.carOwned.show();

    }

}

// Class 1
class Car {
    String color, name;
    int maxSpeed; // Speed in kmph

    // Constructor
    Car(String a, int b, String c) {
        this.color = a;
        this.maxSpeed = b;
        this.name = c;

    }

    // This method Shows details of particular Car(Object).
    void show() {
        System.out.println("Car = " + name + "\nmaxspeed = " + maxSpeed + "\ncolor = " + color + "\n");
    }

}

// Class 2
class Person {
    String pname, personality;
    boolean canDrive;
    Car carOwned;

    Person(String l, String m, boolean n) {
        this.pname = l;
        this.personality = m;
        this.canDrive = n;
    }

    void drive() {
        this.canDrive = true;
    }

    void noDrive() {
        this.canDrive = false;
    }

}
