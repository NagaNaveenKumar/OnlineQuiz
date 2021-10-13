<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add question</title>
</head>

  <style><%@include file="/view/css/addquestion.css"%></style>
<body>


    <div style="text-algin:center;font-weight:bold">
      Add question
    </div>
    <form action="/addquestions">
    	<fieldset>
		<legend>Choose any subject</legend>
		<c:forEach var="subject" items="${subjects}">
				
				<input type="radio" name="subjectName" value="${subject.subName}">${subject.subName}<br/>
		</c:forEach>
		</fieldset>
		  <fieldset>
    <label for="option1">Question Description</label>
    <input type="text" name="questiondescription" placeholder="Question Description">
  </fieldset>
  <fieldset>
    <label for="option1">Option 1</label>
    <input type="text" name="option1" placeholder="Option 1">
  </fieldset>
  <fieldset>
    <label for="option2">Option 2</label>
    <input type="text" name="option2" placeholder="Option 2">
  </fieldset>
  <fieldset>
    <label for="option3">Option 3</label>
    <input type="text" name="option3" placeholder="Option 3">
  </fieldset>
  <fieldset>
    <label for="option4">Option 4</label>
    <input type="text" name="option4" placeholder="Option 4">
  </fieldset>
  <fieldset>
    <label for="correctoption">Correct Option</label>
    <input type="text" name="correctoption" placeholder="correct option">
  </fieldset>

  <button>Submit</button>
  </form>
	
</body>
</html>
