package com.shishirkhadyabhandar.controller;

import com.shishirkhadyabhandar.service.LoginService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginService loginService = new LoginService();

    public LoginController() {
        super();
    }

    // Handle GET request (display login form)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/pages/login.jsp").forward(request, response);
    }

    // Handle POST request (process login attempt)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Attempt to authenticate the user
            boolean isAuthenticated = loginService.authenticateUser(username, password);
            
            if (isAuthenticated) {
                // If credentials are correct, redirect to a logged-in page (e.g., dashboard)
                response.sendRedirect(request.getContextPath() + "/dashboard");
            } else {
                // If credentials are incorrect, show an error message
                request.setAttribute("error", "Invalid username or password.");
                request.getRequestDispatcher("WEB-INF/pages/login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            // If there's an issue with the database connection or query
            e.printStackTrace();
            request.setAttribute("error", "Internal server error. Please try again later.");
            request.getRequestDispatcher("WEB-INF/pages/login.jsp").forward(request, response);
        }
    }
}
