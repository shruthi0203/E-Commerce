package com.niit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.niit.model.Cart1;
import com.niit.model.Product;
import com.niit.utils.DBconnection;

public class CartDao {
	
	public static int save(Cart1 c1) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("insert into Cart(name,price) values (?,?)");
			ps.setString(1, c1.getName());
			ps.setString(2, c1.getPrice());
			
			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
	
}

