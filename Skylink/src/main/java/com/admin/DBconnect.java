package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	private static String url = "jdbc:mysql://localhost:3306/skylink";
	private static String user = "root";
	private static String pass = "@PwS17420";
	
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,user,pass);
			
		}
		catch(Exception e) {
			System.out.println("Connection failed!!!");
		}
		
		return con;
	}
	
}
