<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 

String sessUser = (String)session.getAttribute("userName");

%>
<!DOCTYPE html>
<html>
<head>
<!-- Used an HTML Template/Boilerplate code to generate the formatting present in this page. -->
<!-- Boilerplate Code Taken from http://getskeleton.com/ -->
  <!-- Basic Page Needs
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->  
  <meta charset="ISO-8859-1">
  <title>My Account</title>
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
<ul>
<li><div>
  	<a href = "MainPage.jsp">Home</a>
  	<a href = "Register.jsp">Register</a>
  	<a href = "LoginPage.jsp">Log In</a>
  	<a href = "LogoutPage.jsp">Log Out</a>
 </div>
 <h2 style='text-align:center;'>My Account</h2>
 <h4>Hello <% out.print(sessUser); %></h4>
 </li>
</ul>
</nav>
</header> 
 <button class="accordion">Change Username</button>
<div class="panel">
    <table class = "container">
        <form action = "ProfileServlet" method = "post" class = "row">
            <tr>
                <td>New Username</td>
                <td><input name = "uname" type = "text"> </td>
            </tr>
            <tr>
                <td>Repeat Username</td>
                <td><input name = "rname" type = "text"></td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="action" value="username">
                    <input type = "submit" value = "Update">
                </td>
            </tr>
        </form>
    </table>
</div>

<button class="accordion">Change Password</button>
<div class="panel">
    <table class = "container">
        <form action = "ProfileServlet" method = "post" class = "row">
            <tr>
                <td>Old Password</td>
                <td><input name = "oldPword" type = "password"> </td>
            </tr>
            <tr>
                <td>New Password</td>
                <td><input name = "newPword" type = "password"></td>
            </tr>
            <tr>
                <td>Repeat New Password</td>
                <td><input name = "rNewPword" type = "password"></td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="action" value="password">
                    <input type = "submit" value = "Update">
                </td>
            </tr>
        </form>
    </table>
</div>
<button class="accordion">Update Location</button>
<div class="panel">
    <table class = "container">
        <form action = "ProfileServlet" method = "post" class = "row">
            <tr>
                <td>Country</td>
                <td><input name = "country" type = "text"> </td>
            </tr>
            <tr>
                <td>Province/State</td>
                <td><input name = "province" type = "text"></td>
            </tr>
            <tr>
                <td>City</td>
                <td><input name = "city" type = "text"></td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="action" value="location">
                    <input type = "submit" value = "Update">
                </td>
            </tr>
        </form>
    </table>
</div>
<button class="accordion">Update Birthday</button>
<div class="panel">
    <table class = "container" >
        <form action = "ProfileServlet" method = "post" class = "row">
            <tr>
                <td>Date of Birth</td>
                
                <td><input id="datePick" name = "dob" type = "date"> </td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="action" value="dob">
                    <input type = "submit" value = "Update">
                </td>
            </tr>
        </form>
    </table>
</div>

<button class="accordion">Delete Account</button><br>


<button class="accordion">Sign out</button>

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
    
<style>
.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}
</style>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
  });
}
</script>
 
 
  
</body>
</html>