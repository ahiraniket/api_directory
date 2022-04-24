package com.apid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageCategoryVO;
import com.apid.service.ManageApiService;
import com.apid.service.ManageCategoryService;

@Controller
public class ManageCategoryController {

	@Autowired
	ManageCategoryService manageCategoryService;

	@Autowired
	ManageApiService manageApiService;

	@GetMapping(value = "admin/addCategory")
	public ModelAndView addApi() {
		return new ModelAndView("admin/addCategory", "manageCategoryVO", new ManageCategoryVO()).addObject("formName",
				"Add new API Category");
	}

	@GetMapping(value = "admin/insertCategory")
	public ModelAndView insertCategory(@ModelAttribute ManageCategoryVO manageCategoryVO) {
		manageCategoryVO.setCategoryStatus(true);
		manageCategoryService.insertCategory(manageCategoryVO);
		return new ModelAndView("redirect:addCategory");
	}

	@GetMapping(value = "admin/viewCategory")
	public ModelAndView viewCategory() {
		List viewCategoryList = manageCategoryService.viewCategory();
		return new ModelAndView("admin/viewCategory", "viewCategoryList", viewCategoryList);
	}

	@GetMapping(value = "user/viewCategories")
	public ModelAndView viewCategories() {
		List viewCategoryList = manageCategoryService.viewCategory();
		return new ModelAndView("user/viewCategories", "viewCategoryList", viewCategoryList);
	}

	@GetMapping(value = "user/viewApiCategory")
	public ModelAndView viewApiCategory(@RequestParam("categoryId") int categoryId, ManageCategoryVO categoryVO) {

		categoryVO.setCategoryId(categoryId);

		List<ManageCategoryVO> categoryList = this.manageCategoryService.editCategory(categoryVO);
		List<ManageApiVO> viewApiCategoryList = this.manageCategoryService.viewApiCategory(categoryId);

		ManageApiVO manageApiVO = new ManageApiVO();
		manageApiVO.setManageCategoryVO(categoryVO);
		manageApiVO.setApiName(viewApiCategoryList.get(0).getApiName());

		List apiResponseList = this.manageApiService.apiResponseList(manageApiVO);

		System.out.println(apiResponseList.size());

		return new ModelAndView("user/viewApiCategory", "viewApiCategoryList", viewApiCategoryList)
				.addObject("category", categoryList.get(0)).addObject("apiResponseList", apiResponseList);
	}

	@GetMapping(value = "admin/deleteCategory")
	public ModelAndView deleteCategory(@RequestParam("categoryId") int categoryId) {
		ManageCategoryVO manageCategoryVO = new ManageCategoryVO();
		manageCategoryVO.setCategoryId(categoryId);

		List editCategoryList = manageCategoryService.editCategory(manageCategoryVO);
		manageCategoryVO = (ManageCategoryVO) editCategoryList.get(0);

		manageCategoryVO.setCategoryStatus(false);

		manageCategoryService.insertCategory(manageCategoryVO);

		return new ModelAndView("redirect:viewCategory");
	}

	@GetMapping(value = "admin/editCategory")
	public ModelAndView editCategory(@RequestParam("categoryId") int categoryId) {
		ManageCategoryVO manageCategoryVO = new ManageCategoryVO();
		manageCategoryVO.setCategoryId(categoryId);
		List editCategoryList = manageCategoryService.editCategory(manageCategoryVO);
		manageCategoryVO = (ManageCategoryVO) editCategoryList.get(0);
		return new ModelAndView("admin/addCategory", "manageCategoryVO", manageCategoryVO).addObject("formName",
				"Edit Api Category");
	}
}
