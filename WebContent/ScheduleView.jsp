<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*"  %>
 <%
 
 	ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
 	
 	
	
	TeamDAO tdao = new TeamDAO();
	
	
	
	
	allSchedule = tdao.scheduleTeams();
	
	String sessUser = (String)session.getAttribute("userName");
	
	
	
	/* allStadiums = sdao.displayStadium();
	allCoach = cdao.displayStadium(); */
	
	// String sDate1="31/12/1998";  
    //Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);  
	
    String homeLink = "sample.jsp";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Schedule</title>
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
	<% if(session.getAttribute("userName") == null){
		homeLink = "MainPage.jsp";
		}
	%>
    <a href= <% out.print(homeLink); %> >Home</a>
    <a class="active" href="ScheduleView.jsp">Schedule</a>
    <a href="#">About</a>
    <img class= "logo-topnav-white"src="media/logoWhite.png" alt="Logo-black">
    <div class="search-container">
        <form action="/action_page.php">
          <input type="text" placeholder="Search.." name="search">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
      </div>
    
 </div>
 
<h3> Next on schedule: </h3>

<table>
	<tr>
		<th>Home</th>
		<th></th>
		<th>Visitor</th>
		<th>Date</th>
		<th>Time</th>
		<th>Stadium</th>
		<th>Home Score</th>
		<th>Visitor Score</th>
	</tr>
	<%
		for(Schedule s : allSchedule){
			out.print("<tr>");
			out.print("<td>"+ s.get_homeTeam() +"</td>");
			out.print("<td style: 'font-family: 'Lucida Console', Courier, monospace;'> VS </td>");
			
			out.print("<td>"+ s.get_visitorTeam() +"</td>");
			out.print("<td>"+ s.get_day() +"</td>");
			out.print("<td>"+ s.get_time() +"</td>");
			out.print("<td>"+ s.get_stadium() +"</td>");
			out.print("<td>"+ s.get_homeScore() +"</td>");
			out.print("<td>"+ s.get_visitorScore() +"</td>");
		}
	%>
	
	 
</table>

</body>
</html>