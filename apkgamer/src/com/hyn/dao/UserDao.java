package com.hyn.dao;

import com.hyn.entity.User;

public interface UserDao {

	void save(User user);

	User findUserByNameOrEmail(User user);


}
