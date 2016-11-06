package com.model;

import java.util.List;

import javax.validation.constraints.NotNull;

public class User {
	
	@NotNull
	private String userName;
	@NotNull
	private String userPassword;
	private String school;
	private List<String> color;
	private boolean gender;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public List<String> getColor() {
		return color;
	}
	public void setColor(List<String> color) {
		this.color = color;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	
	@Override
    public String toString() {
        return "User name: " + getUserName() + "<br />" + " School: " + getSchool();
    }

}
