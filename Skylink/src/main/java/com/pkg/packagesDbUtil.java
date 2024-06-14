package com.pkg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;
import com.customer.DBconnect;


public class packagesDbUtil {

	//validation part=======================================================================================================================
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Pack> validate(String pkgname){
	
		ArrayList<Pack> pkg = new ArrayList<>();
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from packages where pkgName ='"+pkgname+"'   ";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int pID = rs.getInt(1);
				String pkgName = rs.getString(2);
				String price= rs.getString(3);
				String description1 = rs.getString(4);
				String description2 = rs.getString(5);
				String description3 = rs.getString(6);
				
				
				Pack p = new Pack(pID,pkgName,price,description1,description2,description3);
    			pkg.add(p);
			}
			else {
				System.out.println("errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrror");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return pkg;
	}
	
	
	//Insert Customer data to database==================================================================================================
	public static boolean insertpackage(String pkgName,String price,String description1,String description2,String description3) {
			
			boolean isSuccess =false;
			
		
			try {
	
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into packages values(0,'"+pkgName+"','"+price+"','"+description1+"','"+description2+"','"+description3+"')";
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

	public static boolean updatePackage(String pID,String pkgName,String price,String description1,String description2,String description3) {
		
		boolean isSuccess = false;
		
		try {
    		
			con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update packages set pkgName='"+pkgName+"',price='"+price+"',description1='"+description1+"',description2='"+description2+"',description3='"+description3+"'"
    				+ "where pID='"+pID+"'";
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
	

	 public static List<Pack> getPackageDetails(String PID) {
	    	
	    	int convertedID = Integer.parseInt(PID);
	    	
	    	ArrayList<Pack> pkg = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from packages where pID='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int pID = rs.getInt(1);
					String pkgName = rs.getString(2);
					String price= rs.getString(3);
					String description1 = rs.getString(4);
					String description2 = rs.getString(5);
					String description3 = rs.getString(6);
	    			
					Pack p = new Pack(pID,pkgName,price,description1,description2,description3);
	    			pkg.add(p);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return pkg;	
	    }
	 
	
	 
	//delete Customer from database==================================================================================================
	 public static boolean deletePackage(String pID) {

	        boolean isSuccess = false;
	        int convId = Integer.parseInt(pID);

	        try {

	            con = DBconnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "delete from packages where pID='" + convId + "'";
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
	
	 
	 
	 
	 
	 public static List<Pack> getAllPackages() {
		    ArrayList<Pack> packages = new ArrayList<>();
		    
		    try {
		        con = DBconnect.getConnection();
		        stmt = con.createStatement();
		        String sql = "SELECT * FROM packages";
		        rs = stmt.executeQuery(sql);
		        
		        while (rs.next()) {
		            int pID = rs.getInt(1);
		            String pkgName = rs.getString(2);
		            String price = rs.getString(3);
		            String description1 = rs.getString(4);
		            String description2 = rs.getString(5);
		            String description3 = rs.getString(6);
		            
		            Pack p = new Pack(pID, pkgName, price, description1, description2, description3);
		            packages.add(p);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        // Close resources (stmt, rs, con) properly
		    }
		    
		    return packages;
		}

	 
	
}
