package com.apid.dao;

import java.util.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.ManageApiVO;

@Repository
public class ManageApiDAOImpl implements ManageApiDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insertApi(ManageApiVO manageApiVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageApiVO);
	}

	@Override
	public List viewApi() {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ManageApiVO WHERE api_status=true");
		List viewApiList = q.list();
		return viewApiList;
	}

	@Override
	public List editApi(ManageApiVO manageApiVO) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ManageApiVO where apiId='" + manageApiVO.getApiId() + "' ");
		List editApiList = q.list();
		return editApiList;

	}

	@Override
	public void deleteApi(ManageApiVO manageApiVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(manageApiVO);
	}

	@Override
	public List apiResponseList(ManageApiVO manageApiVO) {
		Session session = this.sessionFactory.openSession();
		System.out.println("FROM ManageApiVO WHERE category_id = '"
				+ manageApiVO.getManageCategoryVO().getCategoryId() + "' AND api_name = '"
				+ manageApiVO.getApiName() + "' ");
		Query q = session.createQuery("FROM ManageApiVO WHERE category_id = '"
				+ manageApiVO.getManageCategoryVO().getCategoryId() + "' AND api_name = '"
				+ manageApiVO.getApiName() + "' ");
		List apiResponseList = q.list();
	
		System.out.println(apiResponseList);
		return apiResponseList;
	}

}
