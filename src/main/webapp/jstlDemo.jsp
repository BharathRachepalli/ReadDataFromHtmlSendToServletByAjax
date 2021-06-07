<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jstl demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
</head>
<body>
<h1>DEMO of Loading time</h1>
<c:set var="time" value="<%= new java.util.Date() %>"/>
Time On Server When loaded :  ${time}
<br><br>
<h1>DEMO of when and otherwise</h1>
<c:set var="data" value="qwerty" />

Length of <b>${data}</b> : ${fn:length(data)}
<br><br>

<c:choose>
<c:when test="${fn:length(data)>5}">
 in when : ${fn:toUpperCase(data)}
</c:when>
<c:otherwise>
in otherwise : ${data}
</c:otherwise>
</c:choose>
<br><br>
<h1>Click the link to trigger Servlet using jstl</h1>
<c:url var="tempLink" value="GetAjaxData"></c:url>

<a href="${tempLink}">Fetch Details</a>





<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>