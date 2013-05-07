package com.hyn.web.action;

import java.sql.Date;

import com.hyn.biz.UserBiz;
import com.hyn.entity.User;

public class RegistAction extends BaseAction{
	User user;
	UserBiz userBiz;
	public String execute() {
		user.setIsverify(0);
		user.setRegistdate(new Date(System.currentTimeMillis()));
		userBiz.regist(user);
		return "success";
	}
	public String toreg(){
		return "toreg";
	}
	public String verifysuc(){
		return "verifysuc";
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
}
