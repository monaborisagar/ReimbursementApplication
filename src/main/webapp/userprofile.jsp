<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>
 --%>

<%@include file="html/header.jsp"%>

<section style="margin: 70px;margin-right: 400px;">

<%-- <%
			if (session.getAttribute("registerusersuccess") != null) {
			%>
			<div class="alert alert-success col-md-6" id="succ">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successale"><%=session.getAttribute("registerusersuccess")%>
				</span>
			</div>
			<%
			session.setAttribute("registerusersuccess", null);
			}
			%>
			<% 
			if (session.getAttribute("registeruserfailure") != null) {
			%>
			<div class="alert alert-danger col-md-6" id="fail">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successale2"><%=session.getAttribute("registeruserfailure")%>
				</span>
			</div>
			<%
			session.setAttribute("registeruserfailure", null);
			}
			%> --%>
	<div class="card shadow-lg">
		<div class="card-header">Edit UserDetail</div>
		<div class="card-body">
			<!-- 	<h5 class="card-title">Special title treatment</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p> -->
			<form method="post" action="EditUserServlet">
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Username</label> <input
						type="text" class="form-control" id="r_username" name="r_username"
						aria-describedby="emailHelp" placeholder="Enter Username" maxlength="10" required="required"> 
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" class="form-control" id="r_email" name="r_email"
						aria-describedby="emailHelp" placeholder="Enter email" required="required"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputPassword1">Password</label> <input
						type="text" class="form-control" id="r_password" name="r_password"
						value="Admin@123" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputPassword1">Retype Password</label> <input
						type="text" class="form-control" id="rd_password" name="r_repassword"
						value="Admin@123" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
				</div>
				<!--   <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> -->
				
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">FirstName</label> <input
						type="text" class="form-control" id="r_firstname" name="r_firstname"
						aria-describedby="profilefirstnamehelp" placeholder="FirstName" required="required">
					<small id="profilefirstnamehelp" class="form-text text-muted"></small>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">LastName</label> <input type="text"
						class="form-control" id="r_lastname" name="r_lastname"
						aria-describedby="profilelastnamehelp" placeholder="LastName" required="required">
					<small id="profilelastnamehelp" class="form-text text-muted"></small>
				</div>
				<!-- <div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div> -->
					<button type="submit" class="btn btn-primary" id="r_accept">Submit</button>
				<button type="button" class="btn btn-primary" id="Reject"
					onclick="reset()">Clear</button>
			</form>


			<!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
		</div>
	</div>
</section>
<script type="text/javascript">
function reset()
{
	alert("inside resdet");
	 document.getElementById("r_username").value='';
	 document.getElementById("r_password").value ='';
	 document.getElementById("rd_password").value ='';

	 document.getElementById("r_email").value='';
	 document.getElementById("r_firstname").value='';
	 document.getElementById("r_lastname").value='';
	
};

</script>

<%@ include file="html/footer.jsp"%>