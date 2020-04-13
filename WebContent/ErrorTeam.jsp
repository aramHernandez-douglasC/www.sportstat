<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String sessUser = (String)session.getAttribute("userName"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Team</title>
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/skeleton.css">
  <link rel="stylesheet" href="css/MainStyle.css">
  
  <!-- BOOTSTRAP
   -->
   
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/83ce4287de.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="topnav">
        <a class="active" href="sample.jsp">Home</a>
        <a href="ScheduleView.jsp">Schedule</a>
        <a href="MyAccount.jsp">My Account</a>
        <!-- MISSING  -->
        <a href="#">About</a>
        
        
        <img class= "logo-topnav-white"src="media/logoWhite.png" alt="Logo-white">
        
         <span class= "userName">Hello <% out.print(sessUser); %></span>
        <div class="search-container">
            <form action='SearchServlet' method = 'get'>
               <div class="autocomplete">
                  <input id="myInput" autocomplete="off"  type="text" placeholder="Search.." name="teamSearch">
                </div>
                 <button type="submit"><i class="fa fa-search"></i></button>
            </form>
            
          </div>
          <div class="search-items"></div>
          
       
    </div>
    <div id = "content-error"> 
        <img src = "media/notfound.gif">
        <h2> I think the team you are looking</h2> 
        <h2>is not on our database...</h2>
        <h3>Please try searching other team</h3>
        <h3>Or return to the <a href="sample.jsp">Home page</a></h3>
    </div>
      
</body>
</html>