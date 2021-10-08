<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>

<link rel="stylesheet" href="ext.css">
</head>
<body>
<h2 align="center">Registration Form</h2>
<form action="SaveServlet" method="post"> 
<div class="login">    
    <table class="tab">  
        <tr><td><label>Name</label></td></tr>
        <tr><td><input type="text" name="name" class="intp"></td></tr>
        <tr><td><label>Email</label></td></tr>
        <tr><td><input type="email" name="email" class="intp"></td></tr>
        <tr><td><label> Password </label></td></tr> 
        <tr><td><input type="Password" name="password" class="intp"></td></tr> 
        <tr><td><label>Specification</label></td></tr>
        <tr><td>
        <select name="specification" class="intp">
                  <option value="Teacher">Teacher</option>
                  <option value="Student">Student</option>
              </select>
        </td></tr>      
        <tr><td><input type="submit" id="log" value="Sign up"/></td></tr>   
        <tr><td><label>Already have an account </label></td></tr>
        <tr><td><a href="index.jsp">Sign In</a></td></tr>
     </table> 
     </div>        
    </form>    

</body>
</html>