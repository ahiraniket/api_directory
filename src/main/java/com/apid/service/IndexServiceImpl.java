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
