package com.apid.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController {

	@GetMapping(value = "addCategory.html")
	public ModelAndView Load() {
		return new ModelAndView("admin/addCategory");
	}
	
}
