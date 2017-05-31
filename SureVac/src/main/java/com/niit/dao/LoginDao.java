package com.niit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.niit.utils.DBconnection;

public class LoginDao {
    public static boolean checkUser(String UserName, String Password) {
       boolean st = false;
       try {

           //loading drivers for sqlserver
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

           //creating connection with the database 
           
           Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=mysqlserver;database=SureVac");
           PreparedStatement ps = con.prepareStatement("select * from Customers where UserName=? and Password=?");
           ps.setString(1, UserName);
           ps.setString(2, Password);
           ResultSet rs = ps.executeQuery();
           st = rs.next();
           ps.close();
           con.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
       return st;
   }

   
}

