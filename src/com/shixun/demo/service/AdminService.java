package com.shixun.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.shixun.demo.dao.AdminDao;
import com.shixun.demo.dao.BaseDao;
import com.shixun.demo.dao.GradeDao;
import com.shixun.demo.dao.StudentDao;
import com.shixun.demo.dao.UserDao;
import com.shixun.demo.dao.impl.AdminDaoImpl;
import com.shixun.demo.entity.Student;

public class AdminService {
	
	AdminDao adminDao = new AdminDaoImpl();
	private UserDao userDao;
	private StudentDao studentDao;
	private GradeDao gradeDao;

	public List<String> queryAllTables(){
		return adminDao.queryAllTables();
	}
	
	public List<Student> conditionalQuery(DetachedCriteria detachedCriteria) {
		return  adminDao.findByCondition(detachedCriteria);
	}
	
	public List<?> queryByTableName(String tableName){
		switch(tableName.toUpperCase()){
		case "USER":
			userDao = new UserDao();
			return userDao.find();
		case "STUDENT":
			studentDao = new StudentDao();
			return studentDao.find();
		case "GRADE":
			gradeDao = new GradeDao();
			return gradeDao.find();
		default:			
			return new ArrayList<String>(0);
		}

	}
}
