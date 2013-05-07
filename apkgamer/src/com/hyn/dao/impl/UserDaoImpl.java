package com.hyn.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hyn.dao.UserDao;
import com.hyn.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}
	public User findUserByNameOrEmail(User user) {
		String hql = "from User where name=?";
		List<User> list = this.getHibernateTemplate().find(hql,
				new Object[] { user.getName() });
		if (list.size() > 0) {
			return (User) list.get(0);
		} else {
			return null;
		}
	}
}
