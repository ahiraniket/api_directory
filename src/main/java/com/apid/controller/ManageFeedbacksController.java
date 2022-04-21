package com.apid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.LoginVO;
import com.apid.model.ManageApiVO;
import com.apid.model.ManageComplaintsVO;
import com.apid.model.ManageFeedbacksVO;
import com.apid.service.LoginService;
import com.apid.service.ManageCategoryService;
import com.apid.service.ManageFeedbacksService;
import com.apid.utils.Basemethods;

@Controller
public class ManageFeedbacksController {

	@Autowired
	ManageFeedbacksService manageFeedbacksService;
	
	@Autowired
	Basemethods basemethods;
	
	@Autowired
	LoginService loginService;

	@GetMapping(value = "user/addFeedback")
	public ModelAndView addFeedback() {
		List viewFeedbacksList = this.manageFeedbacksService.viewFeedbacks();
		return new ModelAndView("user/addFeedback", "manageFeedbacksVO", new ManageFeedbacksVO())
				.addObject("viewFeedbacksList", viewFeedbacksList);
	}

	@GetMapping(value = "user/insertFeedback")
	public ModelAndView insertFeedback(@ModelAttribute ManageFeedbacksVO manageFeedbacksVO) {
		LoginVO loginVO = loginService.getByUsername(basemethods.getUserName());
		manageFeedbacksVO.setLoginVO(loginVO);
		
		manageFeedbacksService.insertFeedback(manageFeedbacksVO);
		return new ModelAndView("redirect:addFeedback");
	}

	@GetMapping(value = "admin/viewFeedbacks")
	public ModelAndView viewFeedbacks() {
		List viewFeedbacksList = manageFeedbacksService.viewFeedbacks();
		return new ModelAndView("admin/viewFeedbacks", "viewFeedbacksList", viewFeedbacksList);
	}

}
