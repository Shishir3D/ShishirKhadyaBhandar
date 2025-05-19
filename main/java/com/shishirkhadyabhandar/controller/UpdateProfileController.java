package com.shishirkhadyabhandar.controller;

import com.shishirkhadyabhandar.model.UserModel;
import com.shishirkhadyabhandar.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/updateProfile")
public class UpdateProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserService userService;

    @Override
    public void init() throws ServletException {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        
        String username = request.getParameter("username");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        System.out.println("here1");


        try {
            boolean success = userService.updateUserProfile(username, fullName, email, phone);
            if (success) {
            	UserModel updatedUser = userService.getUser(username);
                request.setAttribute("user", updatedUser);
                request.getRequestDispatcher("WEB-INF/pages/userProfile.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/userProfile");
                request.setAttribute("error", "Failed to update profile.");
                request.getRequestDispatcher("WEB-INF/pages/userProfile.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Cannot have duplicate number or email.");
            request.getRequestDispatcher("WEB-INF/pages/userProfile.jsp").forward(request, response);
            throw new ServletException("Database error while updating profile", e);
        }
    }
}
