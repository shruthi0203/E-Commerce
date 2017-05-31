package com.niit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.niit.utils.*;

import com.niit.utils.*;

public class RegisterDao {

    public static boolean insert(String Fname, String Lname, String Email, String UserName, String Password) throws ClassNotFoundException, SQLException {
        boolean st = false;
        try {
         
        	Connection con = DBconnection.CreateConnection();
            PreparedStatement ps = con.prepareStatement("insert into Customers(Fname,Lname,Email,UserName,Password) values(?,?,?,?,?)");  // generates sql query
              System.out.println("successfuly inserted");
            ps.setString(1, Fname);
            ps.setString(2, Lname);
            ps.setString(3, Email);
            ps.setString(4,UserName );
            ps.setString(5, Password);

            ps.executeUpdate(); // execute it on test database
            System.out.println("successfuly inserted");
            st=true;
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return st;
    }
}
