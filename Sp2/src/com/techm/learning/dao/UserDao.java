package com.techm.learning.dao;

import com.techm.learning.model.User;

public interface UserDao {

	User findByUserName(String username);

}