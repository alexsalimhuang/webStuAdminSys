package com.shixun.demo.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.shixun.demo.entity.Student;

public interface AdminDao {

	/**
	 * 根据指定的Student对象，向数据库中添加数据
	 * 
	 * @param student
	 *            需要增加的Student对象
	 * @return 返回1个整数，大于0 表示添加成功，否则表示失败
	 */
	int save(Student student);

	/**
	 * 根据主键删除数据
	 * 
	 * @param id
	 *            需要删除数据的主键
	 * @return 返回一个整数，大于0 表示删除成功，否则表示失败
	 */
	int delete(String id);

	/**
	 * 根据指定的Student对象，像数据库中的数据进行修改操作，注意：数据的主键不能修改
	 * 
	 * @param Student
	 *            需要修改的Student对象
	 * @return 返回一个整数，大于0表示修改成功，否则表示修改失败
	 */
	int update(Student Student);

	/**
	 * 根据指定的主键查询Student信息
	 * 
	 * @param id
	 *            需要查询的Student信息的主键
	 * @return 返回一个Student对象，查询失败返回null
	 */
	Student find(String id);

	/**
	 * 查询全部的学员信息
	 * 
	 * @return 返回一个Student对象的集合,没有数据集合的元素个数为0
	 */
	List<Student> find();

	/**
	 * 根据指定的SQL语句和参数，查询学员信息
	 * 
	 * @param sql
	 *            需要执行的SQL语句
	 * @param params
	 *            执行SQL语句所需的参数
	 * @return 返回一个Student对象的集合,没有数据集合的元素个数为0
	 */
	List<Student> find(String sql, Object... params);

	List<String> queryAllTables();

	List<String> queryByTableName();

	List<Student> findByCondition(DetachedCriteria detachedCriteria);
}
