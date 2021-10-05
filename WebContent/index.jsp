<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="ext.css">
</head>
<body>
<h1 align="center">Online Quiz</h1>
<marquee class="mar">
Test your Knowledge what you have learned.
</marquee>
<form action="Login" method="post">
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center">
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">

          <div class="form-outline mb-4">
              <label class="form-label" for="form1Example13">Are you:</label>
              <select name="Are you" class="form-control form-control-lg" >
                  <option value="Admin" name="admin">Admin</option>
                  <option value="Teacher" name="teacher">Teacher</option>
                  <option value="Student" name="student">Student</option>
              </select>
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example13">Email</label>
             <input type="email" id="form1Example13" class="form-control form-control-lg" />
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example23">Password</label>
             <input type="password" id="form1Example23" class="form-control form-control-lg" />
         </div>
            <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
            <h6>Don't have an account<a href="register.jsp"><h4>Register Here</h4></a></h6>
         </div>
      </div>
      </div>
</section>
</form>
</body>
</html>