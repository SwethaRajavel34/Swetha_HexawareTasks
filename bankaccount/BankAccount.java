package com.hexaware.bankaccount;

public class BankAccount {
	private double balance;

	    // Constructor
	    public BankAccount() {
	        this.balance = 0;
	    }

	    // Deposit method
	    public void deposit(double amount) throws InvalidAmountException {
	        if (amount <= 0) {
	            throw new InvalidAmountException("Amount must be greater than zero.");
	        }
	        balance += amount;
	        System.out.println("Deposited: " + amount);
	    }

	    // Withdraw method
	    public void withdraw(double amount) throws InvalidAmountException, InsufficientFundsException {
	        if (amount <= 0) {
	            throw new InvalidAmountException("Amount must be greater than zero.");
	        }
	        if (amount > balance) {
	            throw new InsufficientFundsException("Insufficient funds.");
	        }
	        balance -= amount;
	        System.out.println("Withdrawn: " + amount);
	    }

	    // Check balance method
	    public double checkBalance() {
	        return balance;
	    }
	}

	

	


