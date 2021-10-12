<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${subjects}
<form action="/addsubject">
	<input type="text" name="subjectName"/><br/>
	<input type="submit"/>
</form>
</body>
</html>