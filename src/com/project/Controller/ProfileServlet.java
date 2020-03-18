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
		// TODO Auto-generated method stub
		
		switch(request.getParameter("action")) {
		case "username":
			UserDAO udao = new UserDAO();
			String newUserName = request.getParameter("uname");
			String repeat = request.getParameter("rname");
			
			HttpSession ses = request.getSession(false);			
			String user = ses.getAttribute("userName").toString();
			out.println(user);
			
			if(!newUserName.equals("") || !repeat.equals("") ) {
				if (newUserName.contentEquals(repeat)) {
					udao.updateUserName(user, newUserName);
					response.sendRedirect("MyAccount.jsp");
				}
				else {
					out.println("Usernames are not the same");
				}
			}
			else {
				out.println("One of the fields or both are empty");
			}
			
			
		}
	}

}
