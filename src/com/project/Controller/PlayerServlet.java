package com.project.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Boundary.PlayerDAO;
import com.project.Boundary.TeamDAO;
import com.project.Entity.Player;
import com.project.Entity.Team;

/**
 * Servlet implementation class PlayerServlet
 */
@WebServlet("/PlayerServlet")
public class PlayerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayerServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PlayerDAO playerDAO = new PlayerDAO();
		
		
		switch (request.getParameter("action")) {
		case "Delete":
			
			playerDAO.deletePlayer(Integer.parseInt(request.getParameter("_playerId")));
			
			//Redirect to the JSP file displaying the Players
			response.sendRedirect("listPlayer.jsp");
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TeamDAO bdao = new TeamDAO();
		
		//See what the form action was
		switch (request.getParameter("action"))	{
		case "add":
			
			//Intantiate a new object
			Team nb = new Team();
			
			//Populate the new object from the request paraemeters $_POST["keyname"];
			nb.set_teamFullName(request.getParameter("teamFullName"));
			nb.set_teamCity(request.getParameter("teamCity"));
			nb.set_teamDivision(request.getParameter("teamdivision"));
			nb.set_teamSeason(request.getParameter("teamSeason"));
			
			//Add the new Buyer
			bdao.addInfo(nb);
			
			response.sendRedirect("MainPage.jsp");
			break;
		}
	}

}
