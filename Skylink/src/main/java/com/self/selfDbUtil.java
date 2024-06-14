package com.self;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class selfDbUtil {

	
	//validation part=======================================================================================================================
	
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			
			
			public static List<Self> validate(String SID){
			
				ArrayList<Self> self = new ArrayList<>();
				
				
				try {
					
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "select * from self where sID ='"+SID+"'   ";
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int sID = rs.getInt(1);
						String topic = rs.getString(2);
						String description1 = rs.getString(3);
						String description2 = rs.getString(4);
						String description3 = rs.getString(5);
						String imagePath = rs.getString(6);
						
						
						Self s = new Self(sID,topic,description1,description2,description3,imagePath);
						self.add(s);
					}
					else {
						System.out.println("errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrror");
					}
					
				}
				catch(Exception e){
					e.printStackTrace();
					
				}
				
				return self;
			}
			
			
			//Insert Customer data to database==================================================================================================
			public static boolean insertSelfService(String topic, String description1,String description2,String description3,String imagePath) {
					
					boolean isSuccess =false;
					
				
					try {
			
						con = DBconnect.getConnection();
						stmt = con.createStatement();
						
						String sql = "insert into self values(0,'"+topic+"','"+description1+"','"+description2+"','"+description3+"','"+imagePath+"')";
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

			public static boolean updateService(String sID,String topic,String description1,String description2,String description3,String imagePath) {
				
				boolean isSuccess = false;
				
				try {
		    		
					con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update self set topic='"+topic+"',description1='"+description1+"',description2='"+description2+"',description3='"+description3+"',imagePath='"+imagePath+"'"
		    				+ "where sID='"+sID+"'";
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
			

			public static List<Self> getServiceDetails(String SID) {
		    	
		    	int convertedID = Integer.parseInt(SID);
		    	
		    	ArrayList<Self> self = new ArrayList<>();
		    	
		    	try {
		    		
		    		con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from self where sID='"+convertedID+"'";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int sID = rs.getInt(1);
						String topic = rs.getString(2);
						String description1 = rs.getString(3);
						String description2 = rs.getString(4);
						String description3 = rs.getString(5);
						String imagePath= rs.getString(6);
		    			
						Self s = new Self(sID,topic,description1,description2,description3,imagePath);
						self.add(s);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}	
		    	return self;	
		    }
			 
			
			 
			//delete Customer from database==================================================================================================
			 public static boolean deleteService(String sID) {

			        boolean isSuccess = false;
			        int convId = Integer.parseInt(sID);

			        try {

			            con = DBconnect.getConnection();
			            stmt = con.createStatement();
			            String sql = "delete from self where sID='" + convId + "'";
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
			
			 
			 
			 
			 
			 public static List<Self> getAllServices() {
			        List<Self> self = new ArrayList<>();
			        Connection con = null;
			        PreparedStatement pstmt = null;
			        ResultSet rs = null;

			        try {
			            con = DBconnect.getConnection();
			            String sql = "SELECT * FROM self";
			            pstmt = con.prepareStatement(sql);
			            rs = pstmt.executeQuery();

			            while (rs.next()) {
			            	int sID = rs.getInt(1);
							String topic = rs.getString(2);
							String description1 = rs.getString(3);
							String description2 = rs.getString(4);
							String description3 = rs.getString(5);
							String imagePath = rs.getString(6);
							
							
							Self s = new Self(sID,topic,description1,description2,description3,imagePath);
							self.add(s);
			            }
			        } catch (Exception e) {
			            e.printStackTrace();
			        } finally {
			            // Close resources properly
			            try {
			                if (rs != null) rs.close();
			                if (pstmt != null) pstmt.close();
			                if (con != null) con.close();
			            } catch (Exception e) {
			                e.printStackTrace();
			            }
			        }

			        return self;
			    }


			
			
			 
			 
}
