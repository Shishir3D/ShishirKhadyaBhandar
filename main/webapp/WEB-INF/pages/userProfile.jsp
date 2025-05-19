<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile - Shishir Khadya Bhandar</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userProfile.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <div class="container header-flex-container">
          <div id="branding">
            <h1><a href="${pageContext.request.contextPath}/home">Shishir Khadya Bhandar</a></h1>
          </div>
          <nav>
            <ul>
              <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
              <li><a href="${pageContext.request.contextPath}/product">Products</a></li>
              <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
              <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
            </ul>
          </nav>
          <div class="user-actions">
            <a href="${pageContext.request.contextPath}/profile" class="action-link login-link"><i class="fas fa-user-circle"></i> Profile</a>
            <a href="${pageContext.request.contextPath}/logout" class="action-link signup-link">Logout</a>
          </div>
        </div>
    </header>

    <main class="container profile-page-container">
        <h1>My Profile</h1>

        <div class="profile-sections">
            <!-- Profile Information Section -->
            <section class="profile-section profile-info-card">
                <h2><i class="fas fa-id-card"></i> Personal Information</h2>
                <div class="info-grid">
                    <div class="info-item">
                        <strong>Full Name:</strong>
                        <p>Shishir Poudel</p>
                    </div>
                    <div class="info-item">
                        <strong>Username:</strong>
                        <p>shishir</p>
                    </div>
                    <div class="info-item">
                        <strong>Email:</strong>
                        <p>shishir@gmail.com</p>
                    </div>
                    <div class="info-item">
                        <strong>Phone Number:</strong>
                        <p>9748844595</p>
                    </div>
                    <div class="info-item full-width">
                        <strong>Address:</strong>
                        <p>Dhapasi, Kathmandu</p>
                    </div>
                </div>
                <button class="btn btn-primary" id="editProfileBtn"><i class="fas fa-edit"></i> Edit Profile</button>
            </section>

            <!-- Security Section -->
            <section class="profile-section security-card">
                <h2><i class="fas fa-shield-alt"></i> Security</h2>
                <button class="btn btn-secondary" id="changePasswordBtn"><i class="fas fa-key"></i> Change Password</button>
            </section>

            <!-- Order History Section -->
            <section class="profile-section order-history-card">
                <h2><i class="fas fa-history"></i> Order History</h2>
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Date</th>
                                <th>Total Amount</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#1001</td>
                                <td>2024-12-15 14:30</td>
                                <td>Rs. 2,500.00</td>
                                <td><span class="status status-delivered">Delivered</span></td>
                                <td><a href="#" class="btn btn-view-details">View Details</a></td>
                            </tr>
                            <tr>
                                <td>#1002</td>
                                <td>2025-01-02 10:20</td>
                                <td>Rs. 1,800.00</td>
                                <td><span class="status status-pending">Pending</span></td>
                                <td><a href="#" class="btn btn-view-details">View Details</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </main>

    <!-- Edit Profile Modal -->
    <div id="editProfileModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('editProfileModal')">×</span>
            <h2>Edit Your Profile</h2>
            <form action="${pageContext.request.contextPath}/updateProfile" method="POST" class="modal-form">
                <div class="form-group">
                    <label for="editFullName">Full Name:</label>
                    <input type="text" id="editFullName" name="fullName" value="Shishir Poudel" required>
                </div>
                <div class="form-group">
                    <label for="editEmail">Email:</label>
                    <input type="email" id="editEmail" name="email" value="shishir@gmail.com" required>
                </div>
                <div class="form-group">
                    <label for="editPhoneNumber">Phone Number:</label>
                    <input type="tel" id="editPhoneNumber" name="phoneNumber" value="9748844595" required>
                </div>
                <div class="form-group">
                    <label for="editAddress">Address:</label>
                    <textarea id="editAddress" name="address" rows="3">Dhapasi, Kathmandu</textarea>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                    <button type="button" class="btn btn-secondary" onclick="closeModal('editProfileModal')">Cancel</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Change Password Modal -->
    <div id="changePasswordModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('changePasswordModal')">×</span>
            <h2>Change Your Password</h2>
            <form action="${pageContext.request.contextPath}/changePassword" method="POST" class="modal-form">
                <div class="form-group">
                    <label for="currentPassword">Current Password:</label>
                    <input type="password" id="currentPassword" name="currentPassword" required>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password:</label>
                    <input type="password" id="newPassword" name="newPassword" required>
                </div>
                <div class="form-group">
                    <label for="confirmNewPassword">Confirm New Password:</label>
                    <input type="password" id="confirmNewPassword" name="confirmNewPassword" required>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Update Password</button>
                    <button type="button" class="btn btn-secondary" onclick="closeModal('changePasswordModal')">Cancel</button>
                </div>
            </form>
        </div>
    </div>

    <footer>
        <p>©<%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %> Shishir Khadya Bhandar. All Rights Reserved.</p>
    </footer>

<script>
    const editProfileModal = document.getElementById('editProfileModal');
    const changePasswordModal = document.getElementById('changePasswordModal');
    const editProfileBtn = document.getElementById('editProfileBtn');
    const changePasswordBtn = document.getElementById('changePasswordBtn');

    if(editProfileBtn) {
        editProfileBtn.onclick = function() {
            editProfileModal.style.display = "block";
        }
    }

    if(changePasswordBtn) {
        changePasswordBtn.onclick = function() {
            changePasswordModal.style.display = "block";
        }
    }

    function closeModal(modalId) {
        const modal = document.getElementById(modalId);
        if(modal) {
            modal.style.display = "none";
        }
    }

    window.onclick = function(event) {
        if (event.target == editProfileModal) {
            closeModal('editProfileModal');
        }
        if (event.target == changePasswordModal) {
            closeModal('changePasswordModal');
        }
    }
</script>
</body>
</html>
