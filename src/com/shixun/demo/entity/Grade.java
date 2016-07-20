package com.shixun.demo.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Grade implements Serializable{
	private Integer gradeID;
	private String gradeName;
	private Set<Student> students = new HashSet<Student>(0);
	
	
	public Integer getGradeID() {
		return gradeID;
	}
	public void setGradeID(Integer gradeID) {
		this.gradeID = gradeID;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public Set<Student> getStudents() {
		return students;
	}
	public void setStudents(Set<Student> students) {
		this.students = students;
	}
	

}
