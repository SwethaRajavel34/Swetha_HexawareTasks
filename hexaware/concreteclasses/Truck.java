package com.hexaware.concreteclasses;
import com.hexaware.abstractclasses.Vehicle;

public class Truck extends Vehicle {

    public Truck(String name, double rentalPrice) {
        super(name, rentalPrice);
    }

    @Override
    public void rentVehicle() {
        if (!isRented()) {
            rent();
            System.out.println("Truck " + getName() + " rented for " + getRentalPrice());
        } else {
            System.out.println("Truck " + getName() + " is already rented.");
        }
    }

    @Override
    public void returnVehicle() {
        if (isRented()) {
            super.returnVehicle1();
            System.out.println("Truck " + getName() + " has been returned.");
        } else {
            System.out.println("Truck " + getName() + " was not rented.");
        }
    }
}

