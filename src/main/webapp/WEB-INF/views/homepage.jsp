<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Home Page</title>
 	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link type="text/css" href="css/addmember.css" rel="stylesheet"/>
  	<script src="https://cdn.jsdelivr.net/npm/countup.js@3.0.7"></script>
    
</head>
<body>
	<header>
		<script>
			
			function go() {
				window.location.replace("/logoutButton",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
				self.close()
			}
		</script>
		<div class="header-container">
		  <a href="/performAddMemberAction" class="add-member-btn button-64" role="button"><span class="text">Add Member</span></a>

		
		    <div class="user-info">
		        <%
		            String str = request.getParameter("userEmail");
		            session.setAttribute("EMAIL", request.getParameter("userEmail"));
		        %>
		        <h1><i class='fas fa-user-alt' style='font-size:36px'></i>User :<%=session.getAttribute("userEmail")%></h1>
		        
		        <%
		            if (session.getAttribute("userEmail").equals("")) {
		        %>
		            <a href="/login" class="btn btn-logout"><b>Login</b></a>
		        <%
		            } else {
		        %>
		            <a href="javascript:go()" class="logout-btn button-57" role="button">
					    <span class="text">Logout</span>
					    <span>Are you sure?</span>
					</a>
		        <%
		            }
		        %>
		    </div>
		 </div>

	</header>
	<section>
 		<div class="grid-container-1">
	 		<div class="grid-container">		
	            <div class="grid-item">
	                <div class="card">
	                    <div class="container">
	                        <h1 ><b>Registration Count</b></h1>
	                        <h1 >${memCount}</h1>
	                    </div>
	                </div>
	            </div>
	    
	            <div class="grid-item">
	                <div class="card">
	                    <div class="container">
	                        <h1><b>${username}</b></h1>
	                        <p>Developer</p>
	                    </div>
	                </div>
	            </div>
	    
	            <div class="grid-item">
	                <div class="card">
	                    <div class="container">
	                        <h1><b>vaccine available</b></h1>
	                        <ul>
	                            <li>Covaccine</li>
	                            <li>Cowin</li>
	                            <li>Co-Xwin</li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            
	            <div class="grid-item">
	                <div class="card">
	                    <div class="container">
	                        <h1><b>Employee vaccination Count</b></h1>
	                        <p id="myTargetElement">1000+</p>
	                    </div>
	                </div>
	            </div>
	            
	            <div class="grid-item">
	                <div class="card">
	                    <div class="container">
	                        <h1><b>Employee vaccinated</b></h1>
	                         <div class="carousel" data-flickity='{ "wrapAround": true }' id="review">
							    <div class="carousel-cell"><img src="/img/35ba6a55ad6a9229d5f9d4b112f4adba.jpg" alt="Image 1"></div>
							    <div class="carousel-cell"><img src="/img/COVID-vaccine.jpg" alt="Image 2"></div>
							    <div class="carousel-cell"><img src="/img/headerImage-030fb7db-7276-4540-a50e-7048d966f5fe.jpeg" alt="Image 3"></div>
							    <div class="carousel-cell"><img src="/img/MainImage_A20-1-888x500.jpg" alt="Image 4"></div>
							    <div class="carousel-cell"><img src="/img/mitchell-plan now for school vaccines-large.jpg" alt="Image 5"></div>
							    <div class="carousel-cell"><img src="/img/vaccinateimge.jpeg" alt="Image 6"></div>
							  
						    </div>
	
	                    </div>
	                </div>
	            </div>
	        </div>
 		
 		
 		
 		</div>
    </section>

		 <footer>
	     	<div class="footer-item">
	     	
		       <div class="footer-items">
		       
		           <div class="footer-item-1">
		                    <h1>Tap Academy</h1>
		                    <p><i class="material-icons">&#xe0c8;</i>Bangalore</p>
		                
		           </div>
		
		            <div class="footer-item-2">
		            	 <h1> Developed By </h1>
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
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flickity@2.2.2/dist/flickity.pkgd.min.js"></script>
    <script src="script.js"></script>
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
</body>
</html>
