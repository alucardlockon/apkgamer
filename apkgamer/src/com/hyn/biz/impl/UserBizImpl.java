package com.hyn.biz.impl;

import com.hyn.biz.UserBiz;
import com.hyn.dao.UserDao;
import com.hyn.entity.User;

public class UserBizImpl implements UserBiz {
	UserDao userDao;

	public void regist(User user) {
		userDao.save(user);
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getUserInfo(User user) {
		return userDao.findUserByNameOrEmail(user);
	}

}
