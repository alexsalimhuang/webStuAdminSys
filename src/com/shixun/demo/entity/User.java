package com.shixun.demo.entity;

import java.io.Serializable;


public class User implements Serializable{
	private Integer uID;
	private String loginName;
	private String loginPass;
	private Integer authority;
	private String nickName;
	private String sex;
	private String avatar;
	private String intro;
	private java.sql.Date bornDate;
	private java.sql.Date regDate;
	private String email;
	private String location;
	private String profile;
	private java.util.Date lastOnLine;
	private Integer status;
	private Integer lvl;
	
	public Integer getuID() {
		return uID;
	}

	public void setuID(Integer uID) {
		this.uID = uID;
	}

	public Integer getAuthority() {
		return authority;
	}

	public void setAuthority(Integer authority) {
		this.authority = authority;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public java.sql.Date getBornDate() {
		return bornDate;
	}

	public void setBornDate(java.sql.Date bornDate) {
		this.bornDate = bornDate;
	}

	public java.sql.Date getRegDate() {
		return regDate;
	}

	public void setRegDate(java.sql.Date regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public java.util.Date getLastOnLine() {
		return lastOnLine;
	}

	public void setLastOnLine(java.util.Date lastOnLine) {
		this.lastOnLine = lastOnLine;
	}

	public Integer getLvl() {
		return lvl;
	}

	public void setLvl(Integer lvl) {
		this.lvl = lvl;
	}


	

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPass() {
		return loginPass;
	}

	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}
	
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
