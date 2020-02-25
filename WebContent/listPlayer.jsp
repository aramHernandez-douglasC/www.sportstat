<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.*" %>
<%@ page import = "com.project.Entity.*" %>
<%@ page import = "com.project.Boundary.*" %>
 <%
 	ArrayList<Player> allPlayers = new ArrayList<Player>();
 
	PlayerDAO bdao = new PlayerDAO();

	allPlayers = bdao.displayPlayer();
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list players</title>
</head>
<body>
	<table>
	<tr>
		<thead>
		<th>Id</th>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Position</th>
		<th>Height</th>
		<th>Weight</th>
		<th>DOB</th>
		<th>Age</th>
		<th>TeamName</th>
		<th>PlayerNum</th>	
		</thead>
	</tr>
	
	<%-- Iterate through the buyers write out one table row per. --%>
	<%
		for (Player b: allPlayers){
			out.print("<tr>");
			out.print("<td>"+ b.get_playerId() +"</td>");
			out.print("<td>"+ b.get_playerFirstName() +"</td>");
			out.print("<td>"+ b.get_playerLastName() +"</td>");
			out.print("<td>"+ b.get_playerPosition() +"</td>");
			out.print("<td>"+ b.get_playerHeight() +"</td>");
			out.print("<td>"+ b.get_playerWeight() +"</td>");
			out.print("<td>"+ b.get_playerDob() +"</td>");
			out.print("<td>"+ b.get_playerAge() +"</td>");
			out.print("<td>"+ b.get_teamName() +"</td>");
			out.print("<td>"+ b.get_playerNumber() +"</td>");
			out.print("</tr>");
		}
	
	%>
	
</table>
</body>
</html>