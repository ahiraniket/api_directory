package com.apid.dao;

import com.apid.model.LoginVO;
import com.apid.model.RegisterVO;

public interface RegisterDAO {

	public void registerUser(RegisterVO registerVO);

	public void registerLogin(LoginVO loginVO);

}
