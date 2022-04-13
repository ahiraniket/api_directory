package com.apid.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.ManageApiCategoryVO;

@Repository
public class ManageApiCategoryDAOImpl implements ManageApiCategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insertApiCategory(ManageApiCategoryVO manageApiCategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageApiCategoryVO);

	}

	@Override
	public List viewApiCategory() {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ManageApiCategoryVO");
		List viewApiCategoryList = q.list();
		return viewApiCategoryList;
	}

	@Override
	public List editApiCategory(ManageApiCategoryVO manageApiCategoryVO) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery(
				"from ManageApiCategoryVO where apiCategoryId='" + manageApiCategoryVO.getApiCategoryId() + "' ");
		List editApiCategoryList = q.list();
		return editApiCategoryList;

	}

	@Override
	public void deleteApiCategory(ManageApiCategoryVO manageApiCategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(manageApiCategoryVO);
	}

}
