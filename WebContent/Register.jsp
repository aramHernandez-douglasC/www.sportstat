<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Used an HTML Template/Boilerplate code to generate the formatting present in this page. -->
<!-- Boilerplate Code Taken from http://getskeleton.com/ -->
  <!-- Basic Page Needs
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->  
  <meta charset="ISO-8859-1">
  <title>Register Page</title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile Specific Metas
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/skeleton.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script> 
<script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>  
  
  
</head>
<body>
<header>
	<nav>
		<div class = "container">
  		<a href = "MainPage.jsp">Home</a>
  		<a href = "Register.jsp">Register</a>
  		<a href = "LoginPage.jsp">Log In</a>
  		<a href = "LogoutPage.jsp">Log Out</a>
  		</div>
  <br><h1 class = "container">Register</h1>
	</nav>
</header>
 
  <table class = "container">
  	<form action = "RegisterServlet" method = "post" class = "container">
  		<tr>
  			<td>Full Name</td>
  			<td><input name = "fname" type = "text"> </td>
  		</tr>
  		<tr>
  			<td>Date of Birth</td>
  			
  			<td><input id="datePick" name = "dob" type = "date"> </td>
  		</tr>
  		<tr>
  			<td>City</td>
  			<td><input name = "city" type = "text"></td>
  		</tr>
  		<tr>
  			<td>Province or State</td>
  			<td><input name = "province" type = "text"> </td>
  		</tr>
  		<tr>
  			<td>Country</td>
  			<td><input name = "country" type = "text"> </td>
  		</tr>
  		<tr>
  			<td>Login User</td>
  			<td><input name = "uname" type = "text"> </td>
  		</tr>
  		<tr>
  			<td>Password</td>
  			<td><input name = "pword" type = "password"> </td>
  		</tr>
  		<tr>
  			<td><input type = "submit" value = "Register"></td>
  		</tr>
  	</form>
  </table>
  
<script>
webshims.setOptions('forms-ext', {types: 'date'});
webshims.polyfill('forms forms-ext');
$.webshims.formcfg = {
en: {
    dFormat: '-',
    dateSigns: '-',
    patterns: {
        d: "yy-mm-dd"
    }
}
};
</script>

<!-- End Document
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->
</body>
</html>
