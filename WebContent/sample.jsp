<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*"  %>
 <%
 
 	ArrayList<Team> allTeams = new ArrayList<Team>();
 	ArrayList<Team> yourTeams = new ArrayList<Team>();
 	ArrayList<Player> players = new ArrayList<Player>();
 	ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
 	
 	Stats teamStats = new Stats();
 	
	
	TeamDAO tdao = new TeamDAO();
	StatsDAO sdao = new StatsDAO();
	PlayerDAO pdao = new PlayerDAO();
	
	
	players = pdao.displayPlayer(); 
	allTeams = tdao.displayTeam();
	allSchedule = tdao.scheduleTeams();
	
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
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->  
  <meta charset="ISO-8859-1">
  <title>Main Account Page</title>
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
  
   <h3>Your Teams</h3>
   
   <div>
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
		    teamStats = sdao.getStat(b.get_teamFullName());
			
					
			out.print("<tr class='tabb-teams'>");
			out.print("<td class ='-yourTeams-table'>"+ b.get_teamFullName() +"</td>");
			
			out.print("<td>"+ b.get_teamDivision() +"</td>");
			out.print("<td>"+ b.get_teamConference() +"</td>");
			out.print("<td><a class = 'delete-team' id="+"'"+ b.get_teamFullName() +"'"+"><i class='fa fa-times-circle-o' aria-hidden='true'></i></a></td>");
			out.print("</tr>");
			out.print("<tr><td class='panel'><div style='overflow-x:auto'>"+
			    "<table class = 'stat-table'>"+
		        "<th>Name</th>"+		
		        "<th>GP</th>"+
		        "<th>W</th>"+
		        "<th>L</th>"+
		        "<th>WIN</th>"+
		        "<th>MIN</th>"+
		        "<th>PTS</th>"+
		        "<th>FGM</th>"+
		        "<th>FGA</th>"+
		        "<th>FG</th>"+
		        "<th>OREB</th>"+
		        "<th>DREB</th>"+
		        "<th>REB</th>"+
		        "<th>AST</th>"+
		        "<th>TOV</th>"+
		        "<th>STL</th>"+
		        "<th>BLK</th>"+
		        "<th>BLKA</th>"+
		        "<th>PF</th>"+
		        "<th>PFD</th>"+
		        "<th>+/-</th>"+
		      "</tr>");
			for (Player p : players){
				out.print("<tr>"+
			      	"<td>" + p.get_playerFirstName()+" "+ p.get_playerLastName()+"</td>" + 	
			        "<td>"+teamStats.get_GP()+"</td>"+
			        "<td>"+teamStats.get_W()+"</td>"+
			        "<td>"+teamStats.get_L()+"</td>"+
			        "<td>"+teamStats.get_WIN()+"</td>"+
			        "<td>"+teamStats.get_MIN()+"</td>"+
			        "<td>"+teamStats.get_PTS()+"</td>"+
			        "<td>"+teamStats.get_FGM()+"</td>"+
			        "<td>"+teamStats.get_FGA()+"</td>"+
			        "<td>"+teamStats.get_FG()+"</td>"+
			        "<td>"+teamStats.get_OREB()+"</td>"+
			        "<td>"+teamStats.get_DREB()+"</td>"+
			        "<td>"+teamStats.get_REB()+"</td>"+
			        "<td>"+teamStats.get_AST()+"</td>"+
			        "<td>"+teamStats.get_TOV()+"</td>"+
			        "<td>"+teamStats.get_STL()+"</td>"+
			        "<td>"+teamStats.get_BLK()+"</td>"+
			        "<td>"+teamStats.get_BLKA()+"</td>"+
			        "<td>"+teamStats.get_PF()+"</td>"+
			        "<td>"+teamStats.get_PFD()+"</td>"+
			        "<td>"+teamStats.get_MoreLess()+"</td>"+
			      "</tr>");     
			}
			
			out.print("<tr>"+
			      	"<th> TOTAL: </td>" + 	
			        "<td>"+teamStats.get_GP()+"</td>"+
			        "<td>"+teamStats.get_W()+"</td>"+
			        "<td>"+teamStats.get_L()+"</td>"+
			        "<td>"+teamStats.get_WIN()+"</td>"+
			        "<td>"+teamStats.get_MIN()+"</td>"+
			        "<td>"+teamStats.get_PTS()+"</td>"+
			        "<td>"+teamStats.get_FGM()+"</td>"+
			        "<td>"+teamStats.get_FGA()+"</td>"+
			        "<td>"+teamStats.get_FG()+"</td>"+
			        "<td>"+teamStats.get_OREB()+"</td>"+
			        "<td>"+teamStats.get_DREB()+"</td>"+
			        "<td>"+teamStats.get_REB()+"</td>"+
			        "<td>"+teamStats.get_AST()+"</td>"+
			        "<td>"+teamStats.get_TOV()+"</td>"+
			        "<td>"+teamStats.get_STL()+"</td>"+
			        "<td>"+teamStats.get_BLK()+"</td>"+
			        "<td>"+teamStats.get_BLKA()+"</td>"+
			        "<td>"+teamStats.get_PF()+"</td>"+
			        "<td>"+teamStats.get_PFD()+"</td>"+
			        "<td>"+teamStats.get_MoreLess()+"</td>"+
			      "</tr>");      
		    out.print("</table>");
		   out.print("</div></td></tr>");
			
		}
	
	 	
	%>
	</table>
	</div>
  
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
			
		}
	
	%>
	</table>
	
	</div>
  
  

  <!-- Primary Page Layout
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->
  
<!-- End Document
  €“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“€“ -->
   <script src = "js/client.js"></script>
   <script src = "js/vainillaAnim.js"></script>
   
   <script src= "js/jqueryFunct.js"></script>
   <script src= "js/searchItem.js"></script>
</body>

</html>
