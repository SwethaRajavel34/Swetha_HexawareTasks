package com.hexaware.bankaccount;
import java.util.Scanner;

public class Main {
     public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);
	        BankAccount account = null; //initially we have no account 
	        int choice = -1;

	        while (choice != 0) {
	            System.out.println("***Bank Account Management System***");
	            System.out.println("1.Create a new bank account");
	            System.out.println("2.Deposit money");
	            System.out.println("3.Withdraw money");
	            System.out.println("4.Check balance");
	            System.out.println("5.Exit");
	            System.out.print("Enter your choice: ");

	            try {
	                choice = scanner.nextInt();

	                switch (choice) {
	                    case 1:
	                        account = new BankAccount();
	                        System.out.println("Bank account created successfully.");
	                        break;
	                    case 2:
	                        if (account == null) {
	                            throw new NullPointerException("Please create a bank account first.");
	                        }
	                        System.out.print("Enter amount to deposit: ");
	                        double depositAmount = scanner.nextDouble();
	                        account.deposit(depositAmount);
	                        break;
	                    case 3:
	                        if (account == null) {
	                            throw new NullPointerException("Please create a bank account first.");
	                        }
	                        System.out.print("Enter amount to withdraw: ");
	                        double withdrawAmount = scanner.nextDouble();
	                        account.withdraw(withdrawAmount);
	                        break;
	                    case 4:
	                        if (account == null) {
	                            throw new NullPointerException("Please create a bank account first.");
	                        }
	                        System.out.println("Current balance: " + account.checkBalance());
	                        break;
	                    case 5:
	                        System.out.println("Exiting.");
	                        break;
	                    default:
	                        throw new InvalidChoiceException("Invalid choice! Please select a valid option.");
	                }
	            } catch (InvalidAmountException | InsufficientFundsException | InvalidChoiceException e) {
	                System.out.println("Error: " + e.getMessage());
	            } catch (NullPointerException e) {
	                System.out.println("Error: " + e.getMessage());
	            } 
	            
	        }

	        scanner.close();
	    }
	}

	


