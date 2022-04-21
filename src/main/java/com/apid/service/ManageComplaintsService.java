package com.apid.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import com.apid.model.ManageComplaintsVO;


public interface ManageComplaintsService {

	public void insertComplaints(ManageComplaintsVO manageComplaintsVO);
	
	public List viewComplaints();

	public List editComplaints(ManageComplaintsVO manageComplaintsVO);

	public void deleteComplaints(ManageComplaintsVO ManageComplaintsVO);
	
	public List getComplainByLoginId(int loginId);
}
