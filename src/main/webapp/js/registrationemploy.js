/**
 * 
 */
 var mona =10;
console.log("this is message"+mona);


window.onload = function() {
	let submit = document.getElementById('submit').addEventListener('click', getPoke1);
}

function getPoke1() {

	//let username = document.getElementById("username");
	//let password = document.getElementById("password");
	/*var formobj = new Object();
	formobj.username = document.getElementById("username").value;
	formobj.password = document.getElementById("password").value;*/
	
	
   let formobj = {
			
		userName: document.getElementById('username').value,
		passWord: document.getElementById('password').value
	
	};
	
	
	console.log(formobj.userName);
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			let success = JSON.parse(xhttp.responseText);
			//	console.log('data is sent successfully');
			console.log(success);
			console.log(success.userName);
			
			//location.href = "http://localhost:8081/ReimursementSystem/loginpage.jsp?username="+success.userName;
		}
	};
	
	xhttp.open("POST", "http://localhost:8081/ReimursementSystem/employeeregister");
	xhttp.setRequestHeader("Content-type", "application/json");
	//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	//xhttp.send('username='+username.value+'&password='+password.value); 
	//xhttp.send("{username:'mona',password:'tina'}");
	xhttp.send(JSON.stringify(formobj));
	
	
	
	
	
	
	
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