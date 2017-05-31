package com.niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.niit.model.Case;
import com.niit.utils.DBconnection;

public class CaseDao {

	public static int save(Case c) {

		int status = 0;
		System.out.println(c.toString());

		try {

			System.out.println("Inside save method");
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("insert into Complaint(Username,Email,Message)values (?,?,?)");
			ps.setString(1, c.getUsername());
			ps.setString(2, c.getEmail());
			ps.setString(3, c.getMessage());

			status = ps.executeUpdate();
			//con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return status;

	}

	public static int delete(String Username) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("delete from Case where Username=?");
			ps.setString(1, Username);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static List<Case> getAllCase() {
		List<Case> list = new ArrayList<Case>();

		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("select * from Case");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Case c = new Case();
				c.setUsername(rs.getString(1));
				c.setEmail(rs.getString(2));
				c.setMessage(rs.getString(3));

				list.add(c);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
