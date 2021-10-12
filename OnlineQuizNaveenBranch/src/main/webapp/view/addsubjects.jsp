

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Subject</title>
</head>

  <style><%@include file="/view/css/addquestion.css"%></style>
<body>

<ul>
  <li><a class="active" href="#home">Online Quiz</a></li>
  <li style="float:right"><a href="/">Logout</a></li>
</ul>


<wrap>
  <card>
    <tag>
      Add Subject
    </tag>
    
List of subjects available:
<c:forEach var="subject" items="${subjects}">
		<div class="card">
  			<div class="container">
    			<h4><b>${subject.subName}</b></h4>    				 
  			</div>
		</div>
</c:forEach>
Add New Subject:
<form action="/addsubject">
	<input type="text" name="subjectName"/><br/>
	<input type="submit"/>
</form>
	</form>
  </card>
</wrap>
	
</body>
</html>