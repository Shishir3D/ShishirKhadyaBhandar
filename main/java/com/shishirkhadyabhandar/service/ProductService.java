package com.shishirkhadyabhandar.service;

import com.shishirkhadyabhandar.config.DbConfig;
import com.shishirkhadyabhandar.model.ProductModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private Connection dbConn;

    public ProductService() {
        try {
            this.dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Database connection error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    // Get all products
    public List<ProductModel> getAllProducts() throws SQLException {
        List<ProductModel> products = new ArrayList<>();
        String query = "SELECT * FROM product";

        try (PreparedStatement stmt = dbConn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                ProductModel product = new ProductModel(
                    rs.getInt("product_id"),
                    rs.getString("product_name"),
                    rs.getString("product_description"),
                    rs.getDouble("product_price"),
                    rs.getString("product_category"),
                    rs.getString("product_image_path")
                );
                products.add(product);
            }
        }

        return products;
    }

    // Get a product by ID
    public ProductModel getProductById(int id) throws SQLException {
        String query = "SELECT * FROM product WHERE product_id = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new ProductModel(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getString("product_description"),
                        rs.getDouble("product_price"),
                        rs.getString("product_category"),
                        rs.getString("product_image_path")
                    );
                }
            }
        }

        return null;
    }

    public void createProduct(ProductModel product) throws SQLException {
        String query = "INSERT INTO product (product_name, product_description, product_price, product_category, product_image_path) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setDouble(3, product.getPrice());
            stmt.setString(4, product.getCategory());
            stmt.setString(5, product.getImageUrl());
            stmt.executeUpdate();
        }
    }

    // Update product
    public void updateProduct(ProductModel product) throws SQLException {
        String query = "UPDATE product SET product_name=?, product_description=?, product_price=?, product_category=?, product_image_path=? WHERE product_id=?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setDouble(3, product.getPrice());
            stmt.setString(4, product.getCategory());
            stmt.setString(5, product.getImageUrl());
            stmt.setInt(6, product.getId());
            stmt.executeUpdate();
        }
    }

    // Delete product
    public void deleteProduct(int id) throws SQLException {
        String query = "DELETE FROM product WHERE product_id=?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }
}
