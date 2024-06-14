package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Catch data from user input
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");

        try {
            List<Customer> cusDetails = CustomerDbUtil.validate(username, password);
            if (cusDetails != null && !cusDetails.isEmpty()) {
                // Login successful, set customer details attribute in session
                HttpSession session = request.getSession();
                session.setAttribute("cusDetails", cusDetails);
                session.setAttribute("loggedInUser", cusDetails.get(0));
                // Forward to the user account page
                response.sendRedirect("profile.jsp");
            } else {
                // Login failed, set error message attribute
                request.setAttribute("loginError", "Invalid username or password");
                // Forward back to the login page
                RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                dis.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page
            response.sendRedirect("error.jsp");
        }
    }
}
