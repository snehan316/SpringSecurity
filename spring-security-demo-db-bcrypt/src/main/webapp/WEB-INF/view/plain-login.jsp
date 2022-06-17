<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<style>
 .failed{
   color:red;
 }
</style>
</head>
<body>
	<h3>Custom Login Page</h3>

	<form:form action="${pageContext.request.contextPath}/authenticateUser"
		method="POST">
		
		<c:if test="${param.error != null}">
		<i class="failed">Sorry, You have entered an invalid username/password</i>
		</c:if>
		<p>
			User Name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>

		<input type="submit" value="Login" />

	</form:form>
</body>
</html>