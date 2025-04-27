<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <% String error = (String) request.getAttribute("error"); %>
        <% if (error != null) { %>
            <p style="color: red; text-align: center;"><%= error %></p>
        <% } %>

        <form action="register" method="post">
        	<label id="error" name="error" style="color: red; text-align:center">‎‎ </label>
            <label>Full Name:</label>
            <input type="text" name="fullname" required>

            <label>Username:</label>
            <input type="text" name="username" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Phone Number:</label>
            <input type="text" name="phone" required>

            <label>Role:</label>
            <div class="role-options">
                <label><input type="radio" name="role" value="user" checked> User</label>
                <label><input type="radio" name="role" value="admin"> Admin</label>
            </div>

            <label>Password:</label>
            <input type="password" name="password" required>

            <label>Confirm Password:</label>
            <input type="password" name="repassword" required>

            <button type="submit">Register</button>
        </form>
       	<p style="text-align: center;">Already have an account? <a href="login">Login here</a></p>
    </div>
</body>
</html>
