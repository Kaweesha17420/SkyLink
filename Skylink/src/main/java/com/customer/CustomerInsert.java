package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nic = request.getParameter("NIC");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pws");
		
		boolean isTrue;
		
		isTrue = CustomerDbUtil.insertCustomer(nic, name, email, phone, username, password);
		
		//check insert data success or not=============================================================================
	
		
	    if (isTrue) {
	        // For successful registration
	        request.setAttribute("registrationSuccess", "Registration successful! You can now log in.");
	    } else {
	        // For unsuccessful registration
	        request.setAttribute("registrationError", "Registration failed. Please try again.");
	    }

	    RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
	    dis.forward(request, response);
		
	}

}
