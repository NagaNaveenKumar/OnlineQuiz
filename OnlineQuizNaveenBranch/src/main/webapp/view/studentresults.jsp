

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8" />
	<title>Result List</title>
	<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>

  <style><%@include file="/view/css/studentlist.css"%></style>

<body>

<ul>
  <li><a class="active" href="#home">Online Quiz</a></li>
  <li style="float:right"><a href="http://localhost:8092/">Logout</a></li>
</ul>

<div class="table-title">
<h3>Result List</h3>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">Quiz Id</th>
<th class="text-left">Student Id</th>
<th class="text-left">Subject Id</th>
<th class="text-left">Score</th>
</tr>
</thead>
<tbody class="table-hover">
	
<c:forEach var="result" items="${results}">
<tr>
<td class="text-left">${result.quiz_id}</td>
<td class="text-left">${result.std_id}</td>
<td class="text-left">${result.sub_id}</td>
<td class="text-left">${result.score}</td>
</tr>
</c:forEach>
</tbody>
</table>
  

  </body>
</html>