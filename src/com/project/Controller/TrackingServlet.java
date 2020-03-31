package com.project.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.project.Boundary.*;
import com.project.Entity.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TrackingServlet
 */
@WebServlet("/TrackingServlet")
public class TrackingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String teamParam = request.getParameter("teamParam");
		
		HttpSession ses = request.getSession();			
		String user = ses.getAttribute("userName").toString();
		
		UserDAO Udao = new UserDAO();
		TeamDAO Tdao = new TeamDAO();
		Team teamObj = new Team();
		User userObj = new User();
		
		userObj = Udao.getUser(user);
		teamObj = Tdao.getTeam(teamParam);
		
		Udao.trackTeam(userObj, teamObj);
		
		 System.out.print("success");
		 response.sendRedirect("sample.jsp");
		 
		 
		 
		
	}

}
