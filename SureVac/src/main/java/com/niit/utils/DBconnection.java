package com.niit.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	public static Connection CreateConnection() {
		Connection con = null;
		try {

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=mysqlserver;database=SureVac");
			//System.out.println("test");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;

	}

}
