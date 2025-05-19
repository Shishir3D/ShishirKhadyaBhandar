package com.shishirkhadyabhandar.service;

import java.sql.*;

import com.shishirkhadyabhandar.config.DbConfig;
import com.shishirkhadyabhandar.util.PasswordUtil;

public class LoginService {
    private Connection dbConn;

    public LoginService() {
    	try {
            this.dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Database connection error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    public Connection getDbConn() {
        return dbConn;
    }

    /**
     * Authenticates a user with username and password.
     * @return true if credentials are valid, false otherwise
     */
    public boolean authenticateUser(String username, String password) throws SQLException {
        String query = "SELECT password FROM users WHERE username = ?";
        
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    String encryptedPassword = rs.getString("password");
                    String decryptedPassword = PasswordUtil.decrypt(encryptedPassword, username);
                    
                    return password.equals(decryptedPassword);
                } else {
                    return false; // User not found
                }
            }
        }
    }

    /**
     * Retrieves the role of a user from the database
     * @param username The username to look up
     * @return "user", "admin", or null if not found
     */
    public String getRole(String username) throws SQLException {
        String query = "SELECT role FROM users WHERE username = ?";
        
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString("role");
                } else {
                    return null; // User not found
                }
            }
        }
    }
    
}
