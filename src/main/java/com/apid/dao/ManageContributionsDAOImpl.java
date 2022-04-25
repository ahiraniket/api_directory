package com.apid.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apid.model.ManageContributionsVO;

@Repository
public class ManageContributionsDAOImpl implements ManageContributionsDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void insertContributions(ManageContributionsVO manageContributionsVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageContributionsVO);

	}

	@Override
	public List viewContributions() {
		Session session = this.sessionFactory.openSession();
		Query q= session.createQuery("from ManageContributionsVO");
		List viewContributionsList=q.list();
		return viewContributionsList;
	}

	
	@Override
	public List editContributions(ManageContributionsVO manageContributionsVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteContributions(ManageContributionsVO manageContributionsVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public List getContributionsByLoginId(int loginId) {
		Session session = this.sessionFactory.openSession();
		Query q= session.createQuery("from ManageContributionsVO where contributor_id="+loginId);
		List viewContributionsList=q.list();

		System.out.print("Size:"+viewContributionsList.size());
		return viewContributionsList;
	}

	@Override
	public List viewContributionList(int contributionId) {
		Session session = this.sessionFactory.openSession();
		Query q= session.createQuery("from ManageContributionsVO where contributionId="+contributionId);
		List viewContributionList=q.list();

		System.out.print("Size:"+viewContributionList.size());
		return viewContributionList;
	}

}
