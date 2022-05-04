package com.apid.dao;

import java.util.List;

import com.apid.model.ForgotPasswordVO;
import com.apid.model.LoginVO;

public interface ForgotPasswordDAO {

	public void insertUser(ForgotPasswordVO forgotPasswordVO);

	public List verifyToken(String token);

	public void updatePassword(LoginVO loginVO);

	public List loginDetailsOfUser(String emailId);

	
	
}
