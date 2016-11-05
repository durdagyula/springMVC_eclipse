<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<link rel="stylesheet" href="<spring:theme code='style'/>" type="text/css"/>
</head>
<body>
		
	<p>
		<a href="/SpringMVCProject_eclipse/admissionForm.html?theme=default">default</a>
		<a href="/SpringMVCProject_eclipse/admissionForm.html?theme=blue">blue</a>
	</p>

	<h1>USER ADMISSION FORM</h1>

	<form action="/SpringMVCProject_eclipse/submitAdmissionForm.html" method="post">
	<p>
		User Name: <input type="text" name="userName" />
	</p>
	
	<p>
		Password: <input type="password" name="userPassword" />
	</p>
		
		<input type="submit" value="Click here to submit!" />
		
	</form>

</body>
</html>