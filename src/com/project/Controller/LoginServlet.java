package com.project.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.Entity.Login;
import com.project.Entity.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User loginToken;
	LoginService loginService;
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
		
		loginToken = new User(userName,passWord);
		loginService = new LoginService();
		
		if(loginService.checkAuthentication(loginToken))
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("user", userName);
			session.setMaxInactiveInterval(-1);
			response.sendRedirect("sample.jsp");
			System.out.println("Login Success");
		}
		else
		{
			response.sendRedirect("LoginPage.jsp");
			System.out.println("Login Failed");
			
		}
	}

}
