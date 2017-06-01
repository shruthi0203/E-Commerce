package com.niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.niit.utils.DBconnection;

public class CartDao {
	public static int insert(String pname) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("insert into Cart(pname) values (?)");
			ps.setString(1, pname);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
	
	public static int delete(String pname) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("delete from Cart where pname=?");
			ps.setString(1, pname);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}
