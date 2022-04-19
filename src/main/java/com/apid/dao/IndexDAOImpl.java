package com.apid.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDAOImpl implements IndexDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List totalApiList() {
		
		Session session = this.sessionFactory.openSession();
		Query q= session.createQuery("SELECT COUNT(*) FROM ManageApiVO WHERE api_status=false");
		List totalApiList=q.list();
		return totalApiList;
	}

	@Override
	public List totalCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List totalUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List totalFeedbacks() {
		// TODO Auto-generated method stub
		return null;
	}

}
