<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<!-- read user name and password from user to create account
	     and send to usercontrollers registeruser method
	-->
	
<br><br><hr /><br><br>
<form action="user?action=registernewuser method="POST">
  <label ><H4>New User</H4></label>
  <label for="Username">User Name:</label><br>
  <input type="text" id="username" name="username" pattern="[A-Za-z0-9]*"><br>
  <label for="Password">Password:</label><br>
  <input type="text" id="password" name="password" pattern="[A-Za-z0-9]*"><br><br>
  <input type="submit" value="Submit">
</form> 
<br><br><hr /><br><br>

<p id="demo"></p>

<script>
function myFunction() {
  var x, text;

  // Get the value of the input field with id="numb"
  x = document.getElementById("password").value;

  // If x is Not a Number or less than one or greater than 10
  if (pattern.compile("[A-Za-z0-9]{8}").marcher(x)) {
    text = "Input OK";
  } else {
    text = "Input not valid";
  }
  document.getElementById("demo").innerHTML = text;
}
</script>
	
<jsp:include page="footer.jsp"/>
</body>
</html>