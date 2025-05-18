package com.shishirkhadyabhandar.controller;

import com.shishirkhadyabhandar.model.UserModel;
import com.shishirkhadyabhandar.service.RegisterService;
import com.shishirkhadyabhandar.util.RegisterValidationUtil; // Import the utility class

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String key = "abc";

    private RegisterService registerService = new RegisterService();

    public RegisterController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.removeAttribute("error"); // Clear previous errors
        request.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 1. Retrieve ALL form parameters
        String fullName = request.getParameter("fullname");
        String userName = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phone");
        String role = request.getParameter("role");
        String adminKey = request.getParameter("key");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        // 2. Perform Validation using the Utility Class
        String errorMessage = RegisterValidationUtil.validateRegistration(
                fullName, userName, email, phoneNumber,
                role, adminKey, password, repassword,
                key // Pass the expected key
        );

        // 3. If Validation Failed, forward back to JSP with error
        if (errorMessage != null) {
            request.setAttribute("error", errorMessage);
            // Repopulate fields for better UX (don't repopulate passwords)
            repopulateFormOnError(request, fullName, userName, email, phoneNumber, role);
            request.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(request, response);
            return; // Stop further processing
        }

        // 4. If Validation Passed, proceed with registration
        // Trim values before creating the model to store clean data
        UserModel user = new UserModel(
            userName.trim(), // Use trimmed username
            fullName.trim(),
            email.trim(),
            phoneNumber.trim(),
            role.trim(), // Use trimmed role
            password // Password should not be trimmed - whitespace might be intentional
        );

        try {
            // Attempt to register the user via the service
            int result = registerService.registerUser(user);

            if (result == 1) {
                // SUCCESS: Registration successful
                // Redirect to login page (Post-Redirect-Get pattern)
                response.sendRedirect(request.getContextPath() + "/login");
                return; // Stop processing after redirect
            } else {
                // FAILURE: Service indicated registration failed (e.g., duplicate user)
                 request.setAttribute("error", "Registration failed. The username or email might already exist.");
            }

        /* } catch (SQLException e) {
            e.printStackTrace(); // Log the full error for server admins
            request.setAttribute("error", "Database error during registration. Please try again later."); */
        } catch (ClassNotFoundException e) { // Less likely unless dynamic class loading issues
             e.printStackTrace();
             request.setAttribute("error", "Server configuration error. Please try again later.");
        } catch (Exception e) { // Catch unexpected service layer errors
            e.printStackTrace();
            request.setAttribute("error", "An unexpected error occurred. Please try again later.");
        }

        // 5. If registration failed (result != 1 or exception), forward back to JSP
        // Repopulate fields again for better UX
        repopulateFormOnError(request, fullName, userName, email, phoneNumber, role);
        request.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(request, response);
    }

    /**
     * Helper method to set request attributes to repopulate the form fields
     * when an error occurs, avoiding password repopulation.
     */
    private void repopulateFormOnError(HttpServletRequest request, String fullName, String userName,
                                        String email, String phoneNumber, String role) {
        request.setAttribute("fullname", fullName);
        request.setAttribute("username", userName);
        request.setAttribute("email", email);
        request.setAttribute("phone", phoneNumber);
        request.setAttribute("role", role);
    }
}