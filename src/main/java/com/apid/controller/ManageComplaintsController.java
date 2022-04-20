package com.apid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apid.model.ManageComplaintsVO;
import com.apid.model.ManageFeedbacksVO;
import com.apid.service.ManageComplaintsService;
import com.apid.service.ManageFeedbacksService;

@Controller
public class ManageComplaintsController {

	@Autowired
	ManageComplaintsService manageComplaintsService;

	@GetMapping(value = "admin/viewComplaints")
	public ModelAndView viewComplaints() {
		List viewComplaintsList = manageComplaintsService.viewComplaints();
		return new ModelAndView("admin/viewComplaints", "viewComplaintsList", viewComplaintsList);
	}
	
	@GetMapping(value = "admin/deleteComplaint")
	public ModelAndView deleteComplaints(@RequestParam("complaintId") int complaintId) {
		ManageComplaintsVO manageComplaintsVO = new ManageComplaintsVO();
		manageComplaintsVO.setComplaintId(complaintId);
		manageComplaintsService.deleteComplaints(manageComplaintsVO);
		return new ModelAndView("redirect:viewComplaints");
	}
}
