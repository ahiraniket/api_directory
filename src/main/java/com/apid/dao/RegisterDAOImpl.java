package com.apid.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.LoginVO;
import com.apid.model.RegisterVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void registerUser(RegisterVO registerVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);

	}

	@Override
	public void registerLogin(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}

}
