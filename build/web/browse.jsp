<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browse Books - Online Library</title>
    <link rel="stylesheet" href="css/styleindex.css">
    <link rel="stylesheet" href="css/browse.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    
</head>
<body>
    <header class="header">
        <div class="header-logo">
            <img src="images/simple-book-line-icon-stroke-260nw-1687315123.jpg" alt="Logo" class="logo">
            <span class="titleName">Online Library</span>
        </div>
        <nav class="nav-header">
            <a href="userHome.jsp" class="item-header">Home</a>
            <a href="browse.jsp" class="item-header active">Browse</a>
            <a href="#" class="item-header">Categories</a>
            <a href="#" class="item-header">About</a>
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

    <div class="browse-container">
        <div class="browse-header">
            <h1 class="browse-title">Browse Books</h1>
        </div>

        <div class="filter-section">
            <form action="browse" method="GET" class="search-form">
                <div class="filter-group">
                    <input type="text" name="search" class="filter-select" placeholder="Enter book name..." value="${param.search}">
                </div>
                <div class="filter-group">
                    <label for="category">Category:</label>
                    <select id="category" name="category" class="filter-select">
                        <option value="">All Categories</option>
                        <option value="fiction" ${param.category == 'fiction' ? 'selected' : ''}>Fiction</option>
                        <option value="non-fiction" ${param.category == 'non-fiction' ? 'selected' : ''}>Non-Fiction</option>
                        <option value="science" ${param.category == 'science' ? 'selected' : ''}>Science</option>
                        <option value="history" ${param.category == 'history' ? 'selected' : ''}>History</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label for="sort">Sort by:</label>
                    <select id="sort" name="sort" class="filter-select">
                        <option value="newest" ${param.sort == 'newest' ? 'selected' : ''}>Newest</option>
                        <option value="popular" ${param.sort == 'popular' ? 'selected' : ''}>Most Popular</option>
                        <option value="rating" ${param.sort == 'rating' ? 'selected' : ''}>Highest Rated</option>
                    </select>
                </div>
                <button type="submit" class="btn-small btn-primary">Search</button>
            </form>
        </div>

        <div class="books-grid">
            <c:forEach items="${books}" var="book">
                <div class="book-item">
                    <img src="${book.imageUrl}c" alt="${book.title}" class="book-image">
                    <div class="book-details">
                        <h3 class="book-title">${book.title}</h3>
                        <p class="book-author">${book.author}</p>
                        <div class="book-rating">
                            <c:forEach begin="1" end="5" var="i">
                                <span class="star ${i <= book.rating ? 'filled' : ''}">★</span>
                            </c:forEach>
                            <span>(${book.rating})</span>
                        </div>
                        <div class="book-actions">
                            <button class="btn-small btn-primary" onclick="location.href='read?bookId=${book.id}'">Read Now</button>
                            <button class="btn-small btn-secondary" onclick="addToList(${books.id})">Add to List</button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="pagination">
            <button class="page-btn">Previous</button>
            <button class="page-btn active">1</button>
            <button class="page-btn">2</button>
            <button class="page-btn">3</button>
            <button class="page-btn">Next</button>
        </div>
    </div>

    <footer class="footer-container">
        <p>&copy; 2024 Online Library. All rights reserved.</p>
    </footer>
</body>
</html> 