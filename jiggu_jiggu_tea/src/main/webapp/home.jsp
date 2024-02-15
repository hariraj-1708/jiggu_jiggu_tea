<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
</head>
<body>
<form action="home">
 <div class="container">
        <!-- Header -->
        <header>
            <!-- Shop Name -->
            <h1 class="shop-name">Jiggu Jiggu Tea</h1>
            
            <!-- Navigation -->
            <nav>
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li class="dropdown">
                        <a href="#">Teas</a>
                        <div class="dropdown-content">
                            <a href="teas.html">Green Tea</a>
                            <a href="Black-tea.html">Black Tea</a>
                            <a href="Herbal-tea.html">Herbal Tea</a>
                        </div>
                    </li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                    <li class="settings">
                        <button id="settings-btn">
                            <img src="profile.png" id="setting-icon" alt="Settings Icon">
                            <span class="setting-label">MY ACCOUNT</span>
                            <%String p11=(String)request.getAttribute("profile");
                            if(p11!=null){%>
                            	<h3 style="color: white;"><%= p11%></h3>
                            <%}%>
                        </button>
                        <!-- Dropdown for Settings -->
                        <div class="settings-dropdown dropdown-content">
                            <a href="#">My Account</a>
                            <a href="#">Payment</a>
                            <a href="#">Orders</a>
                            <a href="#">Sign Out</a>
                        </div>
                    </li>
                    <li id="search-icon">
                        <img src="search.png" alt="Search Icon">
                    </li>
                </ul>
            </nav>
        </header>

        <!-- Search Bar -->
        <div class="search-bar-container">
            <div class="search-bar">
                <input type="text" placeholder="Search for your favorite tea...">
                <button class="search-btn">Search</button>
            </div>
        </div>

        <!-- Main Content - Home Page -->
        <section class="home">
            <!-- Your home page content goes here -->
        </section>
    </div>
    <script>
    document.addEventListener('DOMContentLoaded', function () {
        const searchIcon = document.getElementById('search-icon');
        const searchBarContainer = document.querySelector('.search-bar-container');

        searchIcon.addEventListener('click', function () {
            searchBarContainer.style.display = (searchBarContainer.style.display === 'none' || searchBarContainer.style.display === '') ? 'block' : 'none';
        });
    });

    </script>
</form>
</body>
</html>