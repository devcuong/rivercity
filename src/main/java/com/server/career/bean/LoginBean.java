package com.server.career.bean;

public class LoginBean {
	
	/*
	 *Constant to definition user type
	 *
	 * 0: employee
	 * 
	 * 1: employer
	 */
	public static final Integer USER_TYPE_EMPLOYEE = 0;
	public static final Integer USER_TYPE_EMPLOYER = 1;
	
	private Integer userId;
	private String userName;
	private String email;
	private Integer isLogin;
	private Integer typeUser;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getIsLogin() {
		return isLogin;
	}
	public void setIsLogin(Integer isLogin) {
		this.isLogin = isLogin;
	}
	public Integer getTypeUser() {
		return typeUser;
	}
	public void setTypeUser(Integer typeUser) {
		this.typeUser = typeUser;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
}
