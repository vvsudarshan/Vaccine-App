<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link type="text/css" href="css/login.css" rel="stylesheet"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script>
        function validateForm() {
            var email = document.getElementById("email").value;
            var emailError = document.getElementById("email-error");

            // Simple email validation
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                emailError.textContent = "Invalid email address";
                return false;
            } else {
                emailError.textContent = "";
                return true;
            }
        }
    </script>
</head>

<body>
<header>
    <h1>Vaccine Login Page</h1>
</header>
<div class="login-box">
    <h2>Login</h2>
    <form action="/loginForm" method="post" id="loginForm" onsubmit="return validateForm()">
        <label for="email">Email:</label> <input type="text" name="email" id="email"
                                                 placeholder="Enter your email" required> <span
        id="email-error"></span> <label for="password">Password:</label> <input
        type="password" name="password" id="password"
        placeholder="Enter your password" required>

        <button type="submit">Login</button>
    </form>
</div>
<div class="goRegister">
    <p>New User? <a href="/register">Register</a></p>
    <a href="forgetPassword">Forget Password</a>
</div>
<h1 class="${responseClass}">${response}</h1>

	 <footer>
     	<div class="footer-item">
     	
	       <div class="footer-items">
	       
	           <div class="footer-item-1">
	                    <h1>Tap Academy</h1>
	                    <p><i class="material-icons">&#xe0c8;</i>Bangalore</p>
	                
	           </div>
	
	            <div class="footer-item-2">
	            	 <h1> Developed By</h1>
	  	
	                 <h1>VV Sudarshan</h1>
	                 <p >&copy; 2023 Tap Academy. All rights reserved.</p>
	                   
	            </div>
	            <div class="social-Media-icons">
	                <h2></h2>
	                <a href="#" class="fa fa-facebook"> </a>
	                <a href="#" class="fa fa-instagram"></a>
	                <a href="#" class="fa fa-linkedin"></a>
	                <a href="#" class="fa fa-twitter"></a>
	               
	            </div>
	       </div>
     	
     	</div>
    </footer>
</body>
</html>
