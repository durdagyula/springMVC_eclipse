<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<html>
<body>
	
	<h3>List of the users:</h3>

	<c:if test="${not empty ulist}">

		<ul>
			<c:forEach var="listValue" items="${ulist}">
				<li>${listValue}</li>
				<button type="button" onclick=""><spring:message code="label.delete" /></button>  
			</c:forEach>
		</ul>

	</c:if>


</body>
</html>