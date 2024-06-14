package com.customer;

public class Customer {

	private int id;
	private String NIC ;
	private String name;
	private String email;
	private String phone;
	private String username;
	private String password;
	
	//constructors
	public Customer(int id, String nIC, String name, String email, String phone, String username, String password) {
		
		this.id = id;
		NIC = nIC;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getNIC() {
		return NIC;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	
	
}
