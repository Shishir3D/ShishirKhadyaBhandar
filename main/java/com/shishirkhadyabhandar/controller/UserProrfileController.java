package com.shishirkhadyabhandar.controller;

import com.shishirkhadyabhandar.model.UserModel;
import com.shishirkhadyabhandar.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/userProfile")
public class UserProrfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private final UserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		String username = (session != null) ? (String) session.getAttribute("user") : null;

		if (username == null) {
			response.sendRedirect("login");
			return;
		}

		try {
			UserModel user = userService.getUser(username);
			if (user != null) {
				request.setAttribute("user", user);
				request.getRequestDispatcher("WEB-INF/pages/userProfile.jsp").forward(request, response);
			} else {
				response.sendRedirect("home");
			}
		} catch (Exception e) {
			throw new ServletException("Failed to load user profile", e);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
