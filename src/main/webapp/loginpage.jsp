<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<title>Reimbursement Portal</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/loginpage.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>


	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->
			<%
			/* if (request.getAttribute("error") != null) { */
			if (session.getAttribute("error1") != null) {
			%>

			<%-- <div class="alert alert-danger" role="alert">
				<div class="paragrapg"><%=session.getAttribute("error1")%></div>
			</div>
 --%>
			<div class="alert alert-warning alert-dismissible fade show">
				<strong>Warning!</strong> Please enter a valid value in all the
				required fields before proceeding.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				
			</div>
			<%
			  session.setAttribute("error1", null);   } else {
			out.print("");
			}
			%>
			<!-- Icon -->
			<div class="fadeIn first">
				<!-- <img src="" id="icon" alt="User Icon" /> -->
				<h3 style="padding: 20px;">Reimbursement Portal</h3>
			</div>

			<!-- Login Form -->
			<form method="post" action="loginpage">

				<input type="text" id="username" class="fadeIn second"
					name="username" placeholder="Username"> <input type="text"
					id="password" class="fadeIn third" name="password"
					placeholder="Password"> <input type="submit"
					class="fadeIn fourth" value="Log In">
			</form>

			<!-- Remind Passowrd -->
			<div id="formFooter">
				<a class="underlineHover" href="#">Forgot
					Password?</a>
			</div>

		</div>
	</div>
    
    <>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>


</html>