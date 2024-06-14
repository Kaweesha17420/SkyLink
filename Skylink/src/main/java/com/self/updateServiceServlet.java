package com.self;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateServiceServlet")
public class updateServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String sID = request.getParameter("sID");
		String topic = request.getParameter("topic");
		String description1 = request.getParameter("description1");
		String description2 = request.getParameter("description2");
		String description3 = request.getParameter("description3");
		String imagePath = request.getParameter("imagePath");
		
		boolean isTrue;
		
		isTrue = selfDbUtil.updateService(sID, topic, description1, description2, description3, imagePath);
		
		if(isTrue == true) {
			
			List<Self> selfDetails = selfDbUtil.getServiceDetails(sID);
			request.setAttribute("selfDetails", selfDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("SelfHelp.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Self> selfDetails = selfDbUtil.getServiceDetails(sID);
			request.setAttribute("selfDetails", selfDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
		}
	}

}
