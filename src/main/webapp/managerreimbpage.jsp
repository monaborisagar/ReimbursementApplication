<%@ include file="html/header.jsp"%>

<input type="hidden" id="username" name="usernamepass"
	value=" <%=session.getAttribute("username")%>" style="display: none">

<section  style="margin: 50px;" >
<div id="alertforoperation"></div>
<div class="card">
	<div class="card-header">Reimbursement Permission</div>
	<div class="card-body">
		<div class="container " id="container"></div>
	</div>
</div>
</section>
<!--  <section style="margin: 50px;" >

	<div class="card">
		<div class="card-header">User Details </div>
		<div class="card-body">
			<h5 class="card-title">Special title treatment</h5>
			<p class="card-text">With supporting text below as a natural
				lead-in to additional content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a>
			<form class="card-text">
			<div class="form-group">
					<label for="exampleInputEmail1">Reimbursement ID</label> <input
						type="number" class="form-control" id="reimb_id_manager"
						aria-describedby="profilefirstnamehelp" > 
						<div class="usernamehelp"><small
						id="profilefirstnamehelp" class="form-text text-muted" ></small></div>
						
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">UserName</label> <input
						type="text" class="form-control" id="managerdisplay_username"
						aria-describedby="profilefirstnamehelp" placeholder="FirstName"> 
						<div class="usernamehelp"><small
						id="profilefirstnamehelp" class="form-text text-muted" ></small></div>
						
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Amount</label> <input
						type="number" class="form-control" id="profilefirstname1"
						aria-describedby="amounthelp" placeholder="Amount"> <small
						id="amounthelp" class="form-text text-muted" ></small>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Submitted Date</label> <input
						type="text" class="form-control" id="date"
						aria-describedby="datehelp" placeholder="Submiiteddate"> <small
						id="datehelp" class="form-text text-muted" ></small>
				</div>
					<div class="form-group">
					<label for="exampleInputEmail1">Description</label> <input
						type="text" class="form-control" id="description"
						aria-describedby="descriptionhelp" placeholder="Description"> <small
						id="descriptionhelp" class="form-text text-muted" ></small>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Receipt Image</label> <br/>
					<img alt="no image now" src="#">
					 <small
						id="descriptionhelp" class="form-text text-muted" ></small>
				</div>
			
				<button type="submit" class="btn btn-primary" id="Accept">Accept</button>
				<button type="submit" class="btn btn-primary" id="Reject">Reject</button>
				
			</form>
			
		</div>
		</div>
</section> -->


<script src="js/getReimbAlldata.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>
</body>
</html>




























<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Hello, Bootstrap Table!</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css">
  </head>
  <body> --%>