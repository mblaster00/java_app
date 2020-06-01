package com.JavaWebApplication.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.mindrot.jbcrypt.BCrypt;

import com.JavaWebApplication.Beans.Chauffeur;
import com.JavaWebApplication.Beans.Users;

public class UsersDb {
	
	String s1 = null;
	
	MyDb db = new MyDb();
	Connection con = db.getCon();
	
	
	public String insertUsers(Users rb) {
		
		
		try {
			
			Statement stmt = con.createStatement();
			stmt.executeUpdate("insert into users(username, password, role) "
					+ "values ('"+rb.getUsername()+"','"+rb.getPassword()+"','"+rb.getRole()+"')");
			
			s1 = "data insert is ok";
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s1;
	}
	
	
	
	public String insertChauffeur(Chauffeur rb) {
		
		try {
			
			Statement stmt = con.createStatement();
			stmt.executeUpdate("insert into chauffeur(service, identite) "
					+ "values ('"+rb.getService()+"','"+rb.getIdentite()+"')");
			
			s1 = "data insert is ok";
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s1;
		
	}
	
	
	
	public String findUser(Users rb) {
		
		ResultSet rs;
		String s1 = "not success";
		
		try {
			
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery("select * from users where username='"+rb.getUsername()+"'");
			
			while (rs.next()) {
				
	            if (BCrypt.checkpw(rb.getPassword(), rs.getString("password"))) {
				
	            	s1 = "success";
	            }
			}
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s1;
		
	}
}
