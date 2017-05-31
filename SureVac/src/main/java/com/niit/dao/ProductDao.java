package com.niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.niit.model.Product;
import com.niit.utils.DBconnection;

public class ProductDao {

	public static int save(Product p) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("insert into Products(productcode,productname,productprice,productdesc1,productdesc2,productdesc3) values (?,?,?,?,?,?)");
			ps.setString(1, p.getProductcode());
			ps.setString(2, p.getProductname());
			ps.setString(3, p.getProductprice());
			ps.setString(4, p.getProductdesc1());
			ps.setString(5, p.getProductdesc2());
			ps.setString(6, p.getProductdesc3());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int update(Product p) {
		int status = 0;
		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("update Products set productname=?, productprice=?, productdesc1=?, productdesc2=?, productdesc3=? where productcode=?");
			ps.setString(1, p.getProductcode());
			ps.setString(2, p.getProductname());
			ps.setString(3, p.getProductprice());
			ps.setString(4, p.getProductdesc1());
			ps.setString(5, p.getProductdesc2());
			ps.setString(6, p.getProductdesc3());

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
			PreparedStatement ps = con.prepareStatement("delete from Products where productcode=?");
			ps.setString(1, productcode);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static Product getProductById(String productcode) {
		Product p = new Product();

		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("select * from Products where productcode=?");
			ps.setString(1, productcode);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				p.setProductcode(rs.getString(1));
				p.setProductname(rs.getString(2));
				p.setProductprice(rs.getString(3));
				p.setProductdesc1(rs.getString(4));
				p.setProductdesc2(rs.getString(5));
				p.setProductdesc3(rs.getString(6));
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return p;
	}

	public static List<Product> getAllProduct() {
		List<Product> list = new ArrayList<Product>();

		try {
			Connection con = DBconnection.CreateConnection();
			PreparedStatement ps = con.prepareStatement("select * from Product");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setProductcode(rs.getString(1));
				p.setProductname(rs.getString(2));
				p.setProductprice(rs.getString(3));
				p.setProductdesc1(rs.getString(4));
				p.setProductdesc2(rs.getString(5));
				p.setProductdesc3(rs.getString(6));
				list.add(p);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}


