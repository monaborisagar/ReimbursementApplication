
<%@ include file="html/header.jsp"%>

<input type="hidden" id="username" name="usernamepass"
					value=" <%=session.getAttribute("username")%>" style="display: none">
<section style="margin: 50px;" >
   
			<div id="updatesuic"></div>
	<div class="card" >
		<div class="card-header">User Details(Reimbursement Pending)</div>
		<div class="card-body">
		
			 <section id="alluserdetailsmana" >
							
			</section>

		</div>
	</div>
</section>


<script>

/*     //exporte les données sélectionnées
var $table = $('#allusertableid');
    $(function () {
       
          $table.bootstrapTable('refreshOptions', {
                exportDataType: $(this).val()
            });
        
    })

		var trBoldBlue = $("table");


	$(trBoldBlue).on("click", "tr", function (){
			$(this).toggleClass("bold-blue");
	}); */
</script>
<script src="js/getReimbursementDataAllUser.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>
    
     <%@ include file="html/footer.jsp"%>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<!-- <script type="text/javascript" src="js/getReimbursementType.js"></script> -->
   
  <!--   <section style="margin: 50px;">

	<div class="card">
		<div class="card-header">User Details </div>
		<div class="card-body">
			<h5 class="card-title">Special title treatment</h5>
			<p class="card-text">With supporting text below as a natural
				lead-in to additional content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a>
			<form class="card-text">
				<div class="form-group">
				<div class="form-group">
					<label for="exampleInputEmail1">UserName</label> <input
						type="text" class="form-control" id="profilefirstname"
						aria-describedby="profilefirstnamehelp" placeholder="FirstName"> 
						<div class="usernamehelp"><small
						id="profilefirstnamehelp" class="form-text text-muted" ></small></div>
						
				</div>
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email"> <small
						id="emailHelp" class="form-text text-muted" >We'll never
						share your email with anyone else.</small>
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
				
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div>
				<button type="submit" class="btn btn-primary" id="Accept">Accept</button>
				<button type="submit" class="btn btn-primary" id="Reject">Reject</button>
				
			</form>
			
		</div>
	</div>
</section> -->