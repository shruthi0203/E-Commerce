package com.niit.model;

public class Product {

	private String productcode;
	private String productname;
	private String productprice;
	private String productdesc1;
	private String productdesc2;
	private String productdesc3;

	public Product(){}

	public Product(String productcode, String productname, String productprice, String productdesc1,
			String productdesc2, String productdesc3) {
		this.productcode = productcode;
		this.productname = productname;
		this.productprice = productprice;
		this.productdesc1 = productdesc1;
		this.productdesc2 = productdesc2;
		this.productdesc3 = productdesc3;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProductprice() {
		return productprice;
	}

	public void setProductprice(String productprice) {
		this.productprice = productprice;
	}

	public String getProductdesc1() {
		return productdesc1;
	}

	public void setProductdesc1(String productdesc1) {
		this.productdesc1 = productdesc1;
	}

	public String getProductdesc2() {
		return productdesc2;
	}

	public void setProductdesc2(String productdesc2) {
		this.productdesc2 = productdesc2;
	}

	public String getProductdesc3() {
		return productdesc3;
	}

	public void setProductdesc3(String productdesc3) {
		this.productdesc3 = productdesc3;
	}

	@Override
	public String toString() {
		return "Product [productcode=" + productcode + ", productname=" + productname + ", productprice=" + productprice
				+ ", productdesc1=" + productdesc1 + ", productdesc2=" + productdesc2 + ", productdesc3=" + productdesc3
				+ "]";
	}
	
	

	


}
