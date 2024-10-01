package com.hexaware.mainvehicleprogram;
import com.hexaware.abstractclasses.Vehicle;
import java.util.ArrayList;

public class User {
	    private String name;
	    private ArrayList<Vehicle> rentedVehicles;

	    public User(String name) {
	        this.name = name;
	        this.rentedVehicles = new ArrayList<>();
	    }

	    public String getName() {
	        return name;
	    }

	    public void rentVehicle(Vehicle vehicle) {
	        vehicle.rentVehicle();
	        rentedVehicles.add(vehicle);
	    }

	    public void returnVehicle(Vehicle vehicle) {
	        vehicle.returnVehicle();
	        rentedVehicles.remove(vehicle);
	    }

	    public void viewRentedVehicles() {
	        if (rentedVehicles.isEmpty()) {
	            System.out.println(name + " has no rented vehicles.");
	        } else {
	            System.out.println(name + "rented vehicles:");
	            for (Vehicle vehicle : rentedVehicles) {
	                System.out.println(vehicle.getName() + vehicle.getRentalPrice());
	            }
	        }
	    }
	}



