package com.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pkgName = request.getParameter("sch");

        try {
            List<Pack> packDetails = packagesDbUtil.validate(pkgName);
            if (packDetails.isEmpty()) {
                // Package not found, send invalid response
                response.getWriter().write("invalid package Name.... Try Again !");
            } else {
                // Packages found, set them as request attribute
                request.setAttribute("packDetails", packDetails);
                // Forward the request to the resultpack.jsp page
                RequestDispatcher dis = request.getRequestDispatcher("resultpack.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Exception occurred, set error message
            request.setAttribute("errorMessage", "An error occurred while processing your request");
            // Forward the request back to the search page
            RequestDispatcher dis = request.getRequestDispatcher("packages.jsp");
            dis.forward(request, response);
        }
    }
}
