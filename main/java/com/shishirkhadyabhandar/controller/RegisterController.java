package com.shishirkhadyabhandar.controller;

import com.shishirkhadyabhandar.model.UserModel;
import com.shishirkhadyabhandar.service.RegisterService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private RegisterService registerService = new RegisterService();

    public RegisterController() {
        super();
    }

    // Handle GET request to show the registration form
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(request, response);
    }

    // Handle POST request to register a user
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if DB connection is available
        if (registerService.getDbConn() == null) {
            System.out.println("Couldn't connect to the database. Please try again later.");
            return;
        }

        // Retrieve form parameters
        String userName = request.getParameter("username");
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phone");
        String role = request.getParameter("role");

        // Create UserModel instance
        UserModel user = new UserModel(userName, fullName, email, phoneNumber, role, password);
                
        // Try to register the user
        try {
            int result = registerService.registerUser(user);
            
            if (result == 1) {
                // If registration is successful, redirect to the login page
                response.sendRedirect(request.getContextPath() + "/login");
            } else {
                // If registration fails, display an error message
                System.out.println("Registration failed. Please try again later.");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Internal error occurred. Please try again later.");
            e.printStackTrace();
        }
        
		System.out.println("User ko naam is " + userName);
		
		if (userName.length() < 5) {			
			request.setAttribute("error", "Username invalid");
			request.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(request, response);
		} else {			
            // Store user in session
            HttpSession session = request.getSession();
            System.out.println("This is session :");
            System.out.println(session);
            session.setAttribute("user", userName);
            
			//response.sendRedirect("login");
		}
        
    }
    
    
}
