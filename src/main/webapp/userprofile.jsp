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

<section style="margin: 50px;">

	<div class="card">
		<div class="card-header">Edit Profile</div>
		<div class="card-body">
			<!-- <h5 class="card-title">Special title treatment</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p> -->

			<form>
				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email"> <small
						id="emailHelp" class="form-text text-muted" >We'll never
						share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">FirstName</label> <input
						type="text" class="form-control" id="profilefirstname"
						aria-describedby="profilefirstnamehelp" placeholder="FirstName"> <small
						id="profilefirstnamehelp" class="form-text text-muted" ></small>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">LastName</label> <input
						type="text" class="form-control" id="profilelastname"
						aria-describedby="profilelastnamehelp" placeholder="LastName"> <small
						id="profilelastnamehelp" class="form-text text-muted" ></small>
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			
		</div>
	</div>
</section>
<%@ include file="html/footer.jsp"%>