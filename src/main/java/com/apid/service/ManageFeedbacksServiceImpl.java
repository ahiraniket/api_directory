package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.ManageApiDAO;
import com.apid.dao.ManageFeedbacksDAO;
import com.apid.model.ManageApiVO;
import com.apid.model.ManageFeedbacksVO;

@Service
@Transactional
public class ManageFeedbacksServiceImpl implements ManageFeedbacksService  {

	@Autowired
	ManageFeedbacksDAO manageFeedbacksDAO;
	
	@Override
	public List viewFeedbacks() {
		List viewFeedbacksList=manageFeedbacksDAO.viewFeedbacks();
		return viewFeedbacksList;
	}
	
	
}
