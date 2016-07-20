package com.shixun.demo.entity;

import java.io.Serializable;
import java.util.Date;

public class Student implements Serializable {

	private Integer stuNo;
	private String stuName;
	private String stuSex;
	private Date stuDate;
	private String stuEmail;
	private String stuPhone;
	private String stuAddress;
	private Integer uID;
	private Integer gradeID;
	private Grade grade;
	
	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
		this.grade = grade;
	}

	public Integer getGradeID() {
		return gradeID;
	}

	public void setGradeID(Integer gradeID) {
		this.gradeID = gradeID;
	}

	public Integer getuID() {
		return uID;
	}

	public void setuID(Integer uID) {
		this.uID = uID;
	}

	public Integer getStuNo() {
		return stuNo;
	}

	public void setStuNo(Integer stuNo) {
		this.stuNo = stuNo;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuSex() {
		return stuSex;
	}

	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}

	public Date getStuDate() {
		return stuDate;
	}

	public void setStuDate(Date stuDate) {
		this.stuDate = stuDate;
	}

	public String getStuEmail() {
		return stuEmail;
	}

	public void setStuEmail(String stuEmail) {
		this.stuEmail = stuEmail;
	}

	public String getStuPhone() {
		return stuPhone;
	}

	public void setStuPhone(String stuPhone) {
		this.stuPhone = stuPhone;
	}

	public String getStuAddress() {
		return stuAddress;
	}

	public void setStuAddress(String stuAddress) {
		this.stuAddress = stuAddress;
	}

}
