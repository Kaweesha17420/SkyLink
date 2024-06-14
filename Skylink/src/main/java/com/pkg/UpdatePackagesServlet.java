package com.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatePackagesServlet")
public class UpdatePackagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String pID = request.getParameter("pID");
		String pkgName = request.getParameter("pkgName");
		String price = request.getParameter("price");
		String description1 = request.getParameter("description1");
		String description2 = request.getParameter("description2");
		String description3 = request.getParameter("description3");
		
		boolean isTrue;
		
		isTrue = packagesDbUtil.updatePackage(pID, pkgName, price, description1, description2, description3);
		
		if(isTrue == true) {
			
			List<Pack> packDetails = packagesDbUtil.getPackageDetails(pID);
			request.setAttribute("packDetails", packDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("packages.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Pack> packDetails = packagesDbUtil.getPackageDetails(pID);
			request.setAttribute("packDetails", packDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("resultpack.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
