package com.project.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Boundary.PlayerDAO;

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
		//doGet(request, response);
		
		PlayerDAO playerDAO = new PlayerDAO();
		
		//Handle chhanges to the data
		switch(request.getParameter("action")) {
		
		case "Add":
			
			break;
		case "Update":
			
			break;
		}
	}

}
