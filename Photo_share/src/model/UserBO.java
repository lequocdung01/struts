package model;

import java.io.Serializable;

public class UserBO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5518386475633672164L;

	
	private int id;
	private String username,userpass,email,gender,country;
	
	public UserBO(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return userpass;
	}
	public void setPassword(String password) {
		this.userpass = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
}

