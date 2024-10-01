package com.hexaware.concreteclasses;
import com.hexaware.abstractclasses.Vehicle;
	public class Car extends Vehicle {

		    public Car(String name, double rentalPrice) {
		        super(name, rentalPrice);
		    }

		    @Override
		    public void rentVehicle() {
		        if (!isRented()) {
		            rent();
		            System.out.println("Car " + getName() + " rented for " + getRentalPrice());
		        } else {
		            System.out.println("Car " + getName() + " is already rented.");
		        }
		    }

		    @Override
		    public void returnVehicle() {
		        if (isRented()) {
		            super.returnVehicle1();
		            System.out.println("Car " + getName() + " has been returned.");
		        } else {
		            System.out.println("Car " + getName() + " was not rented.");
		        }
		    }

}
