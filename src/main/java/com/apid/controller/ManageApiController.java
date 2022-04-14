package com.apid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.ManageApiVO;
import com.apid.service.ManageCategoryService;
import com.apid.service.ManageApiService;

@Controller
public class ManageApiController {

	@Autowired
	ManageApiService manageApiService;

	@Autowired
	ManageCategoryService manageApiCategoryService;

	@GetMapping(value = "addApi")
	public ModelAndView addApi() {
		List viewCategoryList = manageApiCategoryService.viewCategory();
		return new ModelAndView("admin/addApi", "manageApiVO", new ManageApiVO()).addObject("formName", "Add a new API")
				.addObject("viewCategoryList", viewCategoryList);
	}

	@GetMapping(value = "insertApi")
	public ModelAndView insertApi(@ModelAttribute ManageApiVO manageApiVO) {
		manageApiService.insertApi(manageApiVO);
		return new ModelAndView("redirect:addApi");
	}

	@GetMapping(value = "viewApi")
	public ModelAndView viewApi() {
		List viewApiList = manageApiService.viewApi();
		return new ModelAndView("admin/viewApi", "viewApiList", viewApiList);
	}

	@GetMapping(value = "deleteApi")
	public ModelAndView deleteApi(@RequestParam("apiId") int apiId) {
		ManageApiVO manageApiVO = new ManageApiVO();
		manageApiVO.setApiId(apiId);
		manageApiService.deleteApi(manageApiVO);
		return new ModelAndView("redirect:viewApi");
	}

	@GetMapping(value = "editApi")
	public ModelAndView editApi(@RequestParam("apiId") int apiId) {
		
		List viewCategoryList = manageApiCategoryService.viewCategory();
		
		ManageApiVO manageApiVO = new ManageApiVO();
		manageApiVO.setApiId(apiId);
		List editApiList = manageApiService.editApi(manageApiVO);
		manageApiVO = (ManageApiVO) editApiList.get(0);
		return new ModelAndView("admin/addApi", "manageApiVO", manageApiVO).addObject("formName", "Edit Api")
				.addObject("viewCategoryList", viewCategoryList);
	}

}
