



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expert</title>
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
      Add Expert
    </tag>
    
    <form action="/add/expert" method="post">
		Name:<br/>
		<input type="text" name="name"/><br/>
		Password:<br/>
		<input type="password" name="password"/><br/>
		Confirm password:<br/>
		<input type="password" name="confirm-password"/><br/>
		<input type="submit"/>
	</form>
  </card>
  
</wrap>
	
</body>
</html>