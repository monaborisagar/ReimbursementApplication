

<%@ include file="html/header.jsp"%>


<div style="margin: 50px;">

	<div class="card">
		<div class="card-header">Employee page</div>
		<div class="card-body">
		
		<section>
      
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item waves-effect waves-light">
            <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Home</a>
          </li>
          <li class="nav-item waves-effect waves-light">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
          </li>
          <li class="nav-item waves-effect waves-light">
            <a class="nav-link active" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="true">Contact</a>
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">Raw denim you
            probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master
            cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh
            dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia
            cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</div>
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Food truck fixie
            locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog
            sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo
            booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo
            nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero
            magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
            shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
            vero sint qui sapiente accusamus tattooed echo park.</div>
          <div class="tab-pane fade active show" id="contact" role="tabpanel" aria-labelledby="contact-tab">Etsy mixtape wayfarers,
            ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi
            farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore
            carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
            pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk
            vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork
            sustainable tofu synth chambray yr.</div>
        </div>

      </section>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<section id="pendingrequest">
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
						<td> <textarea class="form-control rounded-0"
									id="exampleFormControlTextarea2" rows="3" col='2'>his is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd</textarea></td>
						<td><a href="#" class="btn btn-primary">View</a> <a href="#"
							class="btn btn-primary">Accept</a> <a href="#"
							class="btn btn-primary">Reject</a></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Mark</td>
						<td>6788</td>
						<td>shopping</td>
						<td>
								<textarea class="form-control rounded-0"
									id="exampleFormControlTextarea2" rows="3" col='2'>his is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd this is for movie
							dfvjnjfdjk dfnvjnd this is for movie dfvjnjfdjk dfnvjnd</textarea>
						</td>
						<td><a href="#" class="btn btn-primary">View</a> <a href="#"
							class="btn btn-primary">Accept</a> <a href="#"
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
						<td><a href="#" class="btn btn-primary">View</a> <a href="#"
							class="btn btn-primary">Accept</a> <a href="#"
							class="btn btn-primary">Accept</a></td>
					</tr>
				</tbody>
			</table>
		</section>
		<section id="approvedstate">
		hello this is testing
		</section>
			

		</div>
	</div>
</div>

<div style="margin: 50px;" id="pending">

	<div class="card">
		<div class="card-header">User Details </div>
		<div class="card-body">
			<!-- <h5 class="card-title">Special title treatment</h5>
			<p class="card-text">With supporting text below as a natural
				lead-in to additional content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a> -->
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
						type="number" class="form-control" id="profilefirstname"
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
</div>

<%@ include file="html/footer.jsp"%>