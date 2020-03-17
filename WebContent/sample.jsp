<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*" %>
 <%
 	/* ArrayList<Player> allPlayers = new ArrayList<Player>(); */
 	ArrayList<Team> allTeams = new ArrayList<Team>();
 	/* ArrayList<Stadium> allStadiums = new ArrayList<Stadium>();
 	ArrayList<TacticsCoach> allCoach = new ArrayList<TacticsCoach>(); */
 	
	/* PlayerDAO bdao = new PlayerDAO();*/
	/* CoachDAO cdao = new CoachDAO();
	StadiumDAO sdao = new StadiumDAO(); */
	TeamDAO tdao = new TeamDAO();
	
	/* allPlayers = bdao.displayPlayer(); */
	allTeams = tdao.displayTeam();
	/* allStadiums = sdao.displayStadium();
	allCoach = cdao.displayStadium(); */
	
	String sessUser = (String)session.getAttribute("userName");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Used an HTML Template/Boilerplate code to generate the formatting present in this page. -->
<!-- Boilerplate Code Taken from http://getskeleton.com/ -->
  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->  
  <meta charset="ISO-8859-1">
  <title>Sample Page</title>
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
  <div>
  	<a href = "MainPage.jsp">Home</a>
  	<a href = "Register.jsp">Register</a>
  	<a href = "LoginPage.jsp">Log In</a>
  	<a href = "LogoutPage.jsp">Log Out</a>
  	<a href = "MyAccount.jsp" style=>Hello <% out.print(sessUser); %> </a>
  </div>
  
  <h3>Current Teams</h3>
	<table>
	<tr>
		<thead>
		<th>Team FullName</th>
		<th>City</th>
		<th>Division</th>
		<th>Coach</th>
		<th>Stadium</th>
		<th>Season</th>
	
		</thead>
	</tr>
	
	<%-- Iterate through the buyers write out one table row per. --%>
	 <%
		for (Team b: allTeams){
			out.print("<tr>");
			out.print("<td>"+ b.get_teamFullName() +"</td>");
			out.print("<td>"+ b.get_teamCity() +"</td>");
			out.print("<td>"+ b.get_teamDivision() +"</td>");
			out.print("<td>"+ b.get_teamCoach() +"</td>");
			out.print("<td>"+ b.get_teamStadium() +"</td>");
			out.print("<td>"+ b.get_teamSeason() +"</td>");
			out.print("</tr>");
		}
	
	%>
  
  

  <!-- Primary Page Layout
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  
<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
</body>
</html>
