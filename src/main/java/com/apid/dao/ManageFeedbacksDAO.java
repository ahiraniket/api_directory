package com.apid.dao;

import java.util.List;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageFeedbacksVO;

public interface ManageFeedbacksDAO {
	
	public List viewFeedbacks();

	public void insertFeedback(ManageFeedbacksVO manageFeedbacksVO);
	

}
