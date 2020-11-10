<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Loan Application</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<!-- read the application number to edit from user and send to 
	     user controller to edit info
	-->
	
  <form action="user?action=placeloan method="POST">
  <label ><H4>Modify loan Request</H4></label>
  <label for="applno">Application Number:</label><br>
  <input type="text" id="applno" name="applno" required"><br>
  <label for="purpose">Purpose:</label><br>
  <input type="text" id="purpose" name="purpose" required"><br>
  <label for="amtrequest">Requested Ammount:</label><br>
  <input type="text" id="amtrequest" name="amtrequest" required"><br><br>
  <label for="bstructure">Business Structure:</label><br>
  <input type="radio" id="individual" value ="individual" name="businessstructure" required"><label for="individual">individual</label></br>
  <input type="radio" id="organisation" value ="organisation" name="businessstructure" required"><label for="organisation">organisation</label><br><br>
   <label for="bstructure">Business Indicator:</label><br>
  <input type="radio" id="salaried" value ="salaried" name="businessindicator" required"><label for="individual">salaried</label></br>
  <input type="radio" id="nonsalaried" value ="nonsalaried" name="businessindicator" required"><label for="non salaried">organisation</label><br><br>
  <label for="Address">Address:</label><br>
  <input type="text" id="Address" name="Address" required"><br><br>
  <input type="submit" value="Submit">
</form> 
	
<jsp:include page="footer.jsp"/>
</body>
</html>