package com.shixun.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.shixun.demo.dao.AdminDao;
import com.shixun.demo.dao.BaseDao1;
import com.shixun.demo.entity.Student;
import com.shixun.demo.entity.User;

public class AdminDaoImpl implements AdminDao{

	@Override
	public int save(Student student) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Student Student) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Student find(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Student> find() {
		List<Student> list = new ArrayList<Student>();

		String sql = "select * from student";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = BaseDao1.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Student student = new Student();
				student.setStuAddress(rs.getString("stuAddress"));
				student.setStuDate(rs.getDate("stuDate"));
				student.setStuEmail(rs.getString("stuEmail"));
				student.setStuName(rs.getString("stuName"));
				student.setStuNo(rs.getInt("stuNo"));
				student.setStuPhone(rs.getString("stuPhone"));
				student.setStuSex(rs.getString("stuSex"));
				
				list.add(student);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao1.closeAll(rs, pstmt, conn);
		}

		return list;
	}

	@Override
	public List<Student> find(String sql, Object... params) {
		List<Student> list = new ArrayList<Student>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = BaseDao1.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			if(params != null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);
				}
			}
			
			
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Student student = new Student();
				student.setStuAddress(rs.getString("stuAddress"));
				student.setStuDate(rs.getDate("stuDate"));
				student.setStuEmail(rs.getString("stuEmail"));
				student.setStuName(rs.getString("stuName"));
				student.setStuNo(rs.getInt("stuNo"));
				student.setStuPhone(rs.getString("stuPhone"));
				student.setStuSex(rs.getString("stuSex"));
				
				list.add(student);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao1.closeAll(rs, pstmt, conn);
		}

		return list;
	}
	
	@Override
	public List<String> queryAllTables() {
		List<String> list = new ArrayList<String>();

		String sql = "show tables";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = BaseDao1.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(rs.getString(1));
		
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao1.closeAll(rs, pstmt, conn);
		}

		return list;
	}

	@Override
	public List<String> queryByTableName() {
		List<String> list = new ArrayList<String>();

		String sql = "show tables";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = BaseDao1.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(rs.getString(1));
		
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao1.closeAll(rs, pstmt, conn);
		}

		return list;
	}

	@Override
	public List<Student> findByCondition(DetachedCriteria detachedCriteria) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
