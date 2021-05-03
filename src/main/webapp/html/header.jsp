<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/common.css">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
<style type="text/css">

/* .card{
    border-radius: 4px;
    background: #fff;
    box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05);
      transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
  /* padding: 14px 80px 18px 36px; */
/*   cursor: pointer;
}

.card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
} */ */
</style>
<!--this three for bootstrap table so commenting other  -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css">
<link rel="shortcut icon"
	href="http://sstatic.net/stackoverflow/img/favicon.ico">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<!--  style="background-color: #e6e6e6;"-->
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	if (session.getAttribute("username") != null && session.getAttribute("isManager") != null) {
		String username = (String) session.getAttribute("username");

		username = username.substring(0, 1).toUpperCase() + username.substring(1);
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


	<nav class="navbar navbar-expand-md bg-primary navbar-dark shadow-lg" style="position: fixed;right: 0;left: 0;z-index: 999;  box-shadow: 0 2px 5px 0 rgb(0 0 0 / 30%)!important;
	">
		<a class="navbar-brand" href="#"
			style="font-size: 30px; margin-left: 15px;"><!-- <i
			class='far fa-handshake' style='font-size: 30px; color: white;'></i> -->
			<i class="fa fa-dollar" style="font-size:40px;color:red;text-shadow:2px 2px 4px #000000"></i>
			ERS </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ">

				<%
				if (session.getAttribute("isManager") != "true") {
				%>
				<!-- <li class="nav-item"><a class="nav-link" href="userprofile.jsp">Profile</a></li> -->
				<li class="nav-item" style="margin-top: 15px;"><a class="nav-link"
					href="employeereimbursement.jsp" id="applyreimb">ApplyReimubursement</a></li>
				<%
				}
				%>

				<%	
				if (session.getAttribute("isManager") == "true") {
				%>
				<!-- <li class="nav-item"><a class="nav-link"
					href="registrationemployee.jsp">RegistrationEmployee</a></li> -->
				<li class="nav-item"><a class="nav-link" style="margin-top: 10px;"
					href="managerreimbpage.jsp">AllowRequest</a></li>
				<%
				}
				%>
				<!-- <ul class="navbar-nav "> -->
					<li class="nav-item active"><a class="nav-link" href="#">
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; </a></li>

					<!-- <form method="post" action="logoutpage"> -->
					<!-- <a class="nav-link" href="/LogoutServlet">Logout</a> -->

					<%
					if (session.getAttribute("isManager") != "true") {
					%>
					<li class="nav-item"><a class="nav-link"
						href="userprofile.jsp"><i class='fas fa-user-edit'
							style="font-size: 20px; margin-top: 5px;"></i></a></li>
					<%
					}
					%>
					<!-- <button type="submit" class="nav-link btn btn-link"></button> -->

					<!-- </form> -->
					<%
					if (session.getAttribute("isManager") == "true") {
					%>
					<li class="nav-item"><a class="nav-link"
						href="registrationemployee.jsp"><i class='fas fa-user-plus'
							style='font-size: 20px;margin-top: 5px;'></i> </a></li>
							
					<%
					}
					%>		
					<li class="nav-item"><a class="nav-link"
						href="http://localhost:8081/ReimursementSystem/logoutpage"><i
							class="fa fa-sign-out" style="font-size: 30px;"></i></a></li>
				</ul>


				<!-- <ul class="navbar-nav mr-auto" style="align-self: flex-end;">
				<li class="nav-item active"><a class="nav-link" href="#">
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class='fas fa-user-edit' style="font-size: 20px; margin-top: 5px;"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fa fa-sign-out" style="font-size: 30px;"></i> </a></li>
			</ul> -->
		</div>
	</nav>
	<br />

	<h5
		style="font-family: sans-serif; font-size: 17px; font-weight: 400; line-height: 160%; margin-left: 50px;margin-top: 90px;"
		class="card-text">
		Hello
		<%=username%> ,
		
	</h5>
	<%
	} else {
	%>

	<%
	session.setAttribute("Cache-Control", "Dear User, you can not come to Homepage before loggedin to the Application.");
	response.sendRedirect("loginpage.jsp");

	}
	%>