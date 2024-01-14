<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" href="css/styles.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<script>
	function validatePswd() {
	    var username = document.getElementById("username").value;
	    var email = document.getElementById("email").value;
	    var password = document.getElementById("password").value;
	    var confirmPassword = document.getElementById("cpsd").value;
	    var phoneNumber = document.getElementById("mobileNumber").value;
	    var gender = document.querySelector('input[name="gender"]:checked');
	    var dob = document.getElementById("dob").value;
	    var validationMessage = document.getElementById("validationMessage");

	    
	    if (!username || !email || !password || !confirmPassword || !phoneNumber || !gender || !dob) {
	        alert("Please fill in all required fields.");
	        return false; 
	    }

	    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	    if (!emailRegex.test(email)) {
	        validationMessage.innerHTML = "Invalid email format.";
	        return false;
	    }

	    
	    var phoneRegex = /^[6-9]\d{9}$/;
	    if (!phoneRegex.test(phoneNumber)) {
	        validationMessage.innerHTML = "Invalid phone number.";
	        return false;
	    }

	   
	    if (password !== confirmPassword) {
	        validationMessage.innerHTML = "Passwords do not match.";
	        return false;
	    }

	    validationMessage.innerHTML = "";
	    return true; 
	}

	</script>
	
<meta charset="ISO-8859-1">
<title>welcome</title>
</head>
<body>
    <header>
	     <div id="header-ele">
	        <h1 id="header-ele">Vaccination registration</h1>
	    </div>
       
    </header>
    <main>
        <div class="form-container">
	        <div class="form-items">
	            <form action="savedetails" onsubmit="return validatePswd()">
	                <label for="username">USERNAME:</label>
	                <input type="text" name="username" id="username">
	                <br>
	    
	                <label for="email">EMAIL:</label>
	                <input type="email" name="email" id="email">
	                <br>
	    
	                <label for="password">PASSWORD</label>
	                <input type="password" name="password" id="password">
	                <br>
	    
	                <label for="cpsd">CONFIRM PASSWORD</label>
					<input type="password" name="cpsd" id="cpsd">
					<span id="validationMessage"></span>
	                <br>
	                <br>
	    
	                <label for="mobileNumber">PHONE NUMBER</label>
	                <input type="text" name="mobileNumber" id="mobileNumber">
	                <br>
	    
	                <div class="gender-div">
	                    <label for="gender">GENDER</label>
	                    <input type="radio" name="gender" id="male" value="male">
	                    <label for="male">Male</label>
	                    <input type="radio" name="gender" id="female" value="female">
	                    <label for="female">Female</label>
	                </div>
	                <br>
	    
	                <label for="dob">DOB</label>
	                <input type="date" id="dob" name="dob">
	                <br>
	    
	                <input type="submit" value="register">
	                <br>
	                <p class="success-message" id="regSaved"></p>
		            <p class="error-message" id="regPending"></p>
		            <p class="error-message" id="regNotSaved"></p>
		            <br>
	            </form>
	             <p style="color:green" >${mailSuccess} ${regSucess}</p>
	             <p style="color:red">${mailnotSuccess}</p>
	             <p style="color:red">${regFail}</p>
	             
	             
			     <p class="${mailResponseClass}">${mailResponse}</p>
			    <div>
			        <p style="color:blue">Already have an account? <a href="alreadyHaveAnAccount">Login</a></p>
			    </div>
			    
	            
	        </div>
        </div>
    </main>
    
    
	 <footer>
     	<div class="footer-item">
     	
	       <div class="footer-items">
	       
	           <div class="footer-item-1">
	                    <h1>Tap Academy</h1>
	                    <p><i class="material-icons">&#xe0c8;</i>Bangalore</p>
	                
	           </div>
	
	            <div class="footer-item-2">
	            	 <h1> Developed By VV Sudarshan</h1>
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
