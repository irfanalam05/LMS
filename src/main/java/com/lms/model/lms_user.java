package com.lms.model;

public class lms_user {
	
	private int user_id;
	private String name;
	private String email;
	private String country;
	private String password;
	
	
public lms_user() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public lms_user(int user_id, String name, String email, String country, String password) {
		super();
		this.user_id = user_id;
		this.name = name;
		this.email = email;
		this.country = country;
		this.password = password;
	}

	
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


		public int getId() {
	return user_id;
}
		public void setId(int id) {
			this.user_id = id;
		}
		
		public String getName() {
			return name;
		}
		
		public void setName(String name) {
			this.name = name;
		}
		
		public String getEmail() {
			return email;
		}
		
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getCountry() {
			return country;
		}
		
		public void setCountry(String country) {
			this.country = country;
		}
		
		public String getPassword() {
			return password;
		}
		
		public void setPassword(String password) {
			this.password = password;
		}
@Override
public String toString() {
	return "User [id=" + user_id + ", name=" + name + ", email=" + email + ", country=" + country + ", password=" + password
			+ "]";
}
 


}

