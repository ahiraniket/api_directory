package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.IndexDAO;
import com.apid.dao.ManageApiDAO;

@Service
@Transactional
public class IndexServiceImpl implements IndexService {
	@Autowired
	IndexDAO indexDAO;
	
	@Override
	public List totalApiList() {
		List totalList=this.indexDAO.totalApiList();
		return totalList;
	}

	@Override
	public List totalCategoryList() {
		List totalCategoryList=this.indexDAO.totalCategories();
		return totalCategoryList;
	}

	@Override
	public List totalUsers() {
		List totalUsersList=this.indexDAO.totalUsers();
		return totalUsersList;
	}

	@Override
	public List totalFeedbacks() {
		List totalFeedbacksList=this.indexDAO.totalFeedbacks();
		return totalFeedbacksList;
	}

}
