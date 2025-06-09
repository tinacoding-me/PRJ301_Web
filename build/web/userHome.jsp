<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
    <link rel="stylesheet" href="css/styleindex.css">
    <link rel="stylesheet" href="css/userHome.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>
    <header class="header">
        <div class="header-logo">
            <img src="images/simple-book-line-icon-stroke-260nw-1687315123.jpg" alt="Logo" class="logo">
            <span class="titleName">Online Library</span>
        </div>
        <nav class="nav-header">
            <a href="userHome.jsp" class="item-header active">Home</a>
            <a href="browse.jsp" class="item-header">Browse</a>
            <a href="#" class="item-header">Contact</a>
        </nav>
        <div class="function-header">
            <div class="search-container">
                <input type="text" class="form-search" placeholder="Search books...">
                <i class="search-icon">🔍</i>
            </div>
            <div class="avatar-container">
                <img src="images/simple-book-line-icon-stroke-260nw-1687315123.jpg" alt="User Avatar" class="avatar">
                <div class="dropdown-menu">
                    <div class="user-info">
                        <strong>${sessionScope.user != null ? sessionScope.user.name : 'member'}</strong>
                        <p>${sessionScope.user != null ? sessionScope.user.email : 'Please login'}</p>
                    </div>
                    <a href="profile">User Profile</a>
                    <a href="login.jsp">Logout</a>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="grid">
            <div class="text-section">
                <h1>Discover Your Next Favorite Book</h1>
                <p>Explore our vast collection of books across all genres. From bestsellers to classics, we have
                    something for everyone.</p>
                <div class="button-group">
                    <button class="primary-btn">Browse Collection</button>
                    <button class="secondary-btn">Learn More</button>
                </div>
            </div>

            <div class="book-card">
                <div class="card-theGreatGatsby">
                    <div class="card-image">
                        <img src="/placeholder.svg?height=600&width=400" alt="The Great Gatsby" />
                    </div>
                    <div class="card-content">
                        <div class="rating">
                            <span class="star filled">★</span>
                            <span class="star filled">★</span>
                            <span class="star filled">★</span>
                            <span class="star filled">★</span>
                            <span class="star">★</span>
                            <span class="rating-value">4.5</span>
                        </div>
                        <h3>The Great Gatsby</h3>
                        <p class="author">by F. Scott Fitzgerald</p>
                        <p class="description">A captivating story that follows the mysterious millionaire Jay Gatsby
                            and his obsession with the beautiful Daisy Buchanan. Set in the summer of 1922, this
                            American classic explores themes of decadence, idealism, and the American Dream.</p>
                        <div class="card-buttons">
                            <button class="primary-btn small">Read Now</button>
                            <button class="secondary-btn small">Add to List</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer-container">
        <p>&copy; 2024 Online Library. All rights reserved.</p>
    </footer>
</body>
</html> 