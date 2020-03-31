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
<html>
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
</head>
<body>
<header>
<nav>
	<ul>
	<li>
	<a> Menu </a>
    <a href = "Register.jsp"> Register Now! </a>
    <a href = "LoginPage.jsp">Sign in</a>
    <a href = "MyAccount.jsp" style=>Hello <% out.print(sessUser); %> </a></li>
    <li>Search Teams<form action = "" method = "">
        <input type="text" name="team">
        <input type="hidden" name="action" value="search"><input type="submit" value="Search"></form></li> 
	</ul>
</nav>
</header>
<h1 id="main-tit-head">SportTube</h1>    
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
	
</table>  
<br>
<form action = "PlayerServlet" method = "POST">
				Add a team
				insert full name:
                 <input type="text" name="teamFullName">
                 <br>
                 insert team city:
                  <input type="text" name="teamCity">
                  <br>
                  insert division:
                   <input type="text" name="teamdivision">
                   <br>
                   insert season:
                    <input type="text" name="teamSeason">
                    <br>
                 <input type="hidden" name="action" value="add">
                 <input type="submit" value="ADD">
             </form>
<h3>Schedule</h3>
	<!-- Missing handler -->
</body>
</html>