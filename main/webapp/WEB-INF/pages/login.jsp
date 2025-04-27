<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>

        <!-- Display Error Message if login fails -->
        <% String error = (String) request.getAttribute("error"); %>
        <% if (error != null) { %>
            <p style="color: red; text-align: center;"><%= error %></p>
        <% } %>

        <!-- Login Form -->
        <form action="login" method="post">
        	<label id="error" name="error" style="color: red; text-align:center">‎‎ </label>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required placeholder="Enter your username">
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>

            <div class="form-group">
                <button type="submit">Login</button>
            </div>

            <div class="form-group">
                <p>Don't have an account? <a href="register">Register here</a></p>
            </div>
        </form>
    </div>
</body>
</html>
    