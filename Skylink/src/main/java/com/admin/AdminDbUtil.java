package com.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.DBconnect;

public class AdminDbUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

    public static List<Admin> validate(String username, String password) {
        List<Admin> adminList = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = DBconnect.getConnection();
            String sql = "SELECT * FROM adminstaff WHERE LOWER(username) = LOWER(?) AND password = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username.trim());
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("AdminID");
                String adminUsername = rs.getString("username");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String adminPassword = rs.getString("password");

                Admin admin = new Admin(id, adminUsername, name, email, adminPassword);
                adminList.add(admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return adminList;
    }
    
    public static boolean insertAdmin(String adminUsername, String name, String email, String adminPassword) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean isSuccess = false;

        try {
            con = DBconnect.getConnection();
            String sql = "INSERT INTO adminstaff (username, name, email, password) VALUES (?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, adminUsername);
            pstmt.setString(2, name);
            pstmt.setString(3, email);
            pstmt.setString(4, adminPassword);

            int rowsAffected = pstmt.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
    
    public static boolean updateAdmin(int adminID, String adminUsername, String name, String email, String adminPassword) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean isSuccess = false;

        try {
            con = DBconnect.getConnection();
            String sql = "UPDATE adminstaff SET username = ?, name = ?, email = ?, password = ? WHERE AdminID = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, adminUsername);
            pstmt.setString(2, name);
            pstmt.setString(3, email);
            pstmt.setString(4, adminPassword);
            pstmt.setInt(5, adminID);

            int rowsAffected = pstmt.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
    
    public static List<Admin> getAdminDetails(String AdminID) {
        int convertedID = Integer.parseInt(AdminID);
        
        ArrayList<Admin> adminList = new ArrayList<>();
        

        try {
            con = DBconnect.getConnection();
            String sql = "SELECT * FROM adminstaff WHERE AdminID='"+convertedID+"'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("adminID");
                String adminUsername = rs.getString("username");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String adminPassword = rs.getString("password");
                
                // Create Admin object
                Admin admin = new Admin(id, adminUsername, name, email, adminPassword);
                adminList.add(admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        
        }

        return adminList;
    }
    
    
    
}

