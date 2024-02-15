<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
 <link rel="stylesheet" href="sign_up.css">
 <style>
 #ps-icon{
            position: relative;
            width: 20px;
            bottom: 44px;
            left: 780px;
            cursor: pointer;
        }
 </style>
</head>
<body>
<form action="sign_up">
<div class="container">
        <!-- Header -->
        <header>
            <!-- Shop Name -->
            <h1 class="shop-name">Jiggu Jiggu Tea</h1>
            <!-- log in logo -->
            <div class="login-logo">
                <a href="log_in.jsp">
                    <img src="profile.png" alt="Login Logo">
                </a>
            </div>
        </header>

        <!-- Main Content - Sign Up Page -->
        <section class="signup">
            <h2>Sign Up</h2>
            <p>Create an account to explore the world of tea with us!</p>

            <!-- Sign Up Form -->
            <div class="signup-form">
                <form action="pp" method="post">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <% String e_m=(String)request.getAttribute("email_message");
                    if(e_m!=null){%>
                    	<p id="e_m"><%=e_m%></p>
                    <%}%>

                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    <img src="ps-hide.png" alt="" onclick="pass()" id="ps-icon" alt="Toggle Password Visibility">
                    <button type="submit">Sign Up</button>
                </form>
            </div>
        </section>
    </div>
    <script>

       var a;
        function pass(){
           if(a==1)
           {
            document.getElementById('password').type='password';
            document.getElementById('ps-icon').src='ps-hide.png';
            a=0;
           }
           else{
            document.getElementById('password').type='text';
            document.getElementById('ps-icon').src='ps-show.png';
            a=1;
           }

        }
</script>
</form>
</body>
</html>