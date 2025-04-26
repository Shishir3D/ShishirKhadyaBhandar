package com.shishirkhadyabhandar.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shishirkhadyabhandar.config.DbConfig;
import com.shishirkhadyabhandar.model.UserModel;

public class RegisterService {

	  private Connection dbConn;

	    public RegisterService() {
	        try {
	            this.dbConn = DbConfig.getDbConnection();
	        } catch (SQLException | ClassNotFoundException ex) {
	            System.err.println("Database connection error: " + ex.getMessage());
	            ex.printStackTrace();
	        }
	    }

	    public Connection getDbConn() {
	        if (dbConn == null) {
	            try {
	                this.dbConn = DbConfig.getDbConnection();
	            } catch (SQLException | ClassNotFoundException ex) {
	                System.err.println("Database connection error: " + ex.getMessage());
	                ex.printStackTrace();
	            }
	        }
	        return dbConn;
	    }
	    
	    public int registerUser(UserModel user) throws ClassNotFoundException {
	        try {
	            String query_register_user = "INSERT INTO user (username, fullname, email, phone, role, password) " +
	                                         "VALUES (?, ?, ?, ?, ?, ?)";

	            PreparedStatement stmt = dbConn.prepareStatement(query_register_user);

	            // Set the user information in the prepared statement
	            stmt.setString(1, user.getUsername());
	            stmt.setString(2, user.getFullname());
	            stmt.setString(3, user.getEmail());
	            stmt.setString(4, user.getPhone());
	            stmt.setString(5, user.getRole());
	            stmt.setString(6, user.getPassword());

	            int result = stmt.executeUpdate();

	            if (result > 0) {
	                return 1; // Registration successful
	            } else {
	                return 0; // Registration failed
	            }

	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            return -1; // Internal error
	        }
	    }


}
