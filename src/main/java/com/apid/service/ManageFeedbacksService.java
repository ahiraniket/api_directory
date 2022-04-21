package com.apid.service;

import java.util.List;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageFeedbacksVO;

public interface ManageFeedbacksService {

	public List viewFeedbacks();
		
	public void insertFeedback(ManageFeedbacksVO manageFeedbacksVO);

}
