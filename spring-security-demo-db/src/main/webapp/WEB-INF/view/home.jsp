<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
</head>
<body>
<h2>Welcome</h2>

<hr>
<%-- <p>
User: <security:authentication property="principal.username"/>
<br><br>
Roles(s): <security:authentication property="principal.authorities"/>
</p> --%>

<security:authorize access="hasRole('MANAGER')">

<!-- Add a link to point to /leaders...for managers -->
<p>

<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
</p>
</security:authorize>

<hr>
<security:authorize access="hasRole('ADMIN')">
<!-- Add a link to point to /leaders...for admins -->
<p>

<a href="${pageContext.request.contextPath}/systems">Admin Page</a>
</p>
</security:authorize>
<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout"/>
</form:form>

</body>
</html>