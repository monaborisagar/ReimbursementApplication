<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	<%
	/* if (request.getAttribute("error") != null) { */
	if (session.getAttribute("username") != null) {
	%>

	<%-- <div class="alert alert-danger" role="alert">
				<div class="paragrapg"><%=session.getAttribute("error1")%></div>
			</div>
 --%>
	<div class="alert alert-warning alert-dismissible fade show">
		<strong>Warning!</strong>
		<div class="paragrapg"><%=session.getAttribute("username")%></div>
		<div class="paragrapg"><%=session.getAttribute("isManager")%></div>
		<button type="button" class="close" data-dismiss="alert">&times;</button>

	</div>
	<%
	} else {
	out.print("");
	}
	%>


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
				<li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="#">ApplyReimubursement</a>
				</li>
				<%
				}
				%>

				<%
				if (session.getAttribute("isManager") == "true") {
				%>
				<li class="nav-item"><a class="nav-link" href="#">RegistrationEmployee</a></li>
				<li class="nav-item"><a class="nav-link" href="#">PermissionForReimbursement</a></li>
				<%
				}
				%>
				<li class="nav-item"><a class="nav-link" href="#">Logout</a></li>

			</ul>

		</div>
	</nav>
	<br />
	<section>

		<div class="card">
			<div class="card-header">Featured</div>
			<div class="card-body">
				<h5 class="card-title">Special title treatment</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p>
				<a href="#" class="btn btn-primary">Go somewhere</a>
			</div>
		</div>
	</section>

</body>
</html>


