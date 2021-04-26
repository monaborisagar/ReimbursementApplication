
<%@ include file="html/header.jsp"%>


<section style="margin: 50px;">

<%
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
			%>
	<div class="card">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<!-- 	<h5 class="card-title">Special title treatment</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p> -->
			<form method="post" action="CreateEmployeeFromManager">
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Username</label> <input oninput="myFunction()"
						type="text" class="form-control" id="username" name="username"
						aria-describedby="emailHelp" placeholder="Enter Username" maxlength="10" required="required"> 
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" class="form-control" id="email" name="email"
						aria-describedby="emailHelp" placeholder="Enter email" required="required"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputPassword1">Temporary Password</label> <input
						type="text" class="form-control" id="password" name="password"
						value="Admin@123" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
				</div>
				
				<!--   <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> -->
				
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">FirstName</label> <input
						type="text" class="form-control" id="firstname" name="firstname"
						aria-describedby="profilefirstnamehelp" placeholder="FirstName" required="required">
					<small id="profilefirstnamehelp" class="form-text text-muted"></small>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">LastName</label> <input type="text"
						class="form-control" id="lastname" name="lastname"
						aria-describedby="profilelastnamehelp" placeholder="LastName" required="required">
					<small id="profilelastnamehelp" class="form-text text-muted"></small>
				</div>
				<!-- <div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div> -->
					<button type="submit" class="btn btn-primary" id="Accept">Submit</button>
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
	 document.getElementById("username").value='';
	 document.getElementById("password").value ='';

	 document.getElementById("email").value='';
	 document.getElementById("firstname").value='';
	 document.getElementById("lastname").value='';
	
};
</script>
//<input type="text" id="myInput" oninput="myFunction()">
<script>
function myFunction() {
  var x = document.getElementById("username").value;
  
  document.getElementById("password").value = x.charAt(0).toUpperCase() + x.slice(1)+"@123";
}
</script>
<%@ include file="html/footer.jsp"%>