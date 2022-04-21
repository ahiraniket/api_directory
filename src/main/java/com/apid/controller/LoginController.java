package com.apid.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.apid.service.IndexService;
import com.apid.service.ManageCategoryService;

@Controller
public class LoginController {

	@Autowired
	IndexService indexService;
	@Autowired
	ManageCategoryService manageCategoryService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex() {
		List totalApiList = this.indexService.totalApiList();
		List totalCategoryList = this.indexService.totalCategoryList();
		List totalUsersList = this.indexService.totalUsers();
		List totalFeedbacksList = this.indexService.totalFeedbacks();
		return new ModelAndView("admin/index")
				.addObject("totalApiList", totalApiList.get(0))
				.addObject("totalCategoryList", totalCategoryList.get(0))
				.addObject("totalUsersList", totalUsersList.get(0))
				.addObject("totalFeedbacksList", totalFeedbacksList.get(0));
	}

	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {

		List viewCategoryList = this.manageCategoryService.viewCategory();
		return new ModelAndView("user/index").addObject("viewCategoryList", viewCategoryList);
	}

	@RequestMapping(value = "logout", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUserDetails(ModelMap model, HttpServletResponse response, HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus", "success");
			request.getSession().setAttribute("statusText", "Logout Successfully!");
		}
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}

}
