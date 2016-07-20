package com.shixun.demo.service;

import java.util.List;

import com.shixun.demo.dao.UserDao;
import com.shixun.demo.entity.User;
public class UserService {
	private UserDao userDao;
	public User login(String loginName,String loginPass){
		
		userDao = new UserDao();
		//没查到不会返回null，而是size为0的list
		List<User> users = userDao.findByProperty("loginName",loginName);		

		if(users.size()!=0 && users.get(0).getLoginPass().equals(loginPass)){
			User user = users.get(0);
			//表示在线
			user.setStatus(1);
			userDao.update(user);
			return user;
		}
		
		return null;
	}

	public User validName(String loginName) {
		// TODO Auto-generated method stub
		userDao = new UserDao();
		List<User> users = userDao.findByProperty("loginName",loginName);		

		if(users.size()!=0 ){
			return users.get(0);
		}
		return null;
	}
	
	public boolean reg(User user) {
		// TODO Auto-generated method stub
		userDao = new UserDao();
		boolean isSucceed = userDao.save(user);		
		if(isSucceed){
			return true;
		}
		return false;
	}
	
	public void signout(String loginName){
		
		userDao = new UserDao();
		//没查到不会返回null，而是size为0的list
		List<User> users = userDao.findByProperty("loginName",loginName);		

		if(users.size()!=0){
			User user = users.get(0);
			//表示离线
			user.setStatus(0);
			userDao.update(user);		
		}
		
		
	}
	
	
}
