<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*"  %>
 <%
 
 	
 	ArrayList<Player> players = new ArrayList<Player>();
 	ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
 	
 	Stats teamStats = new Stats();
 	Team team = new Team();
 	
	
	TeamDAO tdao = new TeamDAO();
	StatsDAO sdao = new StatsDAO();
	PlayerDAO pdao = new PlayerDAO();
	
	
	players = pdao.displayPlayer(); 	
	
	
	/* allStadiums = sdao.displayStadium();
	allCoach = cdao.displayStadium(); */
	
	String sessUser = (String)session.getAttribute("userName");
	String sessTeam = (String)session.getAttribute("team");
	
	team = tdao.getTeam(sessTeam);
	allSchedule = tdao.singleSchedule(team);
	teamStats = sdao.getStat(team.get_teamFullName());
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>TeamView</title>
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
  <link rel="stylesheet" href="css/Schedule.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/83ce4287de.js" crossorigin="anonymous"></script>
  
</head>
<body>
<div class="topnav">
	
    <a  href="sample.jsp">Home</a>
    <a href="ScheduleView.jsp">Schedule</a>
    
    <!-- MISSING  -->
    <a href="#">About</a>
    
    <img class= "logo-topnav-white"src="media/logoWhite.png" alt="Logo-white">
    
    <div class="search-container">
        <form action='SearchServlet' method = 'get'>
          <input type="text" placeholder="Search.." name="teamSearch">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
      </div>
      
    <span class= "userName">Hello <% out.print(sessUser); %></span>
  </div>
 
 <div id="content" style = "margin-top:5%;">
 
	<h2 style = "text-align:center;"> <% out.print(team.get_teamFullName()); %> </h2>
	
	<div class = "team-image">
	    <img src = "media/logoBlack.png"></img>
	</div>
	
	
	
	<div class="schedule-header" style = "margin-top:5%;">
		<h4 >Schedule</h4>
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
  
	
	
	<div class = "seasonStats" style = "margin-top:5%;">
		<h4> Players </h4>
	  <% out.print("<table class = 'stat-table'>"+
		        "<th>Player Name</th>"+		
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
	
	%>
	</div>
	<div class="players-stats">
	    
	</div>
</div>



	
<script src = "js/vainillaAnim.js"></script>

</body>
</html>