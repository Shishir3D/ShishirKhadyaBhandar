package com.shishirkhadyabhandar.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.shishirkhadyabhandar.model.ProductModel;
import com.shishirkhadyabhandar.service.ProductService;

@WebServlet("/updateProduct")
public class UpdateProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductService productService;

    @Override
    public void init() throws ServletException {
        productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<ProductModel> products = productService.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("WEB-INF/pages/product.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Unable to load products", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
