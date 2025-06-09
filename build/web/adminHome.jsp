<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online library</title>
    <link rel="stylesheet" href="css/styleindex.css">
    <link rel="stylesheet" href="css/memberHome.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>
    <header class="header">
        <div class="header-logo">
            <img src="images/simple-book-line-icon-stroke-260nw-1687315123.jpg" alt="Logo" class="logo">
            <span class="titleName">Online Library</span>
        </div>
        <nav class="nav-header">
            <a href="memberHome.jsp" class="item-header active">Home</a>
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
                    <a href="#">Admin</a>
                    <a href="profile">Profile</a>
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

    <section class="section" style="padding: 0px;">
        <div class="container" style="margin-top: 0px;">
          <div class="section-header">
            <h2>New Arrivals</h2>
            <p>Check out the latest additions to our library collection</p>
          </div>
    
          <div class="book-grid">
            <!-- Book Card 1 -->
            <div class="book-card">
              <a href="#">
                <div class="book-image">
                  <img src="/placeholder.svg?height=300&width=200" alt="The Midnight Library" />
                </div>
                <div class="book-info">
                  <h3>The Midnight Library</h3>
                  <p class="author">Matt Haig</p>
                  <div class="rating">
                    <span class="star">★</span><span class="rating-value">4.2</span>
                  </div>
                </div>
              </a>
            </div>
    
            <!-- Book Card 2 -->
            <div class="book-card">
              <a href="#">
                <div class="book-image">
                  <img src="/placeholder.svg?height=300&width=200" alt="Klara and the Sun" />
                </div>
                <div class="book-info">
                  <h3>Klara and the Sun</h3>
                  <p class="author">Kazuo Ishiguro</p>
                  <div class="rating">
                    <span class="star">★</span><span class="rating-value">4.0</span>
                  </div>
                </div>
              </a>
            </div>
    
            <!-- Book Card 3 -->
            <div class="book-card">
              <a href="#">
                <div class="book-image">
                  <img src="/placeholder.svg?height=300&width=200" alt="Project Hail Mary" />
                </div>
                <div class="book-info">
                  <h3>Project Hail Mary</h3>
                  <p class="author">Andy Weir</p>
                  <div class="rating">
                    <span class="star">★</span><span class="rating-value">4.7</span>
                  </div>
                </div>
              </a>
            </div>
    
            <!-- Book Card 4 -->
            <div class="book-card">
              <a href="#">
                <div class="book-image">
                  <img src="/placeholder.svg?height=300&width=200" alt="The Four Winds" />
                </div>
                <div class="book-info">
                  <h3>The Four Winds</h3>
                  <p class="author">Kristin Hannah</p>
                  <div class="rating">
                    <span class="star">★</span><span class="rating-value">4.5</span>
                  </div>
                </div>
              </a>
            </div>
          </div>
    
          <div class="view-all">
            <button class="view-all-button">
              View All New Arrivals
              <span class="arrow">→</span>
            </button>
          </div>
        </div>
      </section>
    
      <section class="popular-categories">
        <div class="container">
          <div class="section-header">
            <h2>Popular Categories</h2>
            <p>Browse books by your favorite genres</p>
          </div>
          <div class="cards">
            <a href="#" class="card">
              <div class="icon">
                📚
              </div>
              <h3>Fiction</h3>
              <p>1243 Books</p>
            </a>
            <a href="#" class="card">
              <div class="icon">
                🧪
              </div>
              <h3>Science & Technology</h3>
              <p>876 Books</p>
            </a>
            <a href="#" class="card">
              <div class="icon">
                ⏰
              </div>
              <h3>History</h3>
              <p>654 Books</p>
            </a>
            <a href="#" class="card">
              <div class="icon">
                🧑‍🏫
              </div>
              <h3>Biography</h3>
              <p>432 Books</p>
            </a>
            <a href="#" class="card">
              <div class="icon">
                💡
              </div>
              <h3>Self-Help</h3>
              <p>321 Books</p>
            </a>
            <a href="#" class="card">
              <div class="icon">
                🏆
              </div>
              <h3>Award Winners</h3>
              <p>198 Books</p>
            </a>
          </div>
        </div>
      </section>
    
      <section class="newsletter-section">
      <div class="container">
        <div class="newsletter-grid">
          <div class="newsletter-content">
            <div class="tag">Join Our Community</div>
            <h2>Stay Updated with Library Events</h2>
            <p>Subscribe to our newsletter to receive updates on new books, author events, reading clubs, and more.</p>
          </div>
          <form class="newsletter-form">
            <div class="input-row">
              <div class="input-group">
                <label for="first-name">First name</label>
                <input id="first-name" type="text" placeholder="Enter your first name" />
              </div>
              <div class="input-group">
                <label for="last-name">Last name</label>
                <input id="last-name" type="text" placeholder="Enter your last name" />
              </div>
            </div>
            <div class="input-group">
              <label for="email">Email</label>
              <input id="email" type="email" placeholder="Enter your email" />
            </div>
            <button type="submit">Subscribe to Newsletter</button>
          </form>
        </div>
      </div>
    </section>
    
    <div class="footer-container">
      <div class="footer-left">
        <div class="footer-brand">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor"
            stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon">
            <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
            <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
          </svg>
          <span class="footer-title">LibraryOnline</span>
        </div>
        <p class="footer-description">
          Your gateway to knowledge and imagination. Explore our vast collection of books and resources.
        </p>
      </div>
    
      <div class="footer-links">
        <div class="footer-column">
          <h3>Explore</h3>
          <ul>
            <li><a href="#">Browse Books</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">New Arrivals</a></li>
            <li><a href="#">Best Sellers</a></li>
          </ul>
        </div>
        <div class="footer-column">
          <h3>Resources</h3>
          <ul>
            <li><a href="#">Reading Lists</a></li>
            <li><a href="#">Book Clubs</a></li>
            <li><a href="#">Author Events</a></li>
            <li><a href="#">Blog</a></li>
          </ul>
        </div>
        <div class="footer-column">
          <h3>Company</h3>
          <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms of Service</a></li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="footer-bottom">
      <p class="footer-copy">© 2025 LibraryOnline. All rights reserved.</p>
      <div class="footer-policies">
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
        <a href="#">Cookie Policy</a>
      </div>
    </div>
    
    </body>
    
</html>