<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>CodeChallenge on JSTL</title>
</head>
<body>
	<h3>Click below to trigger a servlet</h3>
	<c:url var="codeVar" value="CodeChallenge">
		<c:param name="id" value="m1064525" />
		<c:param name="name" value="Bharath" />
		<c:param name="salary" value="1234" />
	</c:url>
	<a href="${codeVar}">Send To Servlet</a>


	<br>
	<br>

	<h3>Example of length in function</h3>
	<c:set var="data" value="codechallenge" />
	Length of
	<b>${data}</b> : ${fn:length(data)}

	<br>
	<br>

	<h3>Example using when tag</h3>
	<c:choose>
		<c:when test="${fn:length(data)>5}">
 in when : ${fn:toUpperCase(data)}
</c:when>
		<c:otherwise>
in otherwise : ${data}
</c:otherwise>
	</c:choose>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>