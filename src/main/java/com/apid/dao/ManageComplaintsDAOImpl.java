package com.apid.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.ManageComplaintsVO;

@Repository
public class ManageComplaintsDAOImpl implements ManageComplaintsDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List viewComplaints() {
		Session session = this.sessionFactory.openSession();
		Query q= session.createQuery("from ManageComplaintsVO");
		List viewComplaintsList=q.list();
		return viewComplaintsList;
		
	}

	@Override
	public void deleteComplaints(ManageComplaintsVO manageComplaintsVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(manageComplaintsVO);
	}

	@Override
	public List editComplaints(ManageComplaintsVO manageComplaintsVO) {
		// TODO Auto-generated method stub
		return null;
	}

}
