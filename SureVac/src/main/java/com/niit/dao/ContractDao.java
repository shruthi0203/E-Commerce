package com.niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.niit.model.Contract;
import com.niit.utils.DBconnection;

public class ContractDao {
	public static int save(Contract c) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("insert into Contract(pcode,pname,description,startdate,warrantyprd) values (?,?,?,?,?)");
			ps.setString(1, c.getProductcode());
			ps.setString(2, c.getProductname());
			ps.setString(3, c.getDescription());
			ps.setString(4, c.getStartdate());
			ps.setString(5, c.getWarrantyprd());
			
			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int update(Contract c) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("update Contract set pname=?, pdesc=?, startdate=?, warrantyprd=? where productcode=?");
			ps.setString(1, c.getProductcode());
			ps.setString(2, c.getProductname());
			ps.setString(3, c.getDescription());
			ps.setString(4, c.getStartdate());
			ps.setString(5, c.getWarrantyprd());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int delete(String productcode) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("delete from Contract where productcode=?");
			ps.setString(1, productcode);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static Contract getContractById(String productcode) {
          Contract c = new Contract();

		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("select * from Contract where productcode=?");
			ps.setString(1, productcode);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				c.setProductcode(rs.getString(1));
				c.setProductname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setStartdate(rs.getString(4));
				c.setWarrantyprd(rs.getString(5));
				
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return c;
	}

	public static List<Contract> getAllContract() {
		List<Contract> list = new ArrayList<Contract>();

		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("select * from Contract");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Contract c = new Contract();
				c.setProductcode(rs.getString(1));
				c.setProductname(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setStartdate(rs.getString(4));
				c.setWarrantyprd(rs.getString(5));
				list.add(c);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
