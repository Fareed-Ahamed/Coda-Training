<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sptags" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	font-family: "Lato", sans-serif;
	color:#c0c0c0;
	background-color: #e6e6e6;
}
.form-control {
	height: 40px;
	box-shadow: none;
	color: #000000;
}
.form-control:focus {
	border-color: #5cb85c;
}
.form-control, .btn {        
	border-radius: 3px;
}
.btn-black{
    background-color: #000 !important;
    color: #fff;
}
.signup-form {
	width: 450px;
	margin: 0 auto;
	padding: 30px 0;
  	font-size: 15px;
}
.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}
.signup-form h2:before, .signup-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}	
.signup-form h2:before {
	left: 0;
}
.signup-form h2:after {
	right: 0;
}
.signup-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}
.signup-form form {
	color: 	#000000;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #f2f3f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form .form-group {
	margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
	margin-top: 3px;
}
.signup-form .btn {        
	font-size: 16px;
	font-weight: bold;		
	min-width: 140px;
	outline: none !important;
}
.signup-form .row div:first-child {
	padding-right: 10px;
}
.signup-form .row div:last-child {
	padding-left: 10px;
}    	
.signup-form a {
	color:	#000000;
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #5cb85c;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
}  
</style>
<meta charset="ISO-8859-1">
</head>
<c:url var="addAction" value="/customer/add" ></c:url>

<body>
<div class="signup-form">
	<sptags:form class="form-horizontal" action="${addAction}" commandName="customer">
	<h2>Register</h2>
	<p class="hint-text">Create your account !</p>

	  <label  for="username">Username</label>
	
	  <div class="form-group">
			
	  <sptags:input path="uname" class="form-control" required ="true"/><br>
	  </div>
  
   
	  <label class="control-label"  for="Password">Password</label>
	
	   <div class="col-75">
		<sptags:input type= "password" path="upass" class="form-control" required="true"/><br>
		</div>
	
	
	  <label class="control-label"  for="Address">Address</label>
	  
	
		<sptags:input path="address"  class="form-control" required="true"/><br>
	
	
     
	  <label class="control-label"  for="Role" >Role</label>
	  

		<sptags:input path="role"  class="form-control" required="true"/><br>
	
	
		<div class="form-group">
		<input type="submit" value="Register"  class="btn btn-black">
		   </div>
   
 
	</sptags:form>
	<div class="text-center">Already have an account? <a href="<c:url value='/' />">Sign in</a></div>
	</div>
</body>
</html>