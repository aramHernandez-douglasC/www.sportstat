<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*" %>
 <%
 	/* ArrayList<Player> allPlayers = new ArrayList<Player>(); */
 	ArrayList<Team> allTeams = new ArrayList<Team>();
 	
 	ArrayList<Team> yourTeams = new ArrayList<Team>();
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
	yourTeams = tdao.yourTeams(sessUser);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Used an HTML Template/Boilerplate code to generate the formatting present in this page. -->
<!-- Boilerplate Code Taken from http://getskeleton.com/ -->
  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->  
  <meta charset="ISO-8859-1">
  <title>Main Account Page</title>
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
  <link rel="stylesheet" href="css/MainStyle.css">
  
 
  <script src="https://kit.fontawesome.com/83ce4287de.js" crossorigin="anonymous"></script>
  
</head>
<body>
  <div>
  	<a href = "sample.jsp">Home</a>
  	<a href = "LogoutPage.jsp">Log Out</a>
  	<a href = "MyAccount.jsp" style=>Hello <% out.print(sessUser); %> </a>
  </div>
  
   <h3>Your Teams</h3>
   
	<table class= "track-table">
	<tr>
		<thead>
		<th>Team FullName</th>		
		<th>Division</th>
		<th>Conference</th>
		
	
		</thead>
	</tr>
	
	<%-- Iterate through the buyers write out one table row per. --%>
	 <%
		for (Team b: yourTeams){
			out.print("<tr class='tabb-teams'>");
			out.print("<td class ='-yourTeams-table'>"+ b.get_teamFullName() +"</td>");
			
			out.print("<td>"+ b.get_teamDivision() +"</td>");
			out.print("<td>"+ b.get_teamConference() +"</td>");
			
			//out.print("<td class= 'btnPlace'>  </td>");
			out.print("</tr>");
		}
	
	%>
	</table>
  
  <h3>Playing Teams</h3>
	<table class= "team-table">
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
			out.print("<tr class='tab-teams'>");
			out.print("<td class ='teamName'>"+ b.get_teamFullName() +"</td>");
			out.print("<td>"+ b.get_teamCity() +"</td>");
			out.print("<td>"+ b.get_teamDivision() +"</td>");
			out.print("<td>"+ b.get_teamCoach() +"</td>");
			out.print("<td>"+ b.get_teamStadium() +"</td>");
			out.print("<td>"+ b.get_teamSeason() +"</td>");
			out.print("<td class= 'btnPlace'>  </td>");
			out.print("</tr>");
			
			out.print(b.get_teamFullName() + "," );
		}
	
	%>
	</table>
  
  

  <!-- Primary Page Layout
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  
<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
   <script src = "js/client.js"></script>
</body>

</html>
