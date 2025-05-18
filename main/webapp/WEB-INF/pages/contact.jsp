<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us - Shishir Khadya Bhandar</title>
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

  /* Contact Content */
  .contact-content {
    padding: 20px 0;
  }

  .contact-info, .contact-form-section, .map-section {
    background: #fff;
    padding: 25px;
    margin-bottom: 30px;
    border-radius: var(--border-radius-std);
    box-shadow: var(--box-shadow-std);
  }

  .contact-info h3, .contact-form-section h3, .map-section h3 {
    color: var(--dark-green);
    margin-top: 0;
    border-bottom: 2px solid var(--light-green-bg);
    padding-bottom: 10px;
    margin-bottom: 20px;
  }

  .contact-info p {
    font-size: 1.1em;
    margin-bottom: 10px;
  }

  .contact-info i { /* For icons */
    color: var(--primary-green);
    margin-right: 10px;
    width: 20px; /* Ensure consistent icon alignment */
    text-align: center;
  }

  .map-placeholder {
    width: 100%;
    height: 350px;
    background-color: #e0e0e0;
    border-radius: var(--border-radius-std);
    display: flex;
    justify-content: center;
    align-items: center;
    color: #777;
    font-style: italic;
  }
  
  /* Basic Form Styling */
  .contact-form label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: var(--dark-green);
  }
  .contact-form input[type="text"],
  .contact-form input[type="email"],
  .contact-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: var(--border-radius-std);
    box-sizing: border-box; /* So padding doesn't add to width */
  }
  .contact-form textarea {
    height: 150px;
    resize: vertical;
  }
  .contact-form button {
    display: inline-block;
    background: var(--primary-green);
    color: var(--text-light);
    padding: 12px 25px;
    text-decoration: none;
    border-radius: var(--border-radius-std);
    font-size: 1.1em;
    transition: background-color 0.3s ease;
    border: none;
    cursor: pointer;
  }
  .contact-form button:hover {
    background: var(--dark-green);
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
<!-- Font Awesome for icons (optional, but nice for contact info) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
      <h2>Get In Touch</h2>
    </div>
  </section>

  <div class="container contact-content">
    <div class="contact-info">
      <h3>Our Contact Details</h3>
      <p><i class="fas fa-map-marker-alt"></i><strong>Address:</strong>Dhapasi, Kathmandu</p>
      <p><i class="fas fa-phone-alt"></i><strong>Phone:</strong> 9748844595</p>
      <p><i class="fas fa-envelope"></i><strong>Email:</strong> shishir@gmail.com</p>
      <p><i class="fas fa-clock"></i><strong>Operating Hours:</strong> Sunday - Friday: 8:00 AM - 8:00 PM</p>
    </div>

    <div class="contact-form-section">
        <h3>Send Us a Message</h3>
        <form action="#" method="POST" class="contact-form">
            <div>
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div>
                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            <div>
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
            </div>
            <button type="submit">Send Message</button>
        </form>
    </div>

    <div class="map-section">
      <h3>Find Us Here</h3>
      <div class="map-placeholder">
        <iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/directions?origin=dhapasi&destination=dhapasi&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe>
      </div>
    </div>
  </div>

  <footer>
    <p>© 2025 Shishir Khadya Bhandar. All Rights Reserved.</p>
  </footer>

</body>
</html>