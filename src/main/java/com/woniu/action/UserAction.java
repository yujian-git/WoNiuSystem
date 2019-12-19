package com.woniu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.woniu.pojo.User;
import com.woniu.service.IUserService;

@Controller
public class UserAction {
	private User user;
	private List<User> list;
	
	
	@Autowired
	IUserService ius;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public String save() {
		ius.save(user);
		return "success";
	}
	
	public String findAll() {
		list = ius.findAll();
		return "success";
	}
	
	
	
	
	
	
}
