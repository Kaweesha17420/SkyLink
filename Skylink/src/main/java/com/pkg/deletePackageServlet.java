package com.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletePackageServlet")
public class deletePackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pID = request.getParameter("pID");
        boolean isTrue;

        isTrue = packagesDbUtil.deletePackage(pID);

        if (isTrue) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("packages.jsp");
            dispatcher.forward(request, response);
        } else {

            List<Pack> packDetails = packagesDbUtil.getPackageDetails(pID);
            request.setAttribute("packDetails", packDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("packages.jsp");
            dispatcher.forward(request, response);
        }
	}

}
