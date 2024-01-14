<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Details</title>
        <link type="text/css" href="${pageContext.request.contextPath}/css/addmember.css" rel="stylesheet"/>
	 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">

</head>
<body>
    <header>
    	<script>
				
			function go() {
				window.location.replace("/logoutButton",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
				self.close()
			}
		</script>
			
        <h1>Edit Details</h1>
        <div class="header-container">
		  <a href="/viewAlltButton" class="add-member-btn button-64" role="button"><span class="text">View All Members</span></a>

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
    <div class="container-form">
    	<form action="${pageContext.request.contextPath}/updateDetails" method="post">
	        <table>
	            <tr>
	                <td>Member Id</td>
	                <td><input type="number" name="memberId" value="${id}" required="required"></td>
	            </tr>
	            <tr>
	                <td>Member Name</td>
	                <td><input type="text" name="memberName" value="${name}" required="required"></td>
	            </tr>
	            <tr>
	                <td>Gender:</td>
	                <td>
	                    <label><input type="radio" name="gender" value="male" id="male" required> Male</label>
	                    <label><input type="radio" name="gender" value="female" id="female" required> Female</label>
	                    <label><input type="radio" name="gender" value="other" id="other" required> Other</label>
	                </td>
	            </tr>
	            <tr>
	                <td>Date of Birth</td>
	                <td><input type="date" name="dob" required="required" value="${dob}"></td>
	            </tr>
	            <tr>
	                <td>Government ID</td>
	                <td>
	                    <select name="governmentId" required="required">
	                        <option value="" selected disabled>Select Government ID</option>
	                        <option value="Adhaar">Adhaar</option>
	                        <option value="Pan">Pan</option>
	                        <option value="DrivingLicense">Driving License</option>
	                    </select>
	                </td>
	            </tr>
	            <tr>
	                <td>ID Proof</td>
	                <td><input type="number" name="idProof" value="${idProof}" required="required"></td>
	            </tr>
	            <tr>
	                <td>Vaccine Type</td>
	                <td>
	                    <select name="vaccineType" required="required">
	                        <option value="" selected disabled>Select Vaccine Type</option>
	                        <option value="Covaccine">Covaccine</option>
	                        <option value="Cowin">Cowin</option>
	                        <option value="Co-Xwin">Co-Xwin</option>
	                    </select>
	                </td>
	            </tr>
	            <tr>
	                <td>Dose</td>
	                <td>
	                    <select name="dose" required="required">
	                        <option value="" selected disabled>Select How Many Doses Completed</option>
	                        <option value="1">1</option>
	                        <option value="2">2</option>
	                        <option value="3">3</option>
	                    </select>
	                </td>
	            </tr>
	        </table>
	        <input type="submit" value="Submit">
	        <p style="color: green;">${addMessage}</p>
	    </form>
    </div>
   
   
	<footer style="position: relative;">
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
</body>
</html>
