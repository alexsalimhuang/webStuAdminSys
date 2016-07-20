package com.shixun.demo.service;

import java.util.List;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import com.shixun.demo.dao.StudentDao;
import com.shixun.demo.entity.Student;


public class StudentService {

	StudentDao studentDao = new StudentDao();

	public List<Student> search() {
		return studentDao.find();
	}

	public List<Student> searchLikeName(String name) {

		return studentDao.findByProperty(Restrictions.like("stuName", name));
		
	}
	
	public List<Student> conditionalQuery(DetachedCriteria detachedCriteria) {

		return  studentDao.findByCondition(detachedCriteria);
		
		
	}
	

}
