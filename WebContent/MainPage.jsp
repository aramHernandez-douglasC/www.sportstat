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
	
	
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
</head>
<body>
	<div id="top-header">
         <ul id="opt-menu-head-left">
             <li> <a> Menu </a></li>
             <li><a>Search Teams</a></li>
             <form action = "" method = "">
                 <input type="text" name="team">
                 <input type="hidden" name="action" value="search">
                 <input type="submit" value="Search">
             </form>
             <li><a>My Account</a></li>             
         </ul>
         <h1 id="main-tit-head">SportTube</h1>
         <span id="welcome-user"></span>
         <ul id="opt-menu-head-right">
            <li> <a> Register Now! </a></li>
            <li><a>Sign up</a></li>
            <li><a>My Account</a></li>             
        </ul>

    </div>
    
	<h3>General Team Stats</h3>
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