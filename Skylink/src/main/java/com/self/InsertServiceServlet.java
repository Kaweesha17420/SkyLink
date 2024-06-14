package com.self;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pkg.packagesDbUtil;


@WebServlet("/InsertServiceServlet")
public class InsertServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String sID = request.getParameter("sID");
		String topic = request.getParameter("topic");
		String description1 = request.getParameter("description1");
		String description2 = request.getParameter("description2");
		String description3 = request.getParameter("description3");
		String imagePath = request.getParameter("imagePath");
		
		boolean isTrue;
		
		isTrue = selfDbUtil.insertSelfService(topic, description1, description2, description3, imagePath);
		
		//check insert data success or not=============================================================================
	
		
	    if (isTrue) {
	        // For successful registration
	        request.setAttribute("success", "data inserted successfully");
	    } else {
	        // For unsuccessful registration
	        request.setAttribute("Error", "Please try again.");
	    }

	    RequestDispatcher dis = request.getRequestDispatcher("SelfHelp.jsp");
	    dis.forward(request, response);
		
		
		
		
	}

}
