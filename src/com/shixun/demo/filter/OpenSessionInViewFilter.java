package com.shixun.demo.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.shixun.demo.dao.HibernateUtil;

public class OpenSessionInViewFilter implements Filter{

	private SessionFactory factory;
	
	@Override
	public void destroy() {
	
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		//请求之前开启事务
		Transaction tx = factory.getCurrentSession().getTransaction();
		if(!tx.isActive()){
			tx = factory.getCurrentSession().beginTransaction();
		}
		
		System.out.println("请求之前开启事务");
		try {
			chain.doFilter(request, response);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		
		//请求之后结束事务
		System.out.println("请求之前结束事务");
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		factory = HibernateUtil.getSessionFactory();
	}

}
