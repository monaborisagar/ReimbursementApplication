/**
 * 
 */

document.addEventListener('DOMContentLoaded', function(event) {
	console.log("Loading all user with all request");
	
	 let username =document.getElementById('username').value;	
console.log(username);
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let alluserlist = JSON.parse(xhttp.responseText);
			//let success = xhttp.responseText;
			//console.log(success);
			console.log(alluserlist);
			var d = new Date(1234567890000);
			console.log("epoch coverter"+d);
			document.getElementById('alluserdetails').innerHTML=`
				<table class="table table-striped" style="align-content: center; id="allusertableid">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">username</th>
										<th scope="col">Amount</th>
										<th scope="col">Submitted</th>
										<th scope="col">Resolved</th>
										<th scope="col">Description</th>
										<th scope="col">Type</th>
										<th scope="col">Status</th>
										<th scope="col">button</th>

									</tr>
								</thead>
								<tbody id="tbody2"></tbody> </table>`;
							
			let i=0;					
			for(let alluser of alluserlist)
			{
			
			console.log(alluser);
			let table = document.getElementById("tbody2");
             let row = table.insertRow(i);
                let cell1 = row.insertCell(0);
                let cell2 = row.insertCell(1);
				let cell3 = row.insertCell(2);
				let cell4 = row.insertCell(3);
				let cell5 = row.insertCell(4);
				let cell6 = row.insertCell(5);
				let cell7 = row.insertCell(6);
				let cell8 = row.insertCell(7);
				let cell9 = row.insertCell(8);
                cell1.innerHTML = `${i+1}`;
                 cell2.innerHTML = alluser['username'];
                cell3.innerHTML = `${alluser['reimbAmount']}`;
                cell4.innerHTML =  new Date(alluser['reimbSubmitted']).toISOString().slice(0, 19).replace('T', ' ');;
               // cell4.innerHTML =  `${pendingrequest['reimbResolved']}`;
                cell5.innerHTML = new Date(alluser['reimbResolved']).toISOString().slice(0, 19).replace('T', ' ');;
                cell6.innerHTML =  `<textarea class="form-control rounded-0"
												 rows="3" col='2' disabled>${alluser['reimbDescription']}</textarea>`;
                cell7.innerHTML =  `${alluser['typeName']}`;
                cell8.innerHTML =  `${alluser['statusName']}`;
                cell9.innerHTML =  `<a href="#" class="btn btn-primary" id="delete${alluser['reimbId']}" onclick="deletemethod(this.id)">Delete</a>
                <a href="#" class="btn btn-primary" id="approve${alluser['reimbId']}" onclick="managerApproverequest(this.id)">Approve</a>
					<a href="#" class="btn btn-primary" id="reject${alluser['reimbId']}" onclick="managerRejectequest(this.id)">Reject</a>
					                   

                    `;
				i++;
			}
		}
	};

	xhttp.open("GET", "http://localhost:8081/ReimursementSystem/getReimbursementUserData",true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send();	
	
	
	});
	
function managerApproverequest(approveid)
{
	console.log("approvedid is "+approveid);
	callingajax(approveid);
}
function managerRejectequest(rejectid)
{
	console.log("rejectdid is "+rejectid);
	callingajax(rejectid);
}
function deletemethod(deleteid)
{
	console.log("deletedid is "+deleteid);
	callingajax(deleteid);
}

function callingajax(id)
{
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let status = xhttp.responseText;
			console.log(status);
			
		}
	};

	xhttp.open("GET", `http://localhost:8081/ReimursementSystem/updateReimbursementState?id=${id}`);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send();
}