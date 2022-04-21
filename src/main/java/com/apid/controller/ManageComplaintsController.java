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
import com.apid.model.ManageComplaintsVO;
import com.apid.service.LoginService;
import com.apid.service.ManageCategoryService;
import com.apid.service.ManageComplaintsService;
import com.apid.utils.Basemethods;

@Controller
public class ManageComplaintsController {

	@Autowired
	ManageComplaintsService manageComplaintsService;

	@Autowired
	ManageCategoryService manageCategoryService;
	
	@Autowired
	Basemethods basemethods;
	
	@Autowired
	LoginService loginService;
	
	@GetMapping(value = "user/addComplaints")
	public ModelAndView addComplaints() {
		LoginVO loginVO = loginService.getByUsername(basemethods.getUserName());
		List viewComplaintList = this.manageComplaintsService.getComplainByLoginId(loginVO.getId());
		return new ModelAndView("user/addComplaints", "manageComplaintVO", new ManageComplaintsVO())
				.addObject("formName", "Add Complaint").addObject("viewComplaintList", viewComplaintList);
	}
	
	@GetMapping(value = "admin/addComplaintReply")
	public ModelAndView addComplaintReply(@RequestParam("complaintId") int complaintId) {
		ManageComplaintsVO manageComplaintsVO= new ManageComplaintsVO();
		manageComplaintsVO.setComplaintId(complaintId);
		List complainList = manageComplaintsService.editComplaints(manageComplaintsVO);
		System.out.println(complainList.size());
		manageComplaintsVO=(ManageComplaintsVO) complainList.get(0);
		return new ModelAndView("admin/addComplaintReply","manageComplaintsVO",manageComplaintsVO);
	}


	@GetMapping(value = "user/insertComplaint")
	public ModelAndView insertComplaint(@ModelAttribute ManageComplaintsVO manageComplaintVO) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		manageComplaintVO.setComplaintDate(format.format(new Date()));
		
		LoginVO loginVO = loginService.getByUsername(basemethods.getUserName());
		manageComplaintVO.setLoginVO(loginVO);
		this.manageComplaintsService.insertComplaints(manageComplaintVO);
		return new ModelAndView("redirect:addComplaints");
	}
	

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

	
	@GetMapping(value = "admin/saveComplaintReply")
	public ModelAndView saveComplaintReply(@ModelAttribute ManageComplaintsVO manageComplaintVO) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		manageComplaintVO.setReplyDate(format.format(new Date()));
		
		manageComplaintVO.setComplaintStatus("Resolve");
		
		this.manageComplaintsService.insertComplaints(manageComplaintVO);
		
		return new ModelAndView("redirect:viewComplaints");	
	}
	
	
}
