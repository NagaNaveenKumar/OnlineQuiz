
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" >
    
<meta charset="ISO-8859-1">
<title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
</head>

  <style><%@include file="/view/css/dashboard.css"%></style>
<body>


<ul>
  <li><a class="active" href="#home">Online Quiz</a></li>
  <li style="float:right"><a href="http://localhost:8092/">Logout</a></li>
</ul>

<div class="main-container">
  <div class="heading">
    <h1 class="heading__title">Expert Dashboard</h1>
  </div>
  <div class="cards">
  
    <div class="card card-1">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title"> To Add subject</h2>
      <p class="card__apply">
        <a class="card__link" href="/add/subject">Click here<i class="fas fa-arrow-right"></i></a>
      </p>
    </div>
    <div class="card card-2">
      <div class="card__icon"><i class="fas fa-bolt"></i></div>
      <p class="card__exit"><i class="fas fa-times"></i></p>
      <h2 class="card__title">To Add Question</h2>
      <p class="card__apply">
        <a class="card__link" href="/add/question">Click here <i class="fas fa-arrow-right"></i></a>
      </p>
    </div>
  </div>
</div>
</body>
</html>