<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Quiz details</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="ext.css">
</head>
<body>
<div class="nbar">
  <div class="drdo">
    <button class="drbtn">
    <img src="images/profile.png" class="imgpr"></img>
    </button>
    <div class="drdo-content">
      <a href="viewexpert">Profile</a>
      <a href="editexpert">Update</a>
      <a href="index.jsp">Logout</a>
    </div>
  </div> 
</div>
<form action="createQuiz" method="post">
<section class="vh-100">
  <div class="container py-5 h-50">
    <div class="row d-flex justify-content-center">
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
          <div class="form-outline mb-4">
              <label class="form-label" for="form1Example13">Category:</label>
              <select name="Are you" class="form-control form-control-lg" >
                  <option value="Java" name="java">Java</option>
                  <option value="C" name="clang">C</option>
                  <option value="JSP" name="jsp">Jsp</option>
              </select>
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example13">Question</label>
             <input type="text" id="form1Example13" class="form-control form-control-lg" />
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example23">Option1</label>
             <input type="text" id="form1Example23" class="form-control form-control-lg" />
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example23">Option2</label>
             <input type="text" id="form1Example23" class="form-control form-control-lg" />
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example23">Option3</label>
             <input type="text" id="form1Example23" class="form-control form-control-lg" />
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example23">Option4</label>
             <input type="text" id="form1Example23" class="form-control form-control-lg" />
         </div>
         <div class="form-outline mb-4">
             <label class="form-label" for="form1Example23">CorrectOption</label>
             <input type="number" min="1" max="4" id="form1Example23" class="form-control form-control-lg" />
         </div>
            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
         </div>
      </div>
      </div>
</section>
</form>
</body>
</html>