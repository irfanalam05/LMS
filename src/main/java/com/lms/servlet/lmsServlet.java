package com.lms.servlet;

import com.lms.dao.lmsDAO;
import com.lms.model.lms_user;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class lmsServlet extends HttpServlet {

    private lmsDAO userDao;

    @Override
    public void init() {
        userDao = new lmsDAO();  // Initialize the DAO for interacting with the database
    }

    // Handle GET request to show the registration form
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to the registration JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        dispatcher.forward(request, response);
    }

    // Handle POST request to process registration form data
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get data from the registration form
        String uname = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String passwd = request.getParameter("password");

        // Create LmsUser object and store it in the database
        lms_user newUser = new lms_user(0, uname, email, country, passwd);
        userDao.insertUser(uname, email, country, passwd);

        // Redirect to login page after successful registration
        response.sendRedirect("login.jsp");
    }
}
