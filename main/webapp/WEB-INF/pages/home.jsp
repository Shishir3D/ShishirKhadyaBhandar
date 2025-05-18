<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shishir Khadya Bhandar - Fresh Groceries</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>

  <header>
    <div class="container">
      <div id="branding">
        <h1>Shishir Khadya Bhandar</h1>
      </div>
      <nav>
        <ul>
          <li><a href="home">Home</a></li>
          <li><a href="product">Products</a></li>
          <li><a href="about">About Us</a></li>
          <li><a href="contact">Contact</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <section class="hero">
    <div class="container">
      <h2>Freshness Delivered to Your Doorstep</h2>
      <p>Your one-stop shop for quality groceries, fresh produce, and daily essentials.</p>
      <a href="#our-fresh-selection" class="cta-button">Shop Our Products</a>
    </div>
  </section>

  <section id="our-fresh-selection" class="featured-categories container">
    <h3>Our Fresh Selection</h3>
    <div class="category-grid">
      <div class="category-card">
        <img src="${pageContext.request.contextPath}/images/products/apple.png" alt="Fruits & Vegetables">
        <h4>Fruits & Vegetables</h4>
        <p>Farm-fresh and full of flavor.</p>
        <a href="product" class="cta-button" style="font-size:0.9em; padding: 8px 15px;">View All</a>
      </div>
      <div class="category-card">
        <img src="${pageContext.request.contextPath}/images/products/dairy.jpg" alt="Dairy & Eggs">
        <h4>Dairy & Eggs</h4>
        <p>Fresh milk, cheese, yogurt, and eggs.</p>
        <a href="product" class="cta-button" style="font-size:0.9em; padding: 8px 15px;">View All</a>
      </div>
      <div class="category-card">
        <img src="${pageContext.request.contextPath}/images/products/bread.png" alt="Bakery">
        <h4>Bakery & Breads</h4>
        <p>Deliciously baked goods, fresh daily.</p>
        <a href="product" class="cta-button" style="font-size:0.9em; padding: 8px 15px;">View All</a>
      </div>
      <div class="category-card">
        <img src="${pageContext.request.contextPath}/images/products/oil.png" alt="Pantry Staples">
        <h4>Pantry Staples</h4>
        <p>Grains, spices, oils, and more.</p>
        <a href="product" class="cta-button" style="font-size:0.9em; padding: 8px 15px;">View All</a>
      </div>
    </div>
  </section>

  <section id="about" class="about-snippet">
    <div class="container">
        <h3>Welcome to Shishir Khadya Bhandar</h3>
        <p>
            At Shishir Khadya Bhandar, we are committed to providing our community with the freshest groceries,
            highest quality products, and friendly service. Since our establishment, we've been dedicated to
            sourcing the best local and international goods to fill your pantry.
        </p>
        <a href="about" class="cta-button">Learn More About Us</a>
    </div>
  </section>

  <section id="contact" class="container" style="text-align:center; padding: 30px 0;">
      <h3>Get In Touch</h3>
      <p>Have questions? Visit us or give us a call!</p>
      <p><strong>Address:</strong>Dhapasi,Kathmandu</p>
      <p><strong>Phone:</strong>123456789</p>
      <p><strong>Email:</strong>shishir@gmail.com</p>
  </section>

  <footer>
    <p>©2025 Shishir Khadya Bhandar. All Rights Reserved.</p>
  </footer>

</body>
</html>