<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<html>
<body>
	
	<h1>${headerMessage}</h1>
	
	<h3>Congratulation! We processed your form successfully</h3>
	
	<h2>Details submitted by you:</h2>

	<table>
		<tr>
			<td><spring:message code="label.userName" />:</td>
			<td>${user1.userName}</td>
		</tr>
		
		<tr>
			<td><spring:message code="label.password" />:</td>
			<td>${user1.userPassword}</td>
		</tr>	
		
		<tr>
			<td><spring:message code="label.school" />:</td>
			<td>${user1.school}</td>
		</tr>
	</table>


</body>
</html>