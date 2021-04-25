/**
 * 
 */

document.addEventListener('DOMContentLoaded', function(event) {
	console.log("Loading all user with all request");

	let username = document.getElementById('username').value;
	console.log(username);
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let alluserlist = JSON.parse(xhttp.responseText);
			//let success = xhttp.responseText;
			//console.log(success);
			console.log(alluserlist);
			//var alluserlist= [{"reimbId":17,"username":"mona","reimbAmount":55.00,"reimbSubmitted":1619232477586,"reimbResolved":1619232477586,"reimbDescription":"this is description ","reimbrecipturl":null,"reimbAuthor":0,"typeName":"shopping","statusName":"approved"},{"reimbId":21,"username":"mona","reimbAmount":10000.00,"reimbSubmitted":1619299540539,"reimbResolved":null,"reimbDescription":"sdvsfd","reimbrecipturl":null,"reimbAuthor":0,"typeName":"shopping","statusName":"approved"},{"reimbId":22,"username":"mona","reimbAmount":10111.00,"reimbSubmitted":1619299580535,"reimbResolved":null,"reimbDescription":"fdvd","reimbrecipturl":null,"reimbAuthor":0,"typeName":"shopping","statusName":"approved"},{"reimbId":15,"username":"mona","reimbAmount":65.77,"reimbSubmitted":1619232261853,"reimbResolved":1619232261853,"reimbDescription":"this is dis 2","reimbrecipturl":null,"reimbAuthor":0,"typeName":"certification","statusName":"denied"},{"reimbId":12,"username":"mona","reimbAmount":767.88,"reimbSubmitted":1619232245094,"reimbResolved":1619232245094,"reimbDescription":"this i expennse done for tesitng","reimbrecipturl":null,"reimbAuthor":0,"typeName":"certification","statusName":"approved"},{"reimbId":8,"username":"mona","reimbAmount":33.00,"reimbSubmitted":1619184342782,"reimbResolved":null,"reimbDescription":"sdcvds","reimbrecipturl":null,"reimbAuthor":0,"typeName":"shopping","statusName":"approved"},{"reimbId":18,"username":"mona","reimbAmount":767.88,"reimbSubmitted":1619232637802,"reimbResolved":1619232637802,"reimbDescription":"this i expennse done for tesitng","reimbrecipturl":null,"reimbAuthor":0,"typeName":"certification","statusName":"denied"},{"reimbId":10,"username":"mona","reimbAmount":43.99,"reimbSubmitted":1619185597269,"reimbResolved":null,"reimbDescription":"sdsvfvfv","reimbrecipturl":null,"reimbAuthor":0,"typeName":"shopping","statusName":"approved"},{"reimbId":13,"username":"sona","reimbAmount":67.77,"reimbSubmitted":1619232251965,"reimbResolved":1619232251965,"reimbDescription":"this i expennse donefbfgbtesitng","reimbrecipturl":null,"reimbAuthor":0,"typeName":"certification","statusName":"approved"},{"reimbId":14,"username":"sona","reimbAmount":455.77,"reimbSubmitted":1619232256551,"reimbResolved":1619232256551,"reimbDescription":"descriptrion 3","reimbrecipturl":null,"reimbAuthor":0,"typeName":"migrate","statusName":"approved"}];
			var d = new Date(1234567890000);
			console.log("epoch coverter" + d);
			document.getElementById('alluserdetailsmana').innerHTML = `
				<table class="table" style="align-content: center;" id="formattable"  data-toggle="table"
                     data-search="true"
                     data-filter-control="true" 
                     data-show-refresh="true"
                     data-show-toggle="true"
                    data-pagination="true"
                     data-toolbar="#toolbar" >
								<thead>
									<tr>
										<th  data-field="id" data-filter-control="input" data-sortable="true">#</th>
										<th  data-field="rid" data-filter-control="input" data-sortable="true">#RID</th>
										<th  data-field="username" data-filter-control="input" data-sortable="true">username</th>
										<th  data-field="amount" data-filter-control="input" data-sortable="true">Amount</th>
										<th  data-field="Submitted" data-filter-control="input" data-sortable="true">Submitted</th>
										<th  data-field="Resolved" data-filter-control="input" data-sortable="true">Resolved</th>
										<th  data-field="Description" data-filter-control="input" data-sortable="true">Description</th>
										<th  data-field="Type" data-filter-control="input" data-sortable="true">Type</th>
										<th  data-field="Status" data-filter-control="input" data-sortable="true">Status</th>
										<th  data-field="button" data-filter-control="input" data-sortable="true">button</th>

									</tr>
								</thead>
								<tbody id="tbody2" ></tbody> </table>`;

			let i = 0;
			for (let alluser of alluserlist) {

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
				let cell10 = row.insertCell(9);
				cell1.innerHTML = `${i + 1}`;
				cell2.innerHTML = alluser['reimbId'];
				cell3.innerHTML = alluser['username'];
				cell4.innerHTML = `${alluser['reimbAmount']}`;
				cell5.innerHTML = new Date(alluser['reimbSubmitted']).toISOString().slice(0, 19).replace('T', ' ');;
				// cell4.innerHTML =  `${pendingrequest['reimbResolved']}`;
				cell6.innerHTML = new Date(alluser['reimbResolved']).toISOString().slice(0, 19).replace('T', ' ');;
				cell7.innerHTML = `<textarea class="form-control rounded-0"
												 rows="3" col='2' disabled>${alluser['reimbDescription']}</textarea>`;
				cell8.innerHTML = `${alluser['typeName']}`;
				cell9.innerHTML = `${alluser['statusName']}`;
				cell10.innerHTML = `<a href="#" class="btn btn-primary" id="delete${alluser['reimbId']}" onclick="deletemethod(this.id,${i})" style = "margin-bottom:10px;">Delete</a>
                <a href="#" class="btn btn-primary" id="approve${alluser['reimbId']}" onclick="managerApproverequest(this.id,${i})"  style = "margin-bottom:10px;">Approve</a>
					<a href="#" class="btn btn-primary" id="reject${alluser['reimbId']}" onclick="managerRejectequest(this.id,${i})">Reject</a>
					                   

                    `;
				i++;
			}
       //
			var $table = $('#formattable');
			$(function() {

				$table.bootstrapTable('refreshOptions', {
					exportDataType: $(this).val()
				});

			})

			var trBoldBlue = $("table");


			$(trBoldBlue).on("click", "tr", function() {
				$(this).toggleClass("bold-blue");
			});
			
			//
		}
	};

	xhttp.open("GET", "http://localhost:8081/ReimursementSystem/getReimbursementUserData", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send();


});

function managerApproverequest(approveid, index) {
	console.log("approvedid is " + approveid);
	callingajax(approveid, index);
}
function managerRejectequest(rejectid, index) {
	console.log("rejectdid is " + rejectid);
	callingajax(rejectid, index);
}
function deletemethod(deleteid, index) {
	console.log("deletedid is " + deleteid);
	callingajax(deleteid, index);
}

function callingajax(id, index) {
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let status = xhttp.responseText;
			console.log(status);
			//to get id of rid
			let table = document.getElementById("tbody2");
			let x = document.getElementById("tbody2").rows[index].cells;
			console.log(x[1].innerHTML);
			if (status == 'approve') {
				document.getElementById('updatesuic').innerHTML = `<div class="alert alert-success" id="updatesuccess1">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successfailureinner">Reimbursement id ${x[1].innerHTML} is approved Successfully. </span>
			</div>`;
				x[8].innerHTML = `approved`;

			} else if (status == 'reject') {
				document.getElementById('updatesuic').innerHTML = `<div class="alert alert-success " id="updatesuccess2">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successfailureinner">Reimbursement id ${x[1].innerHTML} is Rejected Successfully. </span>
			</div>`;
				x[8].innerHTML = `denied`;

			} else if (status == 'delete') {
				//delete row successfully
				console.log(index);
				document.getElementById("tbody2").deleteRow(index);

				//printout
				document.getElementById('updatesuic').innerHTML = `<div class="alert alert-success " id="updatesuccess3">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successfailureinner">Reimbursement id ${x[1].innerHTML} is Deleted Successfully. </span>
			</div>`;



			} else {
				//printout
				document.getElementById('updatesuic').innerHTML = `<div class="alert alert-danger " id="updatesuccess4">
				<button type="button" class="close" data-dismiss="alert">
					<span style="color: gray; font-size: medium; margin-bottom: 10px;">x</span>
				</button>
				<span id="successfailureinner">Reimbursement id ${x[1].innerHTML} 's Operation failed. </span>
			</div>`;

			}


		}
	};

	xhttp.open("GET", `http://localhost:8081/ReimursementSystem/updateReimbursementState?id=${id}`);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send();
}


    //exporte les données sélectionnées
