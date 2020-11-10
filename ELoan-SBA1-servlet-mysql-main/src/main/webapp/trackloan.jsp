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
	<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->
	
	
	<div align="right"><a href="index.jsp">Logout</a></div>
	<div align="right"><a href="userhome.jsp">User Home</a></div>
	
  <form action="user?action=displaystatus" method="POST">
  <label ><H4>Track Loan Application</H4></label>
  <label for="Application Number">User Name:</label><br>
  <input type="text" id="appno" name="appno" required "><br>
  <input type="submit" value="Submit">
</form> 
<br/><br/>
<H5>Status: <%request.getAttribute(status);%>

<jsp:include page="footer.jsp"/>
</body>
</html>