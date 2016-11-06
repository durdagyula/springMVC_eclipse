<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<html>
<head>
	<link rel="stylesheet" href="<spring:theme code='styleSheet'/>" type="text/css"/>
</head>
<body>
	<select onchange="location = this.value">
		   <option><spring:message code="label.theme" /></option>
           <option value="/SpringMVCProject_eclipse/admissionForm.html?theme=default"><spring:message code="label.default" /></option>
           <option value="/SpringMVCProject_eclipse/admissionForm.html?theme=blue"><spring:message code="label.blue" /></option>
           <option value="/SpringMVCProject_eclipse/admissionForm.html?theme=black"><spring:message code="label.black" /></option>
    </select>
    <spring:message code="label.language" />: <a href="?locale=en"><spring:message code="label.english" /></a>|<a href="?locale=hu"><spring:message code="label.hungarian" /></a>
	
	<!--	
	<p>
		<a href="/SpringMVCProject_eclipse/admissionForm.html?theme=default">default</a>
		<a href="/SpringMVCProject_eclipse/admissionForm.html?theme=blue">blue</a>
	</p>
 	-->
	<h1>
		<spring:message code="label.title" />
	</h1>

	<form action="/SpringMVCProject_eclipse/submitAdmissionForm.html" method="post">
		<table>
			<tr>
				<td><spring:message code="label.userName" />:</td>
				<td><input type="text" name="userName" /></td>
			</tr>
			
			<tr>
				<td><spring:message code="label.password" />:</td>
				<td><input type="password" name="userPassword" /></td>
			</tr>
			
			<tr>
				<td><spring:message code="label.school" />:</td>
				<td><input type="text" name="school" /></td>
			</tr>
		</table>
		
		<input type="submit" value="<spring:message code="label.submit" />" />
	
	</form>
	
	Test <<< Current Locale : ${pageContext.response.locale} >>>

</body>
</html>