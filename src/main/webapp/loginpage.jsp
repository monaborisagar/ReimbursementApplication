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
			if (session.getAttribute("error1") != null) {
			%>

			<div class="alert alert-danger alert-dismissible fade show"
				id="idone">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<!-- <strong>Danger!</strong> -->
				User and Password does not match with ERS Application.
			</div>
			<%
			session.setAttribute("error1", null);

			}
			if (session.getAttribute("Cache-Control") != null) {
			%>
			<div class="alert alert-warning alert-dismissible fade show">
				<strong>Warning!</strong>
				<%=session.getAttribute("Cache-Control")%>
				<button type="button" class="close" data-dismiss="alert">&times;</button>

			</div>
			<%
			session.setAttribute("Cache-Control", null);

			}
			if (session.getAttribute("logoutsuccessmessage") != null) {
			%>
			<%-- <div class="alert alert-success alert-dismissible fade show">
				
				<button type="button" class="close"
					data-dismiss="alert alert-success">&times;</button>
<strong>Success!</strong>
				<%=session.getAttribute("logoutsuccessmessage")%>
			</div> --%>
			<div class="alert alert-success alert-dismissible">
				<strong>Warning!</strong>
				<%=session.getAttribute("logoutsuccessmessage")%>
				<button type="button" class="close" data-dismiss="alert">&times;</button>

			</div>
			<%
			session.setAttribute("logoutsuccessmessage", null);

			}
			%>
			<!-- Icon -->
			<div class="fadeIn first">
				<!-- <img src="" id="icon" alt="User Icon" /> -->
				<h3 style="padding: 20px;">Reimbursement Portal</h3>
			</div>

			
			<form method="post" action="loginpage1" style="align-self: center;">

				<input type="text" id="username" class="fadeIn second"
					name="username" placeholder="Username"> <input type="text"
					id="password" class="fadeIn third" name="password"
					placeholder="Password"> <input type="submit"
					class="fadeIn fourth" value="Log In">
				
			</form>
			

			<!-- Remind Passowrd -->
			<div id="formFooter">
				<a class="underlineHover" href="#">Forgot Password?</a>
			</div>

		</div>
	</div>



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

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
	<script>
  document.addEventListener('DOMContentLoaded', () => {
	  $("#idone").show();
	  setTimeout(function(){
	    $(".myAlert-bottom").hide(); 
	  }, 2000);
  })
</script>
</body>


</html>