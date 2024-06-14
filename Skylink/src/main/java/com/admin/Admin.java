package com.admin;

public class Admin {
    private int adminID;
    private String username;
    private String name;
    private String email;
    private String password;
    
    
	public Admin(int adminID, String username, String name, String email, String password) {
		super();
		this.adminID = adminID;
		this.username = username;
		this.name = name;
		this.email = email;
		this.password = password;
	}


	public int getAdminID() {
		return adminID;
	}


	public String getUsername() {
		return username;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}



    
    




    
    
}