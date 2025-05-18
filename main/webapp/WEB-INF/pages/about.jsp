<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - Shishir Khadya Bhandar</title>
<style>
  :root {
    --primary-green: #4CAF50; /* Main green */
    --dark-green: #388E3C;   /* Darker green for hover/accents */
    --light-green-bg: #E8F5E9; /* Very light green for backgrounds */
    --text-dark: #333333;
    --text-light: #FFFFFF;
    --border-radius-std: 8px; /* Standard border radius */
    --box-shadow-std: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    color: var(--text-dark);
    line-height: 1.6;
  }

  .container {
    width: 90%;
    max-width: 1200px;
    margin: auto;
    overflow: hidden;
    padding: 0 20px;
  }

  /* Header */
  header {
    background: var(--primary-green);
    color: var(--text-light);
    padding: 1rem 0;
    border-bottom: var(--dark-green) 3px solid;
    position: sticky;
    top: 0;
    z-index: 1000;
  }

  header a {
    color: var(--text-light);
    text-decoration: none;
    text-transform: uppercase;
    font-size: 16px;
  }

  header ul {
    padding: 0;
    list-style: none;
    display: flex;
    justify-content: center;
  }

  header li {
    margin: 0 15px;
  }

  header #branding {
    text-align: center;
    margin-bottom: 10px;
  }

  header #branding h1 {
    margin: 0;
    font-size: 2.5em;
  }

  header nav {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  header nav a:hover {
    color: var(--light-green-bg);
    font-weight: bold;
  }

  /* Page Title Section */
  .page-title-section {
    background: var(--light-green-bg);
    color: var(--dark-green);
    padding: 30px 0;
    text-align: center;
    margin-bottom: 30px;
  }

  .page-title-section h2 {
    font-size: 2.5em;
    margin: 0;
  }

  /* About Content */
  .about-content-section {
    padding: 20px 0;
  }

  .about-block {
    background: #fff;
    padding: 25px;
    margin-bottom: 30px;
    border-radius: var(--border-radius-std);
    box-shadow: var(--box-shadow-std);
  }

  .about-block h3 {
    color: var(--dark-green);
    margin-top: 0;
    border-bottom: 2px solid var(--light-green-bg);
    padding-bottom: 10px;
    margin-bottom: 15px;
  }

  .about-block p {
    font-size: 1.1em;
    margin-bottom: 15px;
    color: #555;
  }

  .about-block ul {
    list-style: disc;
    margin-left: 20px;
    padding-left: 0;
  }

  .about-block ul li {
    margin-bottom: 8px;
    font-size: 1.05em;
    color: #555;
  }

  .team-showcase {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
    text-align: center;
  }

  .team-member img {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid var(--primary-green);
    margin-bottom: 10px;
  }

  .team-member h4 {
    margin: 5px 0;
    color: var(--dark-green);
  }

  .team-member p {
      font-size: 0.9em;
      color: #777;
      margin-top: 0;
  }


  /* Footer */
  footer {
    background: var(--dark-green);
    color: var(--light-green-bg);
    text-align: center;
    padding: 20px 0;
    margin-top: 30px;
  }

  footer p {
    margin: 0;
  }

  /* Responsive adjustments */
  @media(max-width: 768px) {
    header #branding h1 {
        font-size: 2em;
    }
    header nav ul {
        flex-direction: column;
        align-items: center;
    }
    header nav li {
        margin: 5px 0;
    }
    .page-title-section h2 {
        font-size: 2em;
    }
  }
</style>
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
          <li><a href="product">Product</a></li>
          <li><a href="about">About Us</a></li>
          <li><a href="contact">Contact</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <section class="page-title-section">
    <div class="container">
      <h2>About Shishir Khadya Bhandar</h2>
    </div>
  </section>

  <div class="container about-content-section">
    <div class="about-block">
      <h3>Our Story</h3>
      <p>
        Welcome to Shishir Khadya Bhandar, your trusted neighborhood grocery store. Founded with a passion for
        providing fresh, high-quality food products to our community, we have grown from a small local shop
        to a beloved destination for daily essentials and gourmet finds. Our journey began with a simple idea:
        to make good food accessible to everyone, combined with friendly service that makes you feel right at home.
      </p>
      <p>
        We believe that food is more than just sustenance; it's about family, tradition, and health. That's why we
        take great care in sourcing our products, prioritizing local farmers and suppliers whenever possible.
      </p>
    </div>

    <div class="about-block">
      <h3>Our Mission & Values</h3>
      <p>
        Our mission is to be the heart of our community's kitchen by consistently offering a wide selection of
        fresh and quality products at fair prices, all while providing an exceptional shopping experience.
      </p>
      <ul>
        <li><strong>Quality First:</strong> We are committed to stocking only the freshest produce, finest meats, and highest-quality pantry staples.</li>
        <li><strong>Customer Focus:</strong> Your satisfaction is our top priority. We strive to meet your needs with a smile and helpful service.</li>
        <li><strong>Community Spirit:</strong> We believe in giving back and being an active, positive presence in our neighborhood.</li>
        <li><strong>Integrity:</strong> We operate with honesty and transparency in all our dealings with customers, suppliers, and staff.</li>
        <li><strong>Sustainability:</strong> We are increasingly focused on sustainable practices, from reducing waste to supporting eco-friendly suppliers.</li>
      </ul>
    </div>

    <div class="about-block">
        <h3>Meet Our Team</h3>
        <p>
            Behind Shishir Khadya Bhandar is a dedicated team passionate about food and customer service. While we can't introduce everyone here, know that each member plays a vital role in bringing you the best shopping experience.
        </p>
        <div class="team-showcase">
            <div class="team-member">
                <img src="${pageContext.request.contextPath}/images/people/momo.png" alt="Store Owner">
                <h4>Shishir Poudel</h4>
                <p>Founder</p>
            </div>
            <div class="team-member">
                <img src="${pageContext.request.contextPath}/images/people/tea.png" alt="Store Manager">
                <h4>Ram Thapa</h4>
                <p>Store Manager</p>
            </div>
            <div class="team-member">
                <img src="${pageContext.request.contextPath}/images/people/smallg.png" alt="Staff Member">
                <h4>Sita Lama</h4>
                <p>Customer Service Lead</p>
            </div>
        </div>
    </div>

  </div>

  <footer>
    <p>© 2025 Shishir Khadya Bhandar. All Rights Reserved.</p>
  </footer>

</body>
</html>