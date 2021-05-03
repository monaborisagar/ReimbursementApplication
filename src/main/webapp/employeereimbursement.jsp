

<%@ include file="html/header.jsp"%>


<div style="margin: 50px;">

	<div class="card shadow-lg">
		<div class="card-header">Employee page</div>
		<div class="card-body">

			<section>

				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item waves-effect waves-light"><a
						class="nav-link" id="home-tab" data-toggle="tab" href="#home"
						role="tab" aria-controls="home" aria-selected="false"
						onclick="displayPending()">Pending Requests</a></li>
					<li class="nav-item waves-effect waves-light"><a
						class="nav-link" id="profile-tab" data-toggle="tab"
						href="#profile" role="tab" aria-controls="profile"
						aria-selected="false" onclick="displayApproved()">Approved
							Requests</a></li>
					<li class="nav-item waves-effect waves-light"><a
						class="nav-link active" id="contact-tab" data-toggle="tab"
						href="#contact" role="tab" aria-controls="contact"
						aria-selected="true">Reimbursement Policy</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<!-- <br /> <br /> -->
						<br />

						<section id="pendingrequest"></section>



					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<br />
						<section id="approvedrequest">
							<!-- <br /> <br />
							<table class="table table-striped" style="align-content: center;">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">UserName</th>
										<th scope="col">Amount</th>
										<th scope="col">Type Id</th>
										<th scope="col">Description</th>
										<th scope="col"></th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>6788</td>
										<td>shopping</td>
										<td><textarea class="form-control rounded-0"
												id="exampleFormControlTextarea2" rows="3" col='2'>his is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd</textarea></td>
										<td><a href="#" class="btn btn-primary">View</a> <a
											href="#" class="btn btn-primary">Accept</a> <a href="#"
											class="btn btn-primary">Reject</a></td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>6788</td>
										<td>shopping</td>
										<td><textarea class="form-control rounded-0"
												id="exampleFormControlTextarea2" rows="3" col='2'>his is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd</textarea></td>
										<td><a href="#" class="btn btn-primary">View</a> <a
											href="#" class="btn btn-primary">Accept</a> <a href="#"
											class="btn btn-primary">Reject</a></td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Mark</td>
										<td>6788</td>
										<td>shopping</td>
										<td><textarea class="form-control rounded-0"
												id="exampleFormControlTextarea2" rows="3" col='2'>his is for movie dfvjnjfdjk dfnvjnd this is for movie
							d</textarea></td>
										<td><a href="#" class="btn btn-primary">View</a> <a
											href="#" class="btn btn-primary">Accept</a> <a href="#"
											class="btn btn-primary">Accept</a></td>
									</tr>
								</tbody>
							</table>
						
 -->
						</section>

					</div>
					<div class="tab-pane fade active show" id="contact" role="tabpanel"
						aria-labelledby="contact-tab">
						<br /> <br /> Etsy mixtape wayfarers, ethical wes anderson tofu
						before they sold out mcsweeney's organic lomo retro fanny pack
						lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork
						tattooed craft beer, iphone skateboard locavore carles etsy salvia
						banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings
						gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever
						gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk
						vice blog. Scenester cred you probably haven't heard of them,
						vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth
						chambray yr.
					</div>
				</div>

			</section>


		</div>
	</div>
</div>

<div style="margin: 50px;" id="pending">

	<div class="card shadow-lg">
		<div class="card-header">User Details</div>
		<div class="card-body">
			<!-- <h5 class="card-title">Special title treatment</h5>
			<p class="card-text">With supporting text below as a natural
				lead-in to additional content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a> -->
			<div class="alert alert-danger col-md-6" id="successmessasge"
				style="display: none">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successfailureinner"> </span>
			</div>
			<%
			if (session.getAttribute("ReimDataSuccess") != null) {
			%>
			<div class="alert alert-success col-md-6" id="reimstoredata">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successmess"><%=session.getAttribute("ReimDataSuccess")%>
				</span>
			</div>
			<%
			session.setAttribute("ReimDataSuccess", null);
			}
			%>
			<%
			if (session.getAttribute("ReimbDataSaveError") != null) {
			%>
			<div class="alert alert-danger col-md-6" id="reimbdatafail">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="failuremessage"><%=session.getAttribute("ReimbDataSaveError")%>
				</span>
			</div>
			<%
			session.setAttribute("ReimbDataSaveError", null);
			}
			%>
			<form id="form" class="card-text" onsubmit="return validate();"
				enctype="multipart/form-data" method="post"
				action="EmployeeReimSubmit">
				<!-- enctype="multipart/form-data" -->
				<!-- <div class="form-group"> -->
				<!-- method="post" action="EmployeeReimSubmit" -->
				<!-- <label for="exampleInputEmail1">UserName</label> <input
							type="text" class="form-control" id="profilefirstname"
							aria-describedby="usernamehelp" placeholder="UserName">
						<div class="usernamehelp">
							<small id="profilefirstnamehelp" class="form-text text-muted"></small>
						</div>

					</div>
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>
				</div> -->

				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Amount <span
						class="redstar">*</span></label> <input type="number" class="form-control"
						name="amount" id="reimb_user_amount" aria-describedby="amounthelp"
						placeholder="Amount" min="0" max="100000" step=".01"
						required="required"> <small id="amounthelp"
						class="form-text text-muted"></small>
				</div>

				<div class="form-group col-md-6" id="roledropdown"
					name="roledropdown">
					<label for="inputState">Reimbursement Type <span
						class="redstar">*</span></label> <select id="inputState" name="inputstate"
						name="select_reimbursement_type" class="form-control"
						required="required">
						<option value="null">Choose...</option>
						<option value="1">Shopping</option>
						<option value="2">Certification</option>
						<option value="3">Migrate</option>

					</select>
				</div>
				<!-- <div class="form-group">
					<label for="exampleInputEmail1">Submitted Date</label> <input
						type="text" class="form-control" id="date"
						aria-describedby="datehelp" placeholder="Submiiteddate"> <small
						id="datehelp" class="form-text text-muted"></small>
				</div> -->
				<!-- <div class="form-group col-md-6">
							<label for="exampleInputEmail1">Description</label> <input
								type="text" class="form-control" id="description"
								aria-describedby="descriptionhelp" placeholder="Description">
							<small id="descriptionhelp" class="form-text text-muted"></small>
						</div> -->
				<input type="hidden" id="username" name="usernamepass"
					value=" <%=session.getAttribute("username")%>">

				<div class="form-group col-md-6">
					<label for="exampleFormControlTextarea1">Description <span
						class="redstar">*</span></label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						name="description" rows="3"></textarea>
					<small id="descriptionhelp" class="form-text text-muted"></small>
				</div>
				<div class="form-group col-md-6">
					<label for="exampleInputEmail1">Receipt Image</label> <br /> <a  id="vv" href="" target="_blank">
					<img
						 src="#" id="output2" width="100px" height="100px;"></a> <small
						id="descriptionhelp" class="form-text text-muted"></small>
				</div>
				
				<div >
					<label class="form-label col-md-6" for="customFile"> Upload
						Receipt </label> <input type="file" name="file" value="Attach" id="upload"
						name="upload" accept=".jpg,.png,.bmp" class="form-group col-md-6"
						onchange="loadFile(event);">
					
				</div>
                
				<div class="form-group form-check ">
					<input type="checkbox" class="form-check-input"
						name="checkboxpolicy" id="exampleCheck1" required="required">
					<label class="form-check-label" for="exampleCheck1">label</label>
					<!-- I am hereBy confirm that information added by me is correct. -->

				</div>
				<button type="submit" class="btn btn-primary" id="Accept">Accept</button>
				<button type="button" class="btn btn-primary" id="Reject"
					onclick="reset()">Clear</button>
			</form>

		</div>
	</div>

</div>
<<script type="text/javascript">

var loadFile = function(event) {
    var output = document.getElementById('output2');
    var vv = document.getElementById('vv');
console.log("fdvdfvdf");
    output.src = URL.createObjectURL(event.target.files[0]);
    
    vv.href = URL.createObjectURL(event.target.files[0]);
    console.log("fbsfdbgf");
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
       // free memory
    }
}
function reset()
{
	alert("inside resdet");
	 document.getElementById("reimb_user_amount").value='';
	 document.getElementById("inputState").selectedIndex = 1; //1 = option 2

	 document.getElementById("exampleFormControlTextarea1").value='';
	 document.getElementById("upload").value='';
	 document.getElementById("exampleCheck1").value='';
	 //document.getElementById("output2").src='#';
	 console.log("before remove");
	 document.getElementById('output2').removeAttribute('src');
   
	 document.getElementById("vv").href='#';
	 
	
};
</script>

<script type="text/javascript">


	
	function validate() {
		//seetting dropdown
		console.log("inside");
		let inputstate = document.getElementById("inputState");
		let selectedReimDropdown = inputstate.value;
		console.log("inde dropdown" + selectedReimDropdown);
		if (selectedReimDropdown == "null") {
		//	<div class="alert alert-success col-md-6" id="successmessasge">
			let successmessasge = document.getElementById("successmessasge");
			successmessasge.class = "alert alert-danger col-md-6";
			successmessasge.style.display ='block';
			let successfailurepopup = document.getElementById("successfailureinner");
			successfailurepopup.innerHTML = "Reimbursement Type value should not be Blank. ";
			//alert("dropdown value shou;d not be mu[[]]");
			return false;
		}

		//for description
		let description = document
				.getElementById("exampleFormControlTextarea1").value;
		if (description == "" || description == null) {
			let successmessasge = document.getElementById("successmessasge");
			successmessasge.class = "alert alert-danger col-md-6";
			successmessasge.style.display ='block';
			let successfailurepopup = document.getElementById("successfailureinner");
			successfailurepopup.innerHTML = "Description should not be Blank.";
			//alert("Please enter deswcription");
			
			return false;
		}

		//fileupload
		let input_element = document.getElementById("upload");
		let fileName = input_element.value;
		console.log("this is my finlename"+fileName);
		/* if(fineName =='')
			{
			successmessasge.class = "alert alert-danger col-md-6";
			successmessasge.style.display ='block';
			let successfailurepopup = document.getElementById("successfailureinner");
			successfailurepopup.innerHTML = "Please upload file.It should not be blank.";
			} */
		var allowed_extensions = new Array("jpg", "png", "gif");
		var file_extension = fileName.split('.').pop();
		var flag = 0;
		for (var i = 0; i < allowed_extensions.length; i++) {
			if (allowed_extensions[i] == file_extension) {
				flag = 1;
				return;

			}

		}
		if (flag != 1) {
			let successmessasge = document.getElementById("successmessasge");
			successmessasge.class = "alert alert-danger col-md-6";
			successmessasge.style.display ='block';
			let successfailurepopup = document.getElementById("successfailureinner");
			successfailurepopup.innerHTML = "File Format must be jpg, png, gif.";
			//alert("file format does not matrch");
			return false;
		}

		return true;

	}
</script>
	


<script type="text/javascript" src="js/getReimbursementType.js"></script>
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
<%@ include file="html/footer.jsp"%>