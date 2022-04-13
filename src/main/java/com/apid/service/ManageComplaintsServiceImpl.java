package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.ManageComplaintsDAO;
import com.apid.model.ManageComplaintsVO;

@Service
@Transactional
public class ManageComplaintsServiceImpl implements ManageComplaintsService{

	@Autowired
	ManageComplaintsDAO manageComplaintsDAO;
	
	@Override
	public List viewComplaints() {
		List viewComplaintsList= manageComplaintsDAO.viewComplaints();
		return viewComplaintsList;
	}

	@Override
	public List editComplaints(ManageComplaintsVO manageComplaintsVO) {
		List editComplaintsList= manageComplaintsDAO.editComplaints(manageComplaintsVO);
		return editComplaintsList;
	}

	@Override
	public void deleteComplaints(ManageComplaintsVO manageComplaintsVO) {
		manageComplaintsDAO.deleteComplaints(manageComplaintsVO);
		
	}

}
