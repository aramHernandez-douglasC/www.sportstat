<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Used an HTML Template/Boilerplate code to generate the formatting present in this page. -->
<!-- Boilerplate Code Taken from http://getskeleton.com/ -->
  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->  
  <meta charset="ISO-8859-1">
  <title>Login Page</title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/skeleton.css">
  
</head>
<body>  
  <div class = "container">
  	<a href = "MainPage.jsp">Home</a>
  	<a href = "Register.jsp">Register</a>
  </div>
  
  <br><h1 class = "container">Login</h1>
  <table class = "container" align ="center">
  	<form action = "LoginServlet" method = "post" class = "row">
  		<tr>
  			<td>Username</td>
  			<td><input name = "uname" id = "user" type = "text"> </td>
  		</tr>
  		<tr>
  			<td>Password</td>
  			<td><input name = "pword" id = "pass" type = "password"></td>
  		</tr>
  		<tr>
  			<td><input type = "submit" id = "sub" value = "Log in"></td>
  		</tr>
  	</form>
  </table>

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
</body>
</html>
