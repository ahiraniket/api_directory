package com.apid.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.LoginVO;
import com.apid.model.ManageApiVO;
import com.apid.model.ManageContributionsVO;
import com.apid.service.LoginService;
import com.apid.service.ManageCategoryService;
import com.apid.service.ManageContributionsService;
import com.apid.utils.Basemethods;

@Controller
public class ManageContributionsController {

	@Autowired
	ManageContributionsService manageContributionsService;

	@Autowired
	ManageCategoryService manageCategoryService;

	@Autowired
	Basemethods basemethods;

	@Autowired
	LoginService loginService;

	@GetMapping(value = "user/myApi")
	public ModelAndView contributions() {
		List viewCategoryList = manageCategoryService.viewCategory();
		LoginVO loginVO = loginService.getByUsername(basemethods.getUserName());
		List viewContributionsList = this.manageContributionsService.getContributionsByLoginId(loginVO.getId());
		return new ModelAndView("user/myApi", "manageContributionsVO", new ManageContributionsVO())
				.addObject("viewContributionsList", viewContributionsList)
				.addObject("viewCategoryList", viewCategoryList);
	}

	@GetMapping(value = "user/requestContribution")
	public ModelAndView requestContributions(@ModelAttribute ManageContributionsVO manageContributionsVO) {
		LoginVO loginVO = loginService.getByUsername(basemethods.getUserName());
		manageContributionsVO.setLoginVO(loginVO);
		manageContributionsService.insertContributions(manageContributionsVO);
		return new ModelAndView("redirect:myApi");
	}

	@GetMapping(value = "admin/editContributions")
	public ModelAndView addContributions(@RequestParam("contributionId") int contributionId) {

		return new ModelAndView("redirect:viewContributions");
	}

	@GetMapping(value = "admin/viewContributions")
	public ModelAndView viewContributions() {
		List viewContributionsList = manageContributionsService.viewContributions();
		return new ModelAndView("admin/viewContributions", "viewContributionsList", viewContributionsList);
	}

	@GetMapping(value = "admin/acceptContributions")
	public ModelAndView acceptContributions(@RequestParam("contributionId") int contributionId) {

		ManageContributionsVO manageContributionsVO = (ManageContributionsVO) manageContributionsService
				.viewContributionList(contributionId).get(0);

		manageContributionsVO.setContributionStatus("Accepted");
		
		manageContributionsService.acceptContributions(manageContributionsVO);
		manageContributionsService.insertContributions(manageContributionsVO);
		return new ModelAndView("redirect:viewContributions");
	}

	@GetMapping(value = "admin/deleteContributions")
	public ModelAndView deleteContributions(@RequestParam("contributionId") int contributionId) {
		ManageContributionsVO manageContributionsVO = new ManageContributionsVO();
		manageContributionsVO.setContributionId(contributionId);
		manageContributionsService.deleteContributions(manageContributionsVO);
		return new ModelAndView("redirect:viewContributions");
	}

}
