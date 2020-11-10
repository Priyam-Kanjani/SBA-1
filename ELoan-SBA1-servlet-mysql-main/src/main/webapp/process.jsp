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
	<!-- write the code to read application number, and send it to admincontrollers
	     callemi method to calculate the emi and other details also provide links
	     to logout and admin home page
	-->
	
<div align="right"><a href="index.jsp">Logout</a></div>
<div align="right"><a href="adminhome1.jsp">Logout</a></div>
<h4>Process Loan</h4>
<br /><br />
<form action="AdminController?action=process" method="POST">
  <label ><H4>Process Application</H4></label>
  <label for="applno">Application Number:</label><br>
  <input type="text" id="applno" name="appno" required "><br>
  <label for="status">Application Number:</label><br>
  <input type="radio" id="accepted" value ="accepted" name="status" required"><label for="accepted">individual</label></br>
  <input type="radio" id="rejected" value ="rejected" name="status" required"><label for="rejected">individual</label></br>
  <label for="sanctionedamt">Sanctioned Loan Ammount:</label><br>
  <input type="text" id="sanctionedamt" name="sanctionedamt" required "><br>
  <label for="term">Term of Loan:</label><br>
  <input type="text" id="term" name="term" required "><br>
  <label for="paystartdate">Payment Start Date:</label><br>
  <input type="date" id="paystartdate" name="paystartdate" required "><br>
  <label for="emi">Monthly Interest Rate:</label><br>
  <input type="text" id="rate" name="rate" required "><br>
  <input type="submit" value="Submit">
</form> 
<br/><br/>
EMI: <%request.getAttribute(emi); %>

<jsp:include page="footer.jsp"/>
</body>
</html>