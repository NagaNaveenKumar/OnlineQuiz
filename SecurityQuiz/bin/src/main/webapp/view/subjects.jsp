<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="subject" items="${subjects}">
		<form action="/getQuestions/${subject.subId}">
			<input type="hidden" name="studentId" value="${std_id}"/>
			<input type="submit" value="${subject.subName}"/>
		</form>
	</c:forEach>
</body>
</html>