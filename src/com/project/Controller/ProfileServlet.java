package com.project.Controller;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.Boundary.UserDAO;
import com.project.Entity.User;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
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
		UserDAO udao = new UserDAO();
		User us = new User();
		
		HttpSession ses = request.getSession();			
		String user = ses.getAttribute("userName").toString();
		us = udao.getUser(user);
		
		
		
		switch(request.getParameter("action")) {
		case "username":
			
			
			String newUserName = request.getParameter("uname");
			String repeat = request.getParameter("rname");		
			
			
			if(!newUserName.equals("") || !repeat.equals("") ) {
				if (newUserName.equals(repeat)) {
					udao.updateUserName(user, newUserName);	
					
					us = udao.getUser(newUserName);
					
					udao.updateTrackList(us, user);
					
					ses.removeAttribute("userName");
					ses.setAttribute("userName", newUserName);
					response.sendRedirect("MyAccount.jsp");
					
				}
				else {
					out.println("Usernames are not the same");
					response.sendRedirect("MyAccount.jsp");
				}
			}
			else {
				out.println("One of the fields or both are empty");
				response.sendRedirect("MyAccount.jsp");
			}
			break;
			
		case "password":
			
			us = udao.getUser(user);
			String oldpas = request.getParameter("oldPword");
			String pas = request.getParameter("newPword");
			String pasRep = request.getParameter("rNewPword");
			String database = us.get_loginPassword();
			
			out.print(database);
			if(oldpas.equals(database)) {			
			
				if(!pas.equals("") || !pasRep.equals("") ) {
					if (pas.equals(pasRep)) {
						udao.updatePassword(user, pas);
						response.sendRedirect("MyAccount.jsp");
						out.print("password updated");
						
					}
					else {
						out.println("passwords are not the same");
						response.sendRedirect("MyAccount.jsp");
					}
				}
				else {
					out.println("One of the fields or both are empty");
					response.sendRedirect("MyAccount.jsp");
				}
			}
			else {
				out.println("passwords are not similar");
				response.sendRedirect("MyAccount.jsp");
			}
			break;
			
			
		}
	}

}
