 package com.JavaWebApplication.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.JavaWebApplication.Beans.Users;

public class UsersDb {
	
	String s1 = null;
	
	public String insertUser(Users rb) {
		
		MyDb db = new MyDb();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("insert into Users(username, email, password) "
					+ "values ('"+rb.getUsername()+"','"+rb.getEmail()+"','"+rb.getPassword()+"')");
			
			s1 = "data insert is ok";
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s1;
	}
	
	public String findUser(Users rb) {
		
		MyDb db = new MyDb();
		Connection con = db.getCon();
		ResultSet rs;
		String s1 = "not success";
		
		try {
			
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery("select username, password from users where username='"+rb.getUsername()+"'and password='"+rb.getPassword()+"'");
			
			if (rs.next()) {
				
				s1 = "success";
			}
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s1;
		
	}
}
