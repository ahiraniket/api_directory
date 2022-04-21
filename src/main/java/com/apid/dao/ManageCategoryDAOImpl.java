package com.apid.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.ManageCategoryVO;

@Repository
public class ManageCategoryDAOImpl implements ManageCategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insertCategory(ManageCategoryVO manageCategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageCategoryVO);

	}

	@Override
	public List viewCategory() {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ManageCategoryVO WHERE category_status=true");
		List viewCategoryList = q.list();
		return viewCategoryList;
	}

	@Override
	public List editCategory(ManageCategoryVO manageCategoryVO) {
		Session session = this.sessionFactory.openSession();
		Query q = session
				.createQuery("from ManageCategoryVO where categoryId='" + manageCategoryVO.getCategoryId() + "' ");
		List editApiCategoryList = q.list();
		return editApiCategoryList;

	}

	@Override
	public void deleteCategory(ManageCategoryVO manageCategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(manageCategoryVO);
	}

	@Override
	public List viewApiCategory(int categoryId) { 
		Session session = this.sessionFactory.openSession();
		Query q = session
				.createQuery("FROM ManageApiVO WHERE category_id = '"+categoryId+"' GROUP BY api_name");
		List viewApiCategoryList=q.list();
		return viewApiCategoryList;
	}

}
