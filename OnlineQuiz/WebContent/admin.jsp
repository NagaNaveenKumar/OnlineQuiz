<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="ext.css">
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
<h3>Welcome Admin</h3>
<section id="main">
    <div class="sub">
         <h3><a href="editexpert" target="_self">Get Experts List</a></h3>
    </div>
    <div class="sub">
         <h3><a href="editstudent">Get Students List</a></h3>
    </div>
 </section> 
</body>
</html>