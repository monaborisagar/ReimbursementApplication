/**
 * 
 */
console.log("this is message");


window.onload = function() {
	let submit = document.getElementById('submit').addEventListener('click', getPoke1);
}

function getPoke1() {

	let username = document.getElementById("username");
	let password = document.getElementById("password");
	console.log(`username is ${username.value} and password is ${password.value}`);
	var formobj = new Object();
	formobj.username = document.getElementById("username").value;
	formobj.password = document.getElementById("password").value;

	//let pokeId = document.getElementById('pokeId').value;
	//STEP 1: create the XMLHttpRequest Object
	//	is the object that allows us to make a request and parse the response
	let xhttp = new XMLHttpRequest();

	//STEP 2: create the callback function for the onreadystateschage parameter
	//			this parameter will be called throughout the stages of the request being processed

	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let success = xhttp.responseText;
			//	console.log('data is sent successfully');
			console.log(success);
			//console.log(pokeObj);
			//pokeManip(pokeObj);
		}
	};
	//  console.log(JSON.stringify(formobj));
	
	xhttp.open("POST", "http://localhost:8081/ReimursementSystem/employeeregister", true);
	xhttp.setRequestHeader("Content-type", "application/json");
	xhttp.send('{username=mona,password=mona}'); //this is not worked
	
	
	//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	//xhttp.send('username=Henry&password=Ford');
	
	//please write inside 
	//System.out.println("call comes gere");
		 //String dv= (String) request.getParameter("username");
		// System.out.println(dv);
	
	
	/*xhttp.open("GET", "http://localhost:8081/ReimursementSystem/employeeregister?username=Henry&password=Ford", true);
	//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	//xhttp.send(); // and write code inside doGet method 
	//System.out.println("call comes gere");
		 //String dv= (String) request.getParameter("username");
		// System.out.println(dv);
		
		
	*/
	//xhttp.send('username=Henry&password=Ford'); this worked
	//xhttp.send(JSON.stringify(formobj)); //this is not worked
	//xhttp.send("{username=mona,password=mona}"); // this is not worked
}