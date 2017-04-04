package com.techm.learning.DAO;

import com.techm.learning.model.Users;

public interface LoginDao {
	Users findByUserName(String username);
	public void adduseer(Users myuser);
}
