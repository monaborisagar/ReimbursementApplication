/**
 * DOMContentLoaded
 */





document.addEventListener('DOMContentLoaded', function(event) {
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let success = JSON.parse(xhttp.responseText);
			console.log(success);
			var size = Object.keys(success).length;
			console.log(size);
			//location.href="http://localhost:8081/ReimursementSystem/employeereimbursement.jsp";
			if(document.getElementById("inputState") != null)
			{
			var select = document.getElementById("inputState");
			let entries = Object.entries(success);
			let option2 = document.createElement('option');
				option2.value = "null";
				option2.text = "Choose...";
				select.appendChild(option2);
			for (const [fruit, count] of entries) {
				console.log(`There are ${fruit} ${count}s`);
				let option = document.createElement('option');
				option.value = fruit;
				option.text = count;
				
				select.appendChild(option);
			}
			//console.log(success.userName);	
			}else
			{
				console.log("this webpage it is not displayed");
			}
           

			//location.href = "http://localhost:8081/ReimursementSystem/loginpage.jsp?username="+success.userName;
		}
	};

	xhttp.open("POST", "http://localhost:8081/ReimursementSystem/getReimbursementTypes");
	xhttp.setRequestHeader("Content-type", "application/json");
	xhttp.send();
})
