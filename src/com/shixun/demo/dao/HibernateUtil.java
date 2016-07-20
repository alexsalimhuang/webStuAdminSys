package com.shixun.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static SessionFactory sessionFactory;
	static {
		
		Configuration cfg = new Configuration().configure();
		sessionFactory = cfg.buildSessionFactory();
		System.out.println("工厂已建好");
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	public static Session getSession(){
		return sessionFactory.getCurrentSession();
	}
}
