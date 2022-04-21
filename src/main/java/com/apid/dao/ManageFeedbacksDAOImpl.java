package com.apid.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageFeedbacksVO;

@Repository
public class ManageFeedbacksDAOImpl implements ManageFeedbacksDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List viewFeedbacks() {
		Session session = this.sessionFactory.openSession();
		Query q= session.createQuery("from ManageFeedbacksVO");
		List viewFeedbacksList=q.list();
		return viewFeedbacksList;
	}

	@Override
	public void insertFeedback(ManageFeedbacksVO manageFeedbacksVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageFeedbacksVO);
	}
	
	
}
