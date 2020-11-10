<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Loans</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<!-- write code to display all the loan details 
             which are received from the admin controllers' listall method
	--> 
	<table border=1>
	<tr><th>Application Number</th><th>Purpose</th><th>Amount Requested</th><th>DOA</th><th>BStructure</th><th>BIndicator</th><th>Address</th><th>DOA</th><th>Email</th><th>Status</th><tr>
	<%request.getAttribute(LoanInfo) %>
<jsp:include page="footer.jsp"/>
</body>
</html>