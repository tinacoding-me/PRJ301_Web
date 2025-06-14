<%-- Document : adminProfile Created on : Jun 9, 2025, 11:25:26 PM Author : 2imtina --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="css/styleindex.css">
            <link rel="stylesheet" href="css/memberHome.css">
            <link rel="stylesheet" href="css/adminProfile.css">
            <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
                rel="stylesheet">

            <title>Online library</title>
        </head>

        <body>
            <header class="header">
                <div class="header-logo">
                    <img src="images/simple-book-line-icon-stroke-260nw-1687315123.jpg" alt="Logo" class="logo">
                    <span class="titleName">Online Library</span>
                </div>
                <nav class="nav-header">
                    <a href="adminHome.jsp" class="item-header active">Home</a>
                    <a href="browse.jsp" class="item-header">Browse</a>
                    <a href="#" class="item-header">Contact</a>
                </nav>
                <div class="function-header">
                    <div class="search-container">
                        <input type="text" class="form-search" placeholder="Search books...">
                        <i class="search-icon">🔍</i>
                    </div>
                    <div class="avatar-container">
                        <img src="images/simple-book-line-icon-stroke-260nw-1687315123.jpg" alt="User Avatar"
                            class="avatar">
                        <div class="dropdown-menu">
                            <div class="user-info">
                                <strong>${sessionScope.user != null ? sessionScope.user.name : 'member'}</strong>
                                <p>${sessionScope.user != null ? sessionScope.user.email : 'Please login'}</p>
                            </div>
                            <a href="#">Admin</a>
                            <a href="adminProfile.jsp">Profile</a>
                            <a href="${pageContext.request.contextPath}/logout">Logout</a>
                        </div>
                    </div>
                </div>
            </header>

        <div class="profile-container">
            <!-- Cột trái: Thông tin tổng quan -->
            <div class="profile-sidebar">
                <div class="card">
                    <div class="card-header">
                        <div class="avatar-container">
                            <span class="avatar">
                                <img src="/placeholder.svg?height=96&width=96" alt="Profile">
                            </span>
                            <button class="edit-button">
                                <svg xmlns="http://www.w3.org/2000/svg" class="camera-icon" fill="none"
                                    stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path
                                        d="M14.5 4h-5L7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3l-2.5-3z">
                                    </path>
                                    <circle cx="12" cy="13" r="3"></circle>
                                </svg>
                            </button>
                        </div>
                        <div class="user-info">
                            <h2>John Doe</h2>
                            <p>Student ID: ST123456</p>
                            <div class="badge">Active Member</div>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="joined-info">
                            <p class="label">Member since</p>
                            <p class="value">January 2023</p>
                        </div>

                        <div class="stats">
                            <h3>Reading Statistics</h3>
                            <div class="stat-row">
                                <span>Books Read</span>
                                <span class="value">47</span>
                            </div>
                            <div class="stat-row">
                                <span>Currently Borrowed</span>
                                <span class="value">3</span>
                            </div>
                            <div class="stat-row">
                                <span>Overdue Books</span>
                                <span class="value text-red">1</span>
                            </div>
                        </div>

                        <div class="goal">
                            <div class="stat-row">
                                <span>2025 Reading Goal</span>
                                <span class="value">47/60</span>
                            </div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: 78%;"></div>
                            </div>
                            <p class="progress-note">13 books to go!</p>
                        </div>
                    </div>

                    <div class="quick-actions">
                        <h3>Quick Actions</h3>
                        <button class="quick-action-btn"><span class="icon">📖</span> Browse Books</button>
                        <button class="quick-action-btn"><span class="icon">⏰</span> View History</button>
                        <button class="quick-action-btn"><span class="icon">⚙️</span> Account Settings</button>
                    </div>
                </div>
            </div>
            <!-- Cột phải: Thông tin cá nhân -->
            <div class="profile-main">
                <div class="tabs">
                    <button>Overview</button>
                    <button>Borrowed</button>
                    <button>History</button>
                    <button class="active">Profile</button>
                    <button>Settings</button>
                </div>
                <div class="tab-content profile-section">
                    <h3>Personal Information</h3>
                    <p>Update your profile information</p>

                    <div class="grid">
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" id="firstName" value="John" disabled>
                        </div>

                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" id="lastName" value="Doe" disabled>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" value="john.doe@example.com" disabled>
                    </div>

                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="text" id="phone" value="+1 (555) 123-4567" disabled>
                    </div>

                    <div class="form-group">
                        <label for="address">Address</label>
                        <textarea id="address" rows="3" disabled>123 Main St, City, State 12345</textarea>
                    </div>

                    <div class="form-group">
                        <label for="bio">Bio</label>
                        <textarea id="bio" rows="3"
                            disabled>Avid reader with a passion for science fiction and historical novels.</textarea>
                    </div>
                </div>
            </div>
        </div>

        </body>

        </html>