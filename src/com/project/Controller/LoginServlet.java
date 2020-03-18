package com.project.Controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.Boundary.LoginDAO;
import com.project.Boundary.UserDAO;
import com.project.Entity.Login;
import com.project.Entity.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User loginToken;
	LoginDAO loginDAO = new LoginDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		//doGet(request, response);
		response.setContentType("text/css");
		String userName = request.getParameter("uname");
		String passWord = request.getParameter("pword");
		
		
		
		
		if(loginDAO.checkLogin(userName, passWord))
		{
			//Creates a session for storing the username
			HttpSession session = request.getSession(true);
		
			session.setAttribute("user", userName);
			session.setMaxInactiveInterval(-1);
			
			UserDAO dao =  new UserDAO();
			User g = dao.getUser((String)userName); 
			
			String username=g.get_loginUser();
			String fullName=g.get_fullName();
			Date dob=g.get_dob();
			String country=g.get_country();
			
			System.out.println(username);
			System.out.println(fullName);
			System.out.println(dob);
			
			//Redirect to sample jsp
			response.sendRedirect("sample.jsp");
			System.out.println("Login Success");
			
			HttpSession ses = request.getSession();
			
			ses.setAttribute("userName", username);
			ses.setAttribute("fName", fullName);
			ses.setAttribute("dob", dob);
			ses.setAttribute("country", country);
			
		}
		else
		{
			 
			response.sendRedirect("LoginPage.jsp");
			System.out.println("Login Failed");
			
		}
	}

}
