package com.shishirkhadyabhandar.service;

import java.sql.*;

import com.shishirkhadyabhandar.model.UserModel;

public class LoginService {
    private Connection dbConn;

    // Get DB connection
    public Connection getDbConn() {
        return dbConn;
    }

    public LoginService() {
        try {
            // Database connection setup (adjust according to your DB)
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.dbConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shishir_khadya_bhandar", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    // Authenticate the user
    public boolean authenticateUser(String username, String password) throws SQLException {
        String query = "SELECT * FROM users WHERE username = ? AND password = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            return rs.next(); // If the user exists and password matches, return true
        }
    }
}
