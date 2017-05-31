package com.niit.model;

public class Contract {
	private String productcode;
	private String productname;
	private String Description;
	private String startdate;
	private String warrantyprd;

	public Contract(){}

	public Contract(String productcode, String productname, String description, String startdate, String warrantyprd) {
		this.productcode = productcode;
		this.productname = productname;
		this.Description = description;
		this.startdate = startdate;
		this.warrantyprd = warrantyprd;
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

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getWarrantyprd() {
		return warrantyprd;
	}

	public void setWarrantyprd(String warrantyprd) {
		this.warrantyprd = warrantyprd;
	}
	
	
}
