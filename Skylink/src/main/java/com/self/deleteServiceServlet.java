package com.self;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/deleteServiceServlet")
public class deleteServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sID = request.getParameter("sID");
        boolean isTrue;

        isTrue = selfDbUtil.deleteService(sID);

        if (isTrue) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("SelfHelp.jsp");
            dispatcher.forward(request, response);
        } else {

            List<Self> selfDetails = selfDbUtil.getServiceDetails(sID);
            request.setAttribute("selfDetails", selfDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("SelfHelp.jsp");
            dispatcher.forward(request, response);
        }
		
	}

}
