<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shishir Khadya Bhandar - Fresh Groceries Online</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>

    <!-- ======================== Header ======================== -->
    <header class="skb-header">
        <div class="container header-container">
            <div class="logo">
                <%-- Placeholder for Shishir Khadya Bhandar Logo --%>
                <a href="#">
                   <%-- Replace with <img> if you have a logo file --%>
                   <span class="logo-text">Shishir Khadya Bhandar</span>
                </a>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search for groceries...">
                <button type="submit">SEARCH</button>
            </div>
            <div class="user-actions">
                <a href="#">Login</a> | <a href="#">Sign Up</a>
                <a href="#" class="cart-icon">🛒<span class="cart-count">0</span></a> <%-- Placeholder Cart --%>
            </div>
        </div>
    </header>

    <!-- ======================== Navigation ======================== -->
    <nav class="skb-nav">
        <div class="container">
            <ul>
                <li><a href="#">Vegetables</a></li>
                <li><a href="#">Fruits</a></li>
                <li><a href="#">Dairy & Eggs</a></li>
                <li><a href="#">Grains & Pulses</a></li>
                <li><a href="#">Snacks</a></li>
                <li><a href="#">Beverages</a></li>
            </ul>
        </div>
    </nav>

    <!-- ======================== Main Content ======================== -->
    <main class="container">

        <!-- Hero Banner Section (Placeholder) -->
        <section class="hero-banner">
            <img src="${pageContext.request.contextPath}/images/hero.png" alt="Fresh Groceries Banner">
        </section>

        <!-- Featured Products Section -->
        <section class="featured-products section-padding">
            <h2>Fresh Arrivals</h2>
            <div class="product-grid">
                <%-- Product Card Example (Repeat this structure) --%>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/saag.jpg" alt="Product Name">
                    <h3>Saag (Kg)</h3>
                    <p class="price">Rs. 80</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/apple.png" alt="Product Name">
                    <h3>Apple - Mustang (Kg)</h3>
                    <p class="price">Rs. 250</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/milk.png" alt="Product Name">
                    <h3>Fresh Milk (1L)</h3>
                    <p class="price">Rs. 95</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/rice.png" alt="Product Name">
                    <h3>Basmati Rice (Kg)</h3>
                    <p class="price">Rs. 180</p>
                </div>
                 <div class="product-card">
                    <img src="https://via.placeholder.com/180x180/E8F5E9/000000?text=Snack" alt="Product Name">
                    <h3>Potato Chips</h3>
                    <p class="price">Rs. 50</p>
                </div>
                 <div class="product-card">
                    <img src="https://via.placeholder.com/180x180/E8F5E9/000000?text=Beverage" alt="Product Name">
                    <h3>Orange Juice (1L)</h3>
                    <p class="price">Rs. 220</p>
                </div>
                <%-- Add more product cards as needed --%>
            </div>
        </section>

        <%-- Minimal structure - only one main product section --%>

    </main>

    <!-- ======================== Footer ======================== -->
    <footer class="skb-footer">
        <div class="container footer-container">
            <div class="footer-section">
                <h4>Customer Service</h4>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">How to Order</a></li>
                    <li><a href="#">Delivery Info</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Shishir Khadya Bhandar</h4>
                 <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Store Location</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Connect With Us</h4>
                <%-- Add social media icons/links here if needed --%>
                <p>Find us on Social Media!</p>
                <p>Payment Methods Accepted</p> <%-- List specific methods if desired --%>
            </div>
        </div>
        <div class="container copyright">
            <p>© Shishir Khadya Bhandar <%= new java.text.SimpleDateFormat("yyyy").format(new Date()) %>. All Rights Reserved.</p>
        </div>
    </footer>

</body>
</html>