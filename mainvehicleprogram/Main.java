package com.hexaware.mainvehicleprogram;
import com.hexaware.concreteclasses.Car;
import com.hexaware.concreteclasses.Bike;
import com.hexaware.concreteclasses.Truck;
import com.hexaware.abstractclasses.Vehicle;
import java.util.Scanner;
public class Main {
	    public static void main(String[] args) {
	        Scanner sc = new Scanner(System.in);
	        User user = new User("swetha");

	        Car car = new Car("swift", 50);
	        Bike bike = new Bike("royal enfield", 20);
	        Truck truck = new Truck("truck", 80);

	        while (true) {
	            System.out.println("Vehicle Rental System:");
	            System.out.println("1. Rent Car");
	            System.out.println("2. Rent Bike");
	            System.out.println("3. Rent Truck");
	            System.out.println("4. View Rented Vehicles");
	            System.out.println("5. Exit");

	            int choice = sc.nextInt();
	            switch (choice) {
	                case 1:
	                    user.rentVehicle(car);
	                    break;
	                case 2:
	                    user.rentVehicle(bike);
	                    break;
	                case 3:
	                    user.rentVehicle(truck);
	                    break;
	                case 4:
	                    user.viewRentedVehicles();
	                    break;
	                case 5:
	                    System.out.println("Thank you");
	                    sc.close();
	                    return;
	            }
	        }
	    }
	}




