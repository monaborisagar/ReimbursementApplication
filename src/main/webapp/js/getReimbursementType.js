/**
 * 
 */
/**
 * 
 */
/**
 * DOMContentLoaded
 */
function displayPending() {
	let username = document.getElementById('username').value;
	console.log(username);
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let pendingstatusList = JSON.parse(xhttp.responseText);
			console.log(pendingstatusList.length);
			var d = new Date(1234567890000);
			console.log("epoch coverter" + d);
			document.getElementById('pendingrequest').innerHTML = `
				<table class="table table-striped" style="align-content: center; id="tableid">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Amount</th>
										<th scope="col">Submitted</th>
										<th scope="col">Resolved</th>
										<th scope="col">Description</th>
										<th scope="col">Type</th>
										<th scope="col">Status</th>

									</tr>
								</thead>
								<tbody id="tbody"></tbody> </table>`;

			let i = 0;
			if (Object.keys(pendingstatusList).length == 0) {
				
				let tableempty = document.getElementById("nomessage");
				tableempty.innerHTML = `&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There is no data available.`; 
			}
			for (let pendingrequest of pendingstatusList) {

				let table = document.getElementById("tbody");
				let row = table.insertRow(i);
				let cell1 = row.insertCell(0);
				let cell2 = row.insertCell(1);
				let cell3 = row.insertCell(2);
				let cell4 = row.insertCell(3);
				let cell5 = row.insertCell(4);
				let cell6 = row.insertCell(5);
				let cell7 = row.insertCell(6);
				let cell8 = row.insertCell(7);
				cell1.innerHTML = `${i + 1}`;
				cell2.innerHTML = `${pendingrequest['reimbAmount']}`;
				cell3.innerHTML = new Date(pendingrequest['reimbSubmitted']).toISOString().slice(0, 19).replace('T', ' ');
				// cell4.innerHTML =  `${pendingrequest['reimbResolved']}`;
				cell4.innerHTML = new Date(pendingrequest['reimbResolved']).toISOString().slice(0, 19).replace('T', ' ');
				cell5.innerHTML = `<textarea class="form-control rounded-0"
												 rows="3" col='2' disabled>${pendingrequest['reimbDescription']}</textarea>`;
				cell6.innerHTML = `${pendingrequest['typeName']}`;
				cell7.innerHTML = `${pendingrequest['statusName']}`;
				cell8.innerHTML = `<a href="#" class="btn btn-primary" id="${i}" onclick="deletemethod(this)">Delete</a> `;
				i++;
			}
		}
	};

	xhttp.open("GET", `http://localhost:8081/ReimursementSystem/getReimbursementPendingStates?statusid=1&username=${username}`);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send();
}
function deletemethod(buttonid) {
	document.getElementById("tbody").deleteRow(buttonid);

}
function displayApproved() {
	let username = document.getElementById('username').value;
	console.log(username);
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let approvedstatusList = JSON.parse(xhttp.responseText);
			console.log(approvedstatusList.length);
			var d = new Date(1234567890000);
			console.log("epoch coverter" + d);
			document.getElementById('approvedrequest').innerHTML = `
				<table class="table table-striped" style="align-content: center; id="approvedtableid">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Amount</th>
										<th scope="col">Submitted</th>
										<th scope="col">Resolved</th>
										<th scope="col">Description</th>
										<th scope="col">Type</th>
										<th scope="col">Status</th>

									</tr>
								</thead>
								<tbody id="tbody1"></tbody> </table>`;

			let i = 0;
			if (Object.keys(approvedstatusList).length == 0) {
				
				let tableempty = document.getElementById("nomessage1");
				tableempty.innerHTML = `&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There is no data available.`; 
			}
			for (let approvedstatus of approvedstatusList) {

				let table = document.getElementById("tbody1");
				let row = table.insertRow(i);
				let cell1 = row.insertCell(0);
				let cell2 = row.insertCell(1);
				let cell3 = row.insertCell(2);
				let cell4 = row.insertCell(3);
				let cell5 = row.insertCell(4);
				let cell6 = row.insertCell(5);
				let cell7 = row.insertCell(6);
				let cell8 = row.insertCell(7);
				cell1.innerHTML = `${i + 1}`;
				cell2.innerHTML = `${approvedstatus['reimbAmount']}`;
				cell3.innerHTML = new Date(approvedstatus['reimbSubmitted']).toISOString().slice(0, 19).replace('T', ' ');
				// cell4.innerHTML =  `${pendingrequest['reimbResolved']}`;
				cell4.innerHTML = new Date(approvedstatus['reimbResolved']).toISOString().slice(0, 19).replace('T', ' ');
				cell5.innerHTML = `<textarea class="form-control rounded-0"
												 rows="3" col='2' disabled>${approvedstatus['reimbDescription']}</textarea>`;
				cell6.innerHTML = `${approvedstatus['typeName']}`;
				cell7.innerHTML = `${approvedstatus['statusName']}`;
				cell8.innerHTML = `<a href="#" class="btn btn-primary" id="${i}" onclick="deletemethod(this)">Delete</a>

					


                            `;
				i++;
			}
		}
	};

	xhttp.open("GET", `http://localhost:8081/ReimursementSystem/getReimbursementPendingStates?statusid=2&username=${username}`);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send();
}

