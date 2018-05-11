package com.dao;

import com.po.Users;

public class UsersDAO {

	public boolean check(Users u) {
		
		if ("admin".equals(u.getUsername()) && "admin".equals(u.getPassword())) {
			return true;
		} else {
			return false;
		}

	}

}
