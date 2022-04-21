package com.apid.dao;

import com.apid.model.LoginVO;

public interface LoginDAO {

	public LoginVO getByUsername(String userName);
	
	
}
