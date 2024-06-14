package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminloginServlet")
public class AdminloginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("uid").trim();
        String password = request.getParameter("pass");

        try {
            List<Admin> adminDetails = AdminDbUtil.validate(username, password);

            if (!adminDetails.isEmpty()) {
                // Login successful, set admin details attribute in session
                HttpSession session = request.getSession();
                session.setAttribute("adminDetails", adminDetails);
                // Redirect to the admin profile page
                response.sendRedirect("profile.jsp");
            } else {
                // Login failed, set error message attribute
                request.setAttribute("loginError", "Invalid username or password");
                // Forward back to the login page
                RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page
            response.sendRedirect("error.jsp");
        }
    }
}