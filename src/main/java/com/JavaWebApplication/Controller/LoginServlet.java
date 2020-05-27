package com.JavaWebApplication.Controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JavaWebApplication.Beans.Users;
import com.JavaWebApplication.Model.UsersDb;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
		doGet(request, response);
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Users rb = new Users();
		
		rb.setUsername(username);
		rb.setPassword(password);
		
		UsersDb ud = new UsersDb();
		
		String s1 = ud.findUser(rb);
		
		System.out.println(s1);
		
		if (s1.equalsIgnoreCase("success")) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			
			response.sendRedirect("jsp/"+WEB.home);
		}
		
		else {
			
			System.out.println("user not found in the database");		
			response.sendRedirect("jsp/"+WEB.login);
		}
	}
}
