package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters from the form
        int adminID = Integer.parseInt(request.getParameter("adminID"));
        String adminUsername = request.getParameter("adminUsername");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Call the updateAdmin method from AdminDbUtil
        boolean isSuccess = AdminDbUtil.updateAdmin(adminID, adminUsername, name, email, password);

        if (isSuccess) {
            // If the update was successful, get the updated admin details
            List<Admin> adminDetails = AdminDbUtil.getAdminDetails(String.valueOf(adminID));
            request.setAttribute("adminDetails", adminDetails);
            request.getRequestDispatcher("profile.jsp").forward(request, response); // Redirect to admin profile page
        } else {
            // If the update failed, handle the error accordingly (e.g., show an error message)
            // You can redirect to an error page or display an error message on the same page
            // For simplicity, let's redirect to an error page
            response.sendRedirect("error.jsp");
        }
    }
}
