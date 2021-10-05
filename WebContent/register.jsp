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
<br><br><br><br>
<div class="login">    
    <form id="login" method="get">  
    <table class="tab">  
        <tr><td><label>Name</label></td></tr>
        <tr><td><input type="text" name="Uname" id="Uname" class="intp"></td></tr>
        <tr><td><label>Email</label></td></tr>
        <tr><td><input type="email" name="Uname" id="Uname" class="intp"></td></tr>
        <tr><td><label> Password </label></td></tr> 
        <tr><td><input type="Password" name="Pass" id="Pass" class="intp"></td></tr> 
        <tr><td><label>Specification</label></td></tr>
        <tr><td>
        <select name="Are you" class="intp">
                  <option value="Teacher" name="teacher" >Teacher</option>
                  <option value="Student" name="student" >Student</option>
              </select>
        </td></tr>      
        <tr><td><input type="button" name="log" id="log" value="Sign up"></td></tr>   
        <tr><td><label>Already have an account </label></td></tr>
        <tr><td><a href="index.jsp">Sign In</a></td></tr>
     </table>         
    </form> 
   </table>    
</div>
</body>
</html>