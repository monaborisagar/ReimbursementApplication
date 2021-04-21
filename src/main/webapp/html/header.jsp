<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="css/common.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/getReimbursementType.js"></script>

</head>
<body>
	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires", "0"); 
	if (session.getAttribute("username") != null && session.getAttribute("isManager") != null) {
	String username = (String)session.getAttribute("username");	
	
	
	%>

	<%-- <div class="alert alert-danger" role="alert">
				<div class="paragrapg"><%=session.getAttribute("error1")%></div>
			</div>
 --%>
	<%-- <div class="alert alert-warning alert-dismissible fade show">
		<strong>Warning!</strong>
		<div class="paragrapg"><%=session.getAttribute("username")%></div>
		<div class="paragrapg"><%=session.getAttribute("isManager")%></div>
		<button type="button" class="close" data-dismiss="alert">&times;</button>

	</div>
	 --%>


	<nav class="navbar navbar-expand-md bg-primary navbar-dark">
		<a class="navbar-brand" href="#">SuperCompany</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">

				<%
				if (session.getAttribute("isManager") != "true") {
				%>
				<li class="nav-item"><a class="nav-link" href="userprofile.jsp">Profile</a></li>
				<li class="nav-item"><a class="nav-link"
					href="employeereimbursement.jsp" id="applyreimb" >ApplyReimubursement</a></li>
				<%
				}
				%>

				<%
				if (session.getAttribute("isManager") == "true") {
				%>
				<li class="nav-item"><a class="nav-link"
					href="registrationemployee.jsp">RegistrationEmployee</a></li>
				<li class="nav-item"><a class="nav-link"
					href="managerreimbursement.jsp">PermissionForReimbursement</a></li>
				<%
				}
				%>
				<li class="nav-item">
				<form method="post" action="logoutpage" >
					<!-- <a class="nav-link" href="/LogoutServlet">Logout</a> -->
					<button type="submit" class="nav-link btn btn-link">Logout</button>
					
				</form>
				</li>


			</ul>

		</div>
	</nav>
	<br />
	<h5 style="font-family: serif;margin-left: 10px;" class="card-text">Hello <%=username.toUpperCase()%> ,</h5>
	<%
	} else {
	%>
	
	<%	
	session.setAttribute("Cache-Control", "Dear User, you can not come to Homepage before loggedin to the Application.");
	response.sendRedirect("loginpage.jsp");
	
	}
	%>