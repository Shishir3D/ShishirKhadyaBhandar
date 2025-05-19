<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Shishir Khadya Bhandar</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminDashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <%-- Font Awesome for icons --%>
</head>
<body>
    <div class="dashboard-container">
        <aside class="sidebar">
            <div class="sidebar-header">
                <h2>SKB Admin</h2>
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li class="active"><a href="#"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li><a href="${pageContext.request.contextPath}/product-admin"><i class="fas fa-box-open"></i> Products</a></li>
                    <li><a href="#"><i class="fas fa-users"></i> Users</a></li>
                    <li><a href="#"><i class="fas fa-chart-line"></i> Reports</a></li>
                    <li><a href="#"><i class="fas fa-cog"></i> Settings</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                </ul>
            </nav>
        </aside>

        <main class="main-content">
            <header class="main-header">
                <h1>Dashboard Overview</h1>
                <div class="admin-profile">
                    <span>Welcome, Admin!</span>
                    <%-- <img src="path/to/admin-avatar.png" alt="Admin"> --%>
                </div>
            </header>

            <!-- Statistics Section -->
            <section class="stats-section">
                <div class="stat-card">
                    <div class="stat-icon"><i class="fas fa-users"></i></div>
                    <div class="stat-info">
                        <h4>Total Users</h4>
                        <p><c:out value="${totalUsers ne null ? totalUsers : 'N/A'}"/></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon"><i class="fas fa-shopping-cart"></i></div>
                    <div class="stat-info">
                        <h4>Items Sold</h4>
                        <p><c:out value="${itemsSold ne null ? itemsSold : 'N/A'}"/></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon"><i class="fas fa-star"></i></div>
                    <div class="stat-info">
                        <h4>Most Popular</h4>
                        <p><c:out value="${mostPopularProduct ne null ? mostPopularProduct.name : 'N/A'}"/></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon"><i class="fas fa-boxes"></i></div>
                    <div class="stat-info">
                        <h4>Total Products</h4>
                        <p><c:out value="${productList.size()}"/></p> <%-- Assuming productList is available --%>
                    </div>
                </div>
            </section>

            <!-- Product Management Section -->
            <section class="product-management" id="product-management-section">
                <div class="section-header">
                    <h2>Manage Products</h2>
                    <button class="btn btn-primary" id="addProductBtn"><i class="fas fa-plus"></i> Add New Product</button>
                </div>
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Category</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                       <tbody>
    <tr>
        <td>1</td>
        <td>Saag</td>
        <td>Vegetables</td>
        <td>Rs. 60.00</td>
        <td>Fresh green saag from local farms.</td>
        <td class="actions">
            <button class="btn btn-edit" onclick="openEditModal('1', 'Saag', 'Vegetables', '60', 'Fresh green saag from local farms.')">
                <i class="fas fa-edit"></i> Edit
            </button>
            <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="POST" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this product?');">
                <input type="hidden" name="productId" value="1">
                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
            </form>
        </td>
    </tr>
    <tr>
        <td>2</td>
        <td>Milk</td>
        <td>Dairy</td>
        <td>Rs. 80.00</td>
        <td>Pure cow milk packed hygienically.</td>
        <td class="actions">
            <button class="btn btn-edit" onclick="openEditModal('2', 'Milk', 'Dairy', '80', 'Pure cow milk packed hygienically.')">
                <i class="fas fa-edit"></i> Edit
            </button>
            <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="POST" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this product?');">
                <input type="hidden" name="productId" value="2">
                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
            </form>
        </td>
    </tr>
    <tr>
        <td>3</td>
        <td>Oil</td>
        <td>Groceries</td>
        <td>Rs. 120.00</td>
        <td>High quality cooking oil for daily use.</td>
        <td class="actions">
            <button class="btn btn-edit" onclick="openEditModal('3', 'Oil', 'Groceries', '120', 'High quality cooking oil for daily use.')">
                <i class="fas fa-edit"></i> Edit
            </button>
            <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="POST" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this product?');">
                <input type="hidden" name="productId" value="3">
                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
            </form>
        </td>
    </tr>
    <tr>
        <td>4</td>
        <td>Ghee</td>
        <td>Dairy</td>
        <td>Rs. 180.00</td>
        <td>Pure ghee made from traditional methods.</td>
        <td class="actions">
            <button class="btn btn-edit" onclick="openEditModal('4', 'Ghee', 'Dairy', '180', 'Pure ghee made from traditional methods.')">
                <i class="fas fa-edit"></i> Edit
            </button>
            <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="POST" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this product?');">
                <input type="hidden" name="productId" value="4">
                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
            </form>
        </td>
    </tr>
</tbody>

                    </table>
                </div>
            </section>
        </main>
    </div>

    <!-- Add Product Modal -->
    <div id="addProductModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('addProductModal')">×</span>
            <h2>Add New Product</h2>
            <form action="${pageContext.request.contextPath}/admin/addProduct" method="POST" class="modal-form">
                <div class="form-group">
                    <label for="addProductName">Product Name:</label>
                    <input type="text" id="addProductName" name="productName" required>
                </div>
                <div class="form-group">
                    <label for="addProductCategory">Category:</label>
                    <input type="text" id="addProductCategory" name="productCategory" required>
                </div>
                <div class="form-group">
                    <label for="addProductPrice">Price (Rs.):</label>
                    <input type="number" id="addProductPrice" name="productPrice" step="0.01" min="0" required>
                </div>
                <div class="form-group">
                    <label for="addProductDescription">Description:</label>
                    <textarea id="addProductDescription" name="productDescription" rows="3" required></textarea>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Add Product</button>
                    <button type="button" class="btn btn-secondary" onclick="closeModal('addProductModal')">Cancel</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Edit Product Modal -->
    <div id="editProductModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('editProductModal')">×</span>
            <h2>Edit Product</h2>
            <form action="${pageContext.request.contextPath}/admin/editProduct" method="POST" class="modal-form">
                <input type="hidden" id="editProductId" name="productId">
                <div class="form-group">
                    <label for="editProductName">Product Name:</label>
                    <input type="text" id="editProductName" name="productName" required>
                </div>
                <div class="form-group">
                    <label for="editProductCategory">Category:</label>
                    <input type="text" id="editProductCategory" name="productCategory" required>
                </div>
                <div class="form-group">
                    <label for="editProductPrice">Price (Rs.):</label>
                    <input type="number" id="editProductPrice" name="productPrice" step="0.01" min="0" required>
                </div>
                <div class="form-group">
                    <label for="editProductDescription">Description:</label>
                    <textarea id="editProductDescription" name="productDescription" rows="3" required></textarea>
                </div>
                 <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                    <button type="button" class="btn btn-secondary" onclick="closeModal('editProductModal')">Cancel</button>
                </div>
            </form>
        </div>
    </div>

<script>
    // Modal handling
    const addProductModal = document.getElementById('addProductModal');
    const editProductModal = document.getElementById('editProductModal');
    const addProductBtn = document.getElementById('addProductBtn');

    if(addProductBtn) {
        addProductBtn.onclick = function() {
            addProductModal.style.display = "block";
        }
    }

    function closeModal(modalId) {
        document.getElementById(modalId).style.display = "none";
    }

    // Close modal if clicked outside of content
    window.onclick = function(event) {
        if (event.target == addProductModal) {
            addProductModal.style.display = "none";
        }
        if (event.target == editProductModal) {
            editProductModal.style.display = "none";
        }
    }

    // Function to open edit modal and populate data
    function openEditModal(id, name, category, price, description) {
        document.getElementById('editProductId').value = id;
        document.getElementById('editProductName').value = name;
        document.getElementById('editProductCategory').value = category;
        document.getElementById('editProductPrice').value = price;
        document.getElementById('editProductDescription').value = description;
        editProductModal.style.display = "block";
    }

    // Sidebar active link (simple version)
    const navLinks = document.querySelectorAll('.sidebar-nav ul li a');
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            // For demo, actual navigation would occur.
            // For anchor links on the same page, we just manage active state.
            if(this.getAttribute('href').startsWith('#')) {
                 // e.preventDefault(); // Prevent jump if only managing active state
                navLinks.forEach(l => l.parentElement.classList.remove('active'));
                this.parentElement.classList.add('active');
                // Smooth scroll to section
                const targetId = this.getAttribute('href').substring(1);
                const targetElement = document.getElementById(targetId);
                if (targetElement) {
                    targetElement.scrollIntoView({ behavior: 'smooth' });
                }
            }
        });
    });

</script>
</body>
</html>