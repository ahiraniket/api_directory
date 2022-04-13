package com.apid.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManageComplaintsController {

	
	
	@GetMapping(value = "viewComplaints")
	public ModelAndView viewComplaints() {
		return null;
		
	}
	
}
