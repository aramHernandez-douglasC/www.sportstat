package com.project.Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Boundary.UserDAO;
import com.project.Entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String [] userItem = new String[7];
		userItem[0] = request.getParameter("fname");
		userItem[1] = request.getParameter("dob");
		userItem[2] = request.getParameter("city");
		userItem[3]= request.getParameter("province");
		userItem[4] = request.getParameter("country");
		userItem[5] = request.getParameter("uname");
		userItem[6] = request.getParameter("pword");
		
		Date date1 = new Date();
		try {
			date1 = new SimpleDateFormat("yy/mm/dd").parse(userItem[1]);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		if (userItem.length != 0 && date1 != null) {
		User genUser = new User(userItem[0], date1, userItem[2] , userItem[3], userItem[4], userItem[5], userItem[6]);
		
		UserDAO uDao = new UserDAO();
		
		uDao.addInfo(genUser);
		}
		
		response.sendRedirect("MainPage");
	}

}
