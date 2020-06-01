package com.JavaWebApplication.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.JavaWebApplication.Beans.Chauffeur;
import com.JavaWebApplication.Beans.Users;
import com.JavaWebApplication.Model.MyDb;
import com.JavaWebApplication.Model.UsersDb;

/**
 * Servlet implementation class Register
 */

public class RegisterServlet extends HttpServlet {
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
		doGet(request, response);
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		
		
		// Verify if username already exist
		
		MyDb db = new MyDb();
		Connection con = db.getCon();
		PreparedStatement st;
				
		try {
			st = con.prepareStatement("select * from users where username = ?");
			st.setString(1, username);
		    ResultSet r1=st.executeQuery();
		    
		    if(r1.next()){
		    	
		         System.out.println("user already exist in database!");
		    }
		    
		    else{
		    	
		    	Users rb = new Users();
				
				rb.setUsername(username);
				rb.setPassword(BCrypt.hashpw(password, BCrypt.gensalt()));
				rb.setRole(role);
				
				
				
				UsersDb ud = new UsersDb();
				String s1 = ud.insertUsers(rb);
				System.out.println(s1);
				
				
				
				if (role.equalsIgnoreCase("chauffeur")) {
					
					String service = request.getParameter("service");
					long identite = Long.parseLong(request.getParameter("identite"));
				
					Chauffeur cf = new Chauffeur(service, identite);
					UsersDb udf = new UsersDb();
					String s2 = udf.insertChauffeur(cf); 
					System.out.println(s2);
				}

				response.sendRedirect("jsp/"+WEB.login);
		    }
				
		} catch (SQLException e) {
					
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
