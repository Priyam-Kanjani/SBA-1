<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eLoan system</title>
</head>
<body>
	<!-- write the html code to read user credentials and send it to validateservlet
	    to validate and user servlet's registernewuser method if create new user
	    account is selected
	-->
	
<jsp:include page="header.jsp"/>
	
<hr />	
	

<form action="user" method="POST">
  <label ><H4>Admin Login</H4></label>
  <label for="Username">User Name:</label><br>
  <input type="text" id="username" name="username" required pattern="[A-Za-z0-9]*"><br>
  <label for="Password">Password:</label><br>
  <input type="text" id="password" name="password" required pattern="[A-Za-z0-9]*"><br><br>
  <input type="submit" value="Submit">
</form> 
<br><br><hr /><br><br>
New Usere?
<a href="newuserui.jsp">Click here to create account.</a>
<br><br><hr />	
<jsp:include page="footer.jsp"/>
</body>
</html>