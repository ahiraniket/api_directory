package com.apid.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.RegisterDAO;
import com.apid.model.LoginVO;
import com.apid.model.RegisterVO;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	RegisterDAO registerDAO;
	
	@Override
	public void registerUser(RegisterVO registerVO) {
		
		registerDAO.registerUser(registerVO);
	}

	@Override
	public void registerLogin(LoginVO loginVO) {
		loginVO.setRole("ROLE_USER");
		loginVO.setEnabled(true);
		registerDAO.registerLogin(loginVO);
		
	}

}
