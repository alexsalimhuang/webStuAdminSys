package com.shixun.demo.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Criteria;import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.SimpleExpression;
import org.hibernate.Session;

import com.shixun.demo.common.PageList;

/**
 * @author Administrator
 *
 * @param <T>
 */
@SuppressWarnings({"rawtypes","unchecked"})
public abstract class BaseDao<T> implements IBaseDao<T> {

	//用于构造实体的时候获得泛型T代表的具体实体类型
	private Class<?> entityClass;
	
	public BaseDao(){
		//获取泛型T的具体类型
		ParameterizedType clazz = (ParameterizedType)this.getClass().getGenericSuperclass();
		Type[] types = clazz.getActualTypeArguments();
		entityClass = (Class)types[0];
	}
	/**
	 * 获取当前的session对象
	 * @return
	 */
	public Session getSession() {
		Session session = HibernateUtil.getSession();
		if (!session.getTransaction().isActive()) {
			session.beginTransaction();
		}
		return session;
	}

	// 增加
	public boolean save(T record) {
		
		
		try {
			this.getSession().save(record);
		} catch (Exception e) {
			return false;
		}
		return true;
		
	}

	public boolean delete(Serializable id) {

		try {
			Session session = this.getSession();
			session.delete(session.get(entityClass, id));
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean update(T record) {
		
		try {
			this.getSession().update(record);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	
	/**
	 * 整表查询
	 */
	public List<T> find(){
		return this.getSession().createCriteria(entityClass).list();
	}

	/**
	 * 根据一个字段的等值查询,没查到不会返回null，返回size为0的list
	 * @param propertyName
	 * @param value
	 * @return
	 */
	public List<T> findByProperty(String propertyName,Object value){
		Criteria criteria = this.getSession().createCriteria(entityClass);
		criteria.add(Restrictions.eq(propertyName, value));
		return criteria.list();
	}
	
	public List<T> findByProperty(SimpleExpression... splExps){
		Criteria criteria = this.getSession().createCriteria(entityClass);
		for (SimpleExpression simpleExpression : splExps) {
			criteria.add(simpleExpression);
		}	
		return criteria.list();
	}
	
	/**
	 * 根据web层传回的带条件的detachedCriteria查询
	 * @param detachedCriteria
	 * @return
	 */
	public List<T> findByCondition(DetachedCriteria detachedCriteria ){
		Criteria criteria = detachedCriteria.getExecutableCriteria(getSession());
		return criteria.list();
	}
	
	/**
	 * 获得分页查询第index页的size条数据
	 * @param index
	 * @param size
	 * @return
	 */
	public PageList findByPage(int index,int size){
		Criteria criteria = this.getSession().createCriteria(entityClass);

		//查询总条数
		criteria.setProjection(Projections.rowCount());
		int count = Integer.parseInt(criteria.uniqueResult().toString());
		criteria.setProjection(null);
		
		criteria.setFirstResult((index - 1)*size);
		criteria.setMaxResults(size);
		return new PageList(index, size, criteria.list(), count) ;
	}
	
	public PageList findByPage(int index,int size,DetachedCriteria detachedCriteria){
		Criteria criteria = detachedCriteria.getExecutableCriteria(getSession());
		//查询总条数
		criteria.setProjection(Projections.rowCount());
		int count = Integer.parseInt(criteria.uniqueResult().toString());
		criteria.setProjection(null);
		
		criteria.setFirstResult((index - 1)*size);
		criteria.setMaxResults(size);
		return new PageList(index, size, criteria.list(), count) ;
	}

}
