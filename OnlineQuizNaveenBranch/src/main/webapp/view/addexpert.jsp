<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/add/expert" method="post">
		Name:<br/>
		<input type="text" name="name"/><br/>
		Password:<br/>
		<input type="password" name="password"/><br/>
		Confirm password:<br/>
		<input type="password" name="confirm-password"/><br/>
		<input type="submit"/>
	</form>
</body>
</html>