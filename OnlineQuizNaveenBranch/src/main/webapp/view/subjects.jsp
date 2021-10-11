<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Student</title>
</head>
  <style><%@include file="/view/css/subjects.css"%></style>
<body>
<ul>
  <li><a class="active" href="#home">Online Quiz</a></li>
  <li style="float:right"><a href="http://localhost:8092/">Logout</a></li>
</ul>
	<c:forEach var="subject" items="${subjects}">
	
		<form action="/getQuestions/${subject.subId}">
		<div class="card">
  			<div class="container">
    			<h4><b>${subject.subName}</b></h4>    				 
			
   				 <button type="submit" class="button button">Start</button>
  			</div>
		</div>
			<input type="hidden" name="studentId" value="${std_id}"/>		</form>
	</c:forEach>
</body>
</html>