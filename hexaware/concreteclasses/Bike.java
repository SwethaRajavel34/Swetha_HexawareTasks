package com.hexaware.concreteclasses;
import com.hexaware.abstractclasses.Vehicle;
	
public class Bike extends Vehicle {

	    public Bike(String name, double rentalPrice) {
	        super(name, rentalPrice);
	    }

	    @Override
	    public void rentVehicle() {
	        if (!isRented()) {
	            rent();
	            System.out.println("Bike " + getName() + " rented for " + getRentalPrice());
	        } else {
	            System.out.println("Bike " + getName() + " is already rented.");
	        }
	    }

	    @Override
	    public void returnVehicle() {
	        if (isRented()) {
	            super.returnVehicle1();
	            System.out.println("Bike " + getName() + " has been returned.");
	        } else {
	            System.out.println("Bike " + getName() + " was not rented.");
	        }
	    }
	}

