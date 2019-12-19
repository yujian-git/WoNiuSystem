package com.woniu.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.woniu.dao.IUserDao;
import com.woniu.pojo.User;


@Repository
public class UserDao implements IUserDao {

	@Autowired
	SessionFactory sf;
	
	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		sf.openSession().save(user);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return sf.openSession().createCriteria(User.class).list();
	}

}
