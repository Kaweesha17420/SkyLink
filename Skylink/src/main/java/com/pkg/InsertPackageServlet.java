package com.pkg;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertPackageServlet")
public class InsertPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pkgName = request.getParameter("pkgName");
		String price = request.getParameter("price");
		String description1 = request.getParameter("description1");
		String description2 = request.getParameter("description2");
		String description3 = request.getParameter("description3");
		
		boolean isTrue;
		
		isTrue = packagesDbUtil.insertpackage(pkgName,price,description1,description2,description3);
		
		//check insert data success or not=============================================================================
	
		
	    if (isTrue) {
	        // For successful registration
	        request.setAttribute("success", "data inserted successfully");
	    } else {
	        // For unsuccessful registration
	        request.setAttribute("Error", "Please try again.");
	    }

	    RequestDispatcher dis = request.getRequestDispatcher("packages.jsp");
	    dis.forward(request, response);
		
		
	}

}
