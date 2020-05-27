package com.JavaWebApplication.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDb {
	
	Connection con = null;
	

	
	public Connection getCon() {
		
		try {
			
			Class.forName("org.postgresql.Driver");
			
			try {
				
				con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/JavaWebApplication", "postgres", "lpmss1998");
				
				if (con != null) {
					
					System.out.println("Connected to Postgres");
				}
				
				else {
					System.out.println("Connection failed");
				}
				
			} 
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} 
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return con;
	}
}
