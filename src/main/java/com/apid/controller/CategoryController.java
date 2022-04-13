package com.apid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.ManageApiCategoryVO;
import com.apid.service.ManageApiCategoryService;

@Controller
public class CategoryController {

	@Autowired
	ManageApiCategoryService manageApiCategoryService;

	@GetMapping(value = "addCategory")
	public ModelAndView addApi() {
		return new ModelAndView("admin/addCategory", "manageApiCategoryVO", new ManageApiCategoryVO())
				.addObject("formName", "Add new API Category");
	}

	@GetMapping(value = "insertCategory")
	public ModelAndView insertApi(@ModelAttribute ManageApiCategoryVO manageApiCategoryVO) {
		manageApiCategoryService.insertApiCategory(manageApiCategoryVO);
		return new ModelAndView("redirect:addCategory");
	}

	@GetMapping(value = "viewCategory")
	public ModelAndView viewApi() {
		List viewApiCategoryList = manageApiCategoryService.viewApiCategory();
		return new ModelAndView("admin/viewCategory", "viewApiCategoryList", viewApiCategoryList);
	}

	@GetMapping(value = "deleteCategory")
	public ModelAndView deleteApi(@RequestParam("apiCategoryId") int apiCategoryId) {
		ManageApiCategoryVO manageApiCategoryVO = new ManageApiCategoryVO();
		manageApiCategoryVO.setApiCategoryId(apiCategoryId);
		manageApiCategoryService.deleteApiCategory(manageApiCategoryVO);
		return new ModelAndView("redirect:viewCategory");
	}

	@GetMapping(value = "editCategory")
	public ModelAndView editApi(@RequestParam("apiCategoryId") int apiCategoryId) {
		ManageApiCategoryVO manageApiCategoryVO = new ManageApiCategoryVO();
		manageApiCategoryVO.setApiCategoryId(apiCategoryId);
		List editApiCategoryList = manageApiCategoryService.editApiCategory(manageApiCategoryVO);
		manageApiCategoryVO = (ManageApiCategoryVO) editApiCategoryList.get(0);
		return new ModelAndView("admin/addCategory", "manageApiCategoryVO", manageApiCategoryVO)
				.addObject("formName", "Edit Api Category");
	}
}
