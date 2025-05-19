package com.shishirkhadyabhandar.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shishirkhadyabhandar.config.DbConfig;
import com.shishirkhadyabhandar.model.UserModel;

public class UserService {
	
	  private Connection dbConn;

    public UserService() {
    	try {
            this.dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Database connection error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    public UserModel getUser(String username) throws SQLException {
        String query = "SELECT username, fullname, email, phone, role, password FROM users WHERE username = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new UserModel(
                        rs.getString("username"),
                        rs.getString("fullname"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("role"),
                        rs.getString("password")
                    );
                } else {
                    return null;
                }
            }
        }
    }
    
    public boolean updateUserProfile(String username, String fullName, String email, String phone) throws SQLException {
        String query = "UPDATE users SET fullname = ?, email = ?, phone = ? WHERE username = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, fullName);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, username);
            return stmt.executeUpdate() > 0;
        }
    }

}
