package com.hexaware.abstractclasses;

public abstract class Vehicle {
	 private String name;
	    private double rentalPrice;
	    private boolean isRented;
     //constructors 
	    public Vehicle(String name, double rentalPrice) {
	        this.name = name;
	        this.rentalPrice = rentalPrice;
	        this.isRented = false;
	    }

	    // Getter and Setter methods
	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public double getRentalPrice() {
	        return rentalPrice;
	    }

	    public void setRentalPrice(double rentalPrice) {
	        this.rentalPrice = rentalPrice;
	    }

	    public boolean isRented() {
	        return isRented;
	    }

	    public void rent() {
	        this.isRented = true;
	    }

	    public void returnVehicle1() {
	        this.isRented = false;
	    }

	    
	    public abstract void rentVehicle();

	    public abstract void returnVehicle();

}
