package com.niit.model;

public class Register {
	
	private String UserName;
	private String Password;
	private String Email;
	private String Fname;
	private String Lname;
	
	public Register(){}

	public Register(String userName, String password, String email, String fname, String lname) {
		super();
		UserName = userName;
		Password = password;
		Email = email;
		Fname = fname;
		Lname = lname;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getFname() {
		return Fname;
	}

	public void setFname(String fname) {
		Fname = fname;
	}

	public String getLname() {
		return Lname;
	}

	public void setLname(String lname) {
		Lname = lname;
	}
	
	

}
