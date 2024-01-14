<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
	<title>Add Member</title>
	 <link type="text/css" href="${pageContext.request.contextPath}/css/addmember.css" rel="stylesheet"/>
	 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">

<script>
	function validateForm() {
		var memberName = document.forms["myForm"]["memberName"].value;
		var gender = document.forms["myForm"]["gender"];
		var dob = document.forms["myForm"]["dob"].value;
		var governmentId = document.forms["myForm"]["governmentId"].value;
		var idProof = document.forms["myForm"]["idProof"].value;
		var vaccineType = document.forms["myForm"]["vaccineType"].value;
		var dose = document.forms["myForm"]["dose"].value;

		// Check if any field is empty
		if (memberName === "" || gender.value === "" || dob === ""
				|| governmentId === "" || idProof === "" || vaccineType === ""
				|| dose === "") {
			alert("All fields must be filled out");
			return false;
		}

		// Check if gender is selected
		if (!gender.checked) {
			alert("Gender is required");
			return false;
		}

		// Check if DOB is entered
		if (dob === "") {
			alert("Date of Birth is required");
			return false;
		}

		// Check if ID Proof has exactly 8 numbers
		if (idProof.length !== 8 || isNaN(idProof)) {
			alert("ID Proof must contain exactly 8 numeric digits");
			return false;
		}

		return true;
	}
</script>
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
		<form action="/addMemberr" method="post" onsubmit="return validateForm()">
			<table>
				<tr>
					<td>Member Name</td>
					<td><input type="text" name="memberName"
						placeholder="Enter Member Name" required="required"></td>
				</tr>
				<tr>
					<th>Gender:</th>
					<td><input type="radio" name="gender" value="male" id="male"
						required> <label for="male">Male</label> <input
						type="radio" name="gender" value="female" id="female" required>
						<label for="female">Female</label> <input type="radio"
						name="gender" value="other" id="other" required> <label
						for="other">Other</label></td>
				</tr>
				<tr>
					<td>DOB</td>
					<td><input type="date" name="dob" required="required"></td>
				</tr>
				<tr>
					<td>Government ID</td>
					<td><select name="governmentId" required="required">
							<option value="" selected disabled>Select Governament ID</option>
							<option value="Adhaar">Adhaar</option>
							<option value="Pan">Pan</option>
							<option value="DrivingLicense">Driving License</option>
					</select></td>
				</tr>
				<tr>
					<td>ID Proof</td>
					<td><input type="number" name="idProof"
						placeholder="Enter 8 Digits ID Proof" required="required"></td>
				</tr>
				<tr>
					<td>Vaccine Type</td>
					<td><select name="vaccineType" required="required">
							<option value="" selected disabled>Select Vaccine Type</option>
							<option value="Covaccine">Covaccine</option>
							<option value="Cowin">Cowin</option>
							<option value="Co-Xwin">Co-Xwin</option>
					</select></td>
				</tr>
				<tr>
					<td>Dose</td>
					<td><select name="dose" required="required">
							<option value="" selected disabled>Select How Many Doses
								Completed</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select></td>
				</tr>
			</table>
			<input type="submit" value="Submit">
			<p style="color: green;">${addMessage}</p>
		</form>
	</div>
	
	<div class="table-container">
		 <center><p style="color: green;">${updateMessage}</p></h2>
		 <p style="color: green;">${deleteMessage}</p></center>
		<table class="members-table">
			<thead>
				<tr>
					<th>MEMBER ID</th>
					<th>MEMBER NAME</th>
					<th>GENDER</th>
					<th>DOB</th>
					<th>GOVERNMENT ID</th>
					<th>ID PROOF</th>
					<th>VACCINE TYPE</th>
					<th>DOSE</th>
					<th>EDIT</th>
					<th>DELETE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="${members}">
					<tr>
						<td>${member.memberId}</td>
						<td>${member.memberName}</td>
						<td>${member.gender}</td>
						<td>${member.dob}</td>
						<td>${member.governamentID}</td>
						<td>${member.idProof}</td>
						<td>${member.vaccineType}</td>
						<td>${member.dose}</td>
						<td><button class="button-85" role="button"><a href="/editMembers/${member.memberId}">Edit</a></button></td>
						<td><button class="button-85" role="button"><a href="/deleteMember/${member.memberId}">Delete</a></button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
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
