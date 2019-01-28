package org.zgr.pack.entity.user;

public class User {
      
	private String userName;     //会员账号(E-Mail或手机)
	private String password;     //登录密码
	private String nickname;     //昵称
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
	
}
