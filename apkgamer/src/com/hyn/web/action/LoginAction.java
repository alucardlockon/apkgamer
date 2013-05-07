package com.hyn.web.action;

import com.hyn.biz.UserBiz;
import com.hyn.entity.User;

public class LoginAction extends BaseAction {
	UserBiz userBiz;
	User user;

	public String execute() {
		User validser = userBiz.getUserInfo(user);
		if (validser != null) {
			if (validser.getPassword().equals(user.getPassword())) {
				session.put("user", validser);
				return "login";
			} else {
				return "tolog";
			}
		} else {
			return "tolog";
		}
	}

	public String tolog() {

		return "tolog";
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
