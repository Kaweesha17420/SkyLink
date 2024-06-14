package com.chat;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class chatDbUtil {

	//validation part=======================================================================================================================
	
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		
		public static List<Chat> validate(String chatID){
		
			ArrayList<Chat> chat = new ArrayList<>();
			
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from chat where chatId ='"+chatID+"'   ";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int chatId = rs.getInt(1);
					String description = rs.getString(2);
					
					
					
					Chat c = new Chat(chatId,description);
					chat.add(c);
				}
				else {
					System.out.println("errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrror");
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
				
			}
			
			return chat;
		}
		
		
		//Insert Customer data to database==================================================================================================
		public static boolean insertChat(String description) {
				
				boolean isSuccess =false;
				
			
				try {
		
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "insert into chat values(0,'"+description+"')";
				
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

		public static boolean updateChat(String chatId,String description) {
			
			boolean isSuccess = false;
			
			try {
	    		
				con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update chat set description='"+description+"'"
	    				+ "where chatId='"+chatId+"'";
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
		

		 public static List<Chat> getChatDetails(String chatID) {
		    	
		    	int convertedID = Integer.parseInt(chatID);
		    	
		    	ArrayList<Chat> chat = new ArrayList<>();
		    	
		    	try {
		    		
		    		con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from chat where chatId='"+convertedID+"'";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int chatId = rs.getInt(1);
						String description = rs.getString(2);
		    			
						Chat c = new Chat(chatId,description);
						chat.add(c);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}	
		    	return chat;	
		    }
		 
		
		 
		//delete Customer from database==================================================================================================
		 public static boolean deleteChat(String chatId) {

		        boolean isSuccess = false;
		        int convId = Integer.parseInt(chatId);

		        try {

		            con = DBconnect.getConnection();
		            stmt = con.createStatement();
		            String sql = "delete from chat where chatId='" + convId + "'";
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
		
		 
		 
		 
		 
		 public static List<Chat> getAllChats() {
			    ArrayList<Chat> chat = new ArrayList<>();
			    
			    try {
			        con = DBconnect.getConnection();
			        stmt = con.createStatement();
			        String sql = "SELECT * FROM chat";
			        rs = stmt.executeQuery(sql);
			        
			        while (rs.next()) {
			        	int chatId = rs.getInt(1);
						String description = rs.getString(2);
		    			
						Chat c = new Chat(chatId,description);
						chat.add(c);
			        }
			    } catch (Exception e) {
			        e.printStackTrace();
			    } finally {
			        // Close resources (stmt, rs, con) properly
			    }
			    
			    return chat;
			}
		 
		 


		 
		 
}
