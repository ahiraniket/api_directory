package com.apid.dao;

import java.util.List;

import com.apid.model.ManageApiVO;
import com.apid.model.ManageComplaintsVO;

public interface ManageComplaintsDAO {

	public List viewComplaints();

	public List editComplaints(ManageComplaintsVO manageComplaintsVO);

	public void deleteComplaints(ManageComplaintsVO manageComplaintsVO);

}
