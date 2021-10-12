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
<div id="quiz-time-left"></div>
<script type="text/javascript">
var total_seconds=30*10;
var c_minutes= parseInt(total_seconds/60);
var c_seconds = parseInt(total_seconds%60);
function CheckTime(){
document.getElementById("quiz-time-left").innerHTML='Time Left: ' + c_minutes + ' minutes ' + c_seconds + ' seconds' ;
if(total_seconds <=0){
setTimeout('document.quiz.submit()',1);
}else
{
total_seconds = total_seconds -1;
c_minutes = parseInt(total_seconds/60);
c_seconds = parseInt(total_seconds%60);
setTimeout("CheckTime()",1000);
}}
setTimeout("CheckTime()",1000);
</script>
	<h1>Quiz<h1>
	<form name="quiz" action="/getResult">
		
		<input type="hidden" name="subjectId" value="${sub_id}"/>
		<input type="hidden" name="studentId" value="${std_id}"/>
		
		<ol type="1">
			<c:forEach var="question" items="${questions}">
				<li>
					${question.ques_description}
					<input type="hidden" name="questionId" value="${question.ques_id}"/><br/>
					<div>
					<input type="radio" name="question_${question.ques_id}" value="${question.option1}"/>${question.option1}<br/>
					<input type="radio" name="question_${question.ques_id}" value="${question.option2}"/>${question.option2}<br/>
					<input type="radio" name="question_${question.ques_id}" value="${question.option3}"/>${question.option3}<br/>
					<input type="radio" name="question_${question.ques_id}" value="${question.option4}"/>${question.option4}<br/>
					</div>
				</li>
			</c:forEach>
		</ol>
		<input type="submit"/>
	</form>
</body>
</html>