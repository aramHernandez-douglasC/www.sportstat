<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*" %>
 <%
   ArrayList<Team> allTeams = new ArrayList<Team>();
	ArrayList<Player> players = new ArrayList<Player>();
	ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
	
	Stats teamStats = new Stats();
	
	
	TeamDAO tdao = new TeamDAO();
	StatsDAO sdao = new StatsDAO();
	PlayerDAO pdao = new PlayerDAO();
	
	
	players = pdao.displayPlayer(); 
	allTeams = tdao.displayTeam();
	allSchedule = tdao.scheduleTeams();
	
	session.invalidate();
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Used an HTML Template/Boilerplate code to generate the formatting present in this page. -->
<!-- Boilerplate Code Taken from http://getskeleton.com/ -->
  <!-- Basic Page Needs
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->  
  <meta charset="ISO-8859-1">
  <title>Main Page</title>
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
  <link rel="stylesheet" href="css/MainStyle.css">
  
  <!-- BOOTSTRAP
   -->
   
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/83ce4287de.js" crossorigin="anonymous"></script>
  
</head>
<body>
<div class="topnav">
    <a class="active" href="MainPage.jsp">Home</a>
    <a href="ScheduleView.jsp">Schedule</a>
    <a href="LoginPage.jsp">Login</a>
    <a href="Register.jsp">Register Now!</a>
    
    
    <img class= "logo-topnav-white"src="media/logoWhite.png" alt="Logo-white">
    
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
  <div id = "content">
  <div class = "schedule-banner">
  	<h1> Upcoming Schedule </h1>
  </div>
  <div id="container" class = "carousel slide">
  	<div class="carousel">
  		<div class="slider">
  		<% 
  			for (Schedule x : allSchedule){
  				out.print("<div class = 'item'>");
  				out.print("<table>");
  				out.print("<tr>");
  				out.print("<th>HOME</th>");
  				out.print("<th> </th>");
  				out.print("<th>VISITOR</th>");
  				out.print("</tr>");
  				out.print("<tr>");
  				out.print("<td>"+x.get_homeTeam() +"</td>");
  				out.print("<th> VS </th>");
  				out.print("<td>"+x.get_visitorTeam() +"</td>");
  				out.print("</tr>");
  				out.print("<tr> ");
  				out.print("<td>DAY: "+ x.get_day() +"\t AT:"+x.get_time() + "</td>");
  				out.print(" </tr>");
  				out.print("<tr>");
  				out.print("<td> Stadium: "+x.get_stadium() +"</td>");
  				out.print(" </tr>");
  				out.print("</table> ");     
  				out.print("</div>");
  				
  			}
  		%>
  		</div>
  	</div>
  	<div class = "carousel-controls">
  		<span class="arrow prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
  		<span class="arrow next"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
  		
  	</div>
  	
  </div>
  	<h3>Current Teams</h3>
  	<div class = "team-table">
	<table>
	<tr>
		
		<th>Team FullName</th>
		<th>City</th>
		<th>Division</th>
		<th>Coach</th>
		<th>Stadium</th>
		<th>Season</th>
	
		
	</tr>
	
	<%-- Iterate through the buyers write out one table row per. --%>
	 <%
		for (Team b: allTeams){
			out.print("<tr>");
			out.print("<td class ='teamName'>"+ b.get_teamFullName() +"</td>");
			out.print("<td>"+ b.get_teamCity() +"</td>");
			out.print("<td>"+ b.get_teamDivision() +"</td>");
			out.print("<td>"+ b.get_teamCoach() +"</td>");
			out.print("<td>"+ b.get_teamStadium() +"</td>");
			out.print("<td>"+ b.get_teamSeason() +"</td>");
			out.print("</tr>");
		}
	
	%>
	
</table> 
</div> 
 </div>
  
	<script src = "js/client.js"></script>
   <script src = "js/vainillaAnim.js"></script>
   
   <script src= "js/jqueryFunct.js"></script>
   <script src= "js/searchItem.js"></script>

	<!-- Missing handler -->
</body>
</html>