package com.chat;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/InsertChatServlet")
public class InsertChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String description = request.getParameter("chat");
		
		
		boolean isTrue;
		
		isTrue = chatDbUtil.insertChat(description);
		
		//check insert data success or not=============================================================================
	
		
	    if (isTrue) {
	        // For successful registration
	        request.setAttribute("success", "data inserted successfully");
	    } else {
	        // For unsuccessful registration
	        request.setAttribute("Error", "Please try again.");
	    }

	    RequestDispatcher dis = request.getRequestDispatcher("contactUs.jsp");
	    dis.forward(request, response);
		
		
	}

}
