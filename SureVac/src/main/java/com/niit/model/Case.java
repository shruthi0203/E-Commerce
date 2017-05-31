package com.niit.model;

public class Case {

	private String Username;
	private String Email;
	private String Message;

	public Case() {
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String Username) {
		this.Username = Username;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}

	@Override
	public String toString() {
		return "Case [Username=" + Username + ", Email=" + Email + ", Message=" + Message + "]";
	}

}
