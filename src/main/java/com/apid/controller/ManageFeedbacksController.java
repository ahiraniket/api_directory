package com.apid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageFeedbacksVO;
import com.apid.service.ManageCategoryService;
import com.apid.service.ManageFeedbacksService;

@Controller
public class ManageFeedbacksController {

	@Autowired
	ManageFeedbacksService manageFeedbacksService;

	@GetMapping(value = "admin/viewFeedbacks")
	public ModelAndView viewFeedbacks() {
		List viewFeedbacksList = manageFeedbacksService.viewFeedbacks();
		return new ModelAndView("admin/viewFeedbacks", "viewFeedbacksList", viewFeedbacksList);
	}
	
	@GetMapping(value = "admin/deleteFeedbacks")
	public ModelAndView deleteFeedbacks(@RequestParam("feedbackId") int feedbackId) {
		ManageFeedbacksVO manageFeedbacksVO = new ManageFeedbacksVO();
		manageFeedbacksVO.setFeedbackId(feedbackId);
		manageFeedbacksService.deleteFeedback(manageFeedbacksVO);
		return new ModelAndView("redirect:viewFeedbacks");
	}
}
