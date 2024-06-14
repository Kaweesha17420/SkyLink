package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDbUtil {

	//validation part=======================================================================================================================
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Customer> validate(String userName, String password){
	
		ArrayList<Customer> cus = new ArrayList<>();
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username = '"+userName+"' and password ='"+password+"'  ";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String NIC = rs.getString(2);
				String name= rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
				
				Customer c = new Customer(id,NIC,name,email,phone,userU,passU);
				
				cus.add(c);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
	//Insert Customer data to database==================================================================================================
	
	public static boolean insertCustomer(String NIC,String name,String email,String phone,String username,String password) {
		
		boolean isSuccess =false;
		
	
		try {

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into customer values(0,'"+NIC+"','"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	//Update Customer data in database==================================================================================================
	
	
	public static boolean updatecustomer(String id,String NIC, String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		try {
    		
			con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	
	//get Customer data in database==================================================================================================
	

	 public static List<Customer> getCustomerDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String NIC = rs.getString(2);
	    			String name = rs.getString(3);
	    			String email = rs.getString(4);
	    			String phone = rs.getString(5);
	    			String username = rs.getString(6);
	    			String password = rs.getString(7);
	    			
	    			Customer c = new Customer(id,NIC,name,email,phone,username,password);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	 
	//delete Customer from database==================================================================================================
		 
	 
	 public static boolean deleteCustomer(String id) {

	        boolean isSuccess = false;
	        int convId = Integer.parseInt(id);

	        try {

	            con = DBconnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "delete from customer where id='" + convId + "'";
	            int r = stmt.executeUpdate(sql);

	            if (r > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return isSuccess;
	    }
	 
	
}
