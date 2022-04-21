package com.apid.dao;

import java.util.List;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageComplaintsVO;

public interface ManageComplaintsDAO {

	public void insertComplaints(ManageComplaintsVO manageComplaintsVO);
	
	public List viewComplaints();

	public List editComplaints(ManageComplaintsVO manageComplaintsVO);

	public void deleteComplaints(ManageComplaintsVO manageComplaintsVO);
	
	public List getComplainByLoginId(int loginId);


}
