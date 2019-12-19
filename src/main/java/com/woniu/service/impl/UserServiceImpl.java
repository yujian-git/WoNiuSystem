package com.woniu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.woniu.dao.IUserDao;
import com.woniu.pojo.User;
import com.woniu.service.IUserService;

@Service
//@Transactional
public class UserServiceImpl implements IUserService {
	
	@Autowired
	IUserDao iud;
	
	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		iud.save(user);
		//System.out.println(1/0);
		user.setUserName("ÕÅÈý");
	}
	
	@Override
	public List<User> findAll() {
		List<User> users = iud.findAll();
		return users;
	}

}
