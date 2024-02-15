<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="log_in.css">
</head>
<body>
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
    <form action="log_in">
        <div class="container">
            <!-- Header -->
            <header>
                <!-- Shop Name -->
                <h1 class="shop-name">Jiggu Jiggu Tea</h1>
                
                <!-- Navigation -->
                
            </header>

            <!-- Main Content - Login Page -->
            <section class="login">
                <h2>Login</h2>

                <div class="login-form">
                    <form action="#" method="post">
                        <label for="username">Email:</label>
                        <input type="text" id="username" name="email" placeholder="email">
                        <% String wp = (String)request.getAttribute("wrong_email");
                        if (wp != null) { %>
                            <p id="w"><%= wp %></p>
                        <% } %>
                        
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" placeholder="password">
                        <img src="ps-hide.png" alt="" onclick="pass()" id="ps-icon" alt="Toggle Password Visibility">
                        <% String pass = (String)request.getAttribute("wrong_pass"); 
                        if (pass != null) { %>
                            <p id="w"><%= pass %></p>
                        <% } %>
                        
                        
                        <button type="submit">Login</button>
                    </form>
                    
                    <p>Don't have an account? <a href="sign_up.jsp">Create Account</a></p>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
