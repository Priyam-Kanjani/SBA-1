<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<!-- write the code to display the loan status information 
	     received from usercontrollers' displaystatus method
	-->
	
	<% request.getAttribute("status");%>
	
<jsp:include page="footer.jsp"/>
</body>
</html>