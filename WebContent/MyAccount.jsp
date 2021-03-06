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
  ���������������������������������������������������������������������������������������������������� -->  
  <meta charset="ISO-8859-1">
  <title>My Account</title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile Specific Metas
  ���������������������������������������������������������������������������������������������������� -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  ���������������������������������������������������������������������������������������������������� -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  ���������������������������������������������������������������������������������������������������� -->
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/skeleton.css">
  <link rel="stylesheet" href="css/MainStyle.css">
  
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script> 
  <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/83ce4287de.js" crossorigin="anonymous"></script> 
</head>
<body>

<header>


<div class="topnav">
    <a  href="sample.jsp">Home</a>
    <a href="ScheduleView.jsp">Schedule</a>
    <a class="active" href="MyAccount.jsp">My Account</a>
        
    <img class= "logo-topnav-white"src="media/logoWhite.png" alt="Logo-white">
    
 </div>

 <h2>My Account</h2>
 <h4 style='text-align:center;'>Hello <% out.print(sessUser); %></h4>
 
</header> 
<div class="login">  
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

<button id = "delete-acct" class="accordion" value="delete">Delete Account</button><br>


<button id ="signout" class="accordion">Sign out</button>
</div>
<script>
	
	var deletebtn = document.getElementById("delete-acct");

	var signout = document.getElementById("signout");
	
	
	
	deletebtn.onclick = function(){
		deleteA();
	}
	
	signout.onclick = function(){
		validate()
	}
	
	function deleteA() {
		 
		  var r = confirm("Your account will be DELETED. Do you want to continue?");
		  if (r == true) {
			  AJAXrequest("delete");
		  } else {
		   	 alert("Thank you!");
		  }
		  
	}
	function validate() {
		 
		  var r = confirm("Do you want to end your session?");
		  if (r == true) {
			  AJAXrequest("signout");
		  } else {
		   	 
		  }
		  
	}
	function AJAXrequest(action){
		 var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {	       
		    	window.location = "MainPage.jsp"
		     }
		  };		  
		  xhttp.open("POST", "ProfileServlet?action="+action, true);
		  xhttp.send();
	}
</script>
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