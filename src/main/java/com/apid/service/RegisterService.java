package com.apid.service;

import com.apid.model.LoginVO;
import com.apid.model.RegisterVO;

public interface RegisterService {

	public void registerLogin(LoginVO loginVO);

	public void registerUser(RegisterVO registerVO);

}
