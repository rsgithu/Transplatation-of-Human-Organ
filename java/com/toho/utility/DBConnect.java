package com.toho.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnect() {
		
		String url="jdbc:mysql://localhost:3306/transplantofhumanorgan";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,"root","");
			return con;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

}
