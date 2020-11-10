<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Form</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<jsp:include page="header.jsp"/>
<body onload="myFunction()">

<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->

<form action="user?action=placeloan method="POST">
  <label ><H4>Request a loan</H4></label>
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

</script>

<jsp:include page="footer.jsp"/>
</body>
</html>