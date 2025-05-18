<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - Shishir Khadya Bhandar</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product.css">
</head>
<body>

    <header>
        <div class="container">
          <div id="branding">
            <h1>Shishir Khadya Bhandar</h1>
          </div>
          <nav>
            <ul>
              <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
              <li><a href="${pageContext.request.contextPath}/product">Products</a></li>
              <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
              <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
            </ul>
          </nav>
        </div>
    </header>


    <main class="container">

        <section class="hero-banner">
            <img src="${pageContext.request.contextPath}/images/hero.png" alt="Fresh Groceries Banner">

        </section>

        <!-- Featured Products Section -->
        <section class="featured-products section-padding">
            <h2>Fresh Arrivals</h2>
            <div class="product-grid">
                <%-- Product Card Example (Repeat this structure) --%>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/saag.jpg" alt="Saag">
                    <h3>Saag (Kg)</h3>
                    <p class="price">Rs. 80</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/apple.png" alt="Apple - Mustang">
                    <h3>Apple - Mustang (Kg)</h3>
                    <p class="price">Rs. 250</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/milk.png" alt="Fresh Milk">
                    <h3>Fresh Milk (1L)</h3>
                    <p class="price">Rs. 95</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/rice.png" alt="Basmati Rice">
                    <h3>Basmati Rice (Kg)</h3>
                    <p class="price">Rs. 180</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/lays.png" alt="Lays">
                    <h3>Lays</h3>
                    <p class="price">Rs. 40</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/oil.png" alt="Oil">
                    <h3>Oil (2L)</h3>
                    <p class="price">Rs. 220</p>
                </div>
                <%-- Add more product cards as needed --%>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/saag.jpg" alt="Saag">
                    <h3>Saag (Kg)</h3>
                    <p class="price">Rs. 80</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/apple.png" alt="Apple - Mustang">
                    <h3>Apple - Mustang (Kg)</h3>
                    <p class="price">Rs. 250</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/milk.png" alt="Fresh Milk">
                    <h3>Fresh Milk (1L)</h3>
                    <p class="price">Rs. 95</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/rice.png" alt="Basmati Rice">
                    <h3>Basmati Rice (Kg)</h3>
                    <p class="price">Rs. 180</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/lays.png" alt="Lays">
                    <h3>Lays</h3>
                    <p class="price">Rs. 40</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/products/oil.png" alt="Oil">
                    <h3>Oil (2L)</h3>
                    <p class="price">Rs. 220</p>
                </div>
                
                                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/saag.jpg" alt="Saag">
                    <h3>Saag (Kg)</h3>
                    <p class="price">Rs. 80</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/apple.png" alt="Apple - Mustang">
                    <h3>Apple - Mustang (Kg)</h3>
                    <p class="price">Rs. 250</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/milk.png" alt="Fresh Milk">
                    <h3>Fresh Milk (1L)</h3>
                    <p class="price">Rs. 95</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/rice.png" alt="Basmati Rice">
                    <h3>Basmati Rice (Kg)</h3>
                    <p class="price">Rs. 180</p>
                </div>
                 <div class="product-card">
                    <img src="https://via.placeholder.com/180x180/E8F5E9/000000?text=Snack" alt="Potato Chips">
                    <h3>Potato Chips</h3>
                    <p class="price">Rs. 50</p>
                </div>
                 <div class="product-card">
                    <img src="https://via.placeholder.com/180x180/E8F5E9/000000?text=Beverage" alt="Orange Juice">
                    <h3>Orange Juice (1L)</h3>
                    <p class="price">Rs. 220</p>
                </div>
            </div>
        </section>

    </main>


    <footer>
        <p>©2025 Shishir Khadya Bhandar. All Rights Reserved.</p>
    </footer>

</body>
</html>