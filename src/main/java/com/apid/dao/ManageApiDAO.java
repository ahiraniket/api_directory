package com.apid.dao;

import java.util.*;

import com.apid.model.ManageApiVO;

public interface ManageApiDAO {

	public void insertApi(ManageApiVO manageApiVO);
	
	public List viewApi();
	
	public List editApi(ManageApiVO manageApiVO);
	 
	public void deleteApi(ManageApiVO manageApiVO);
	
	public List apiResponseList(ManageApiVO manageApiVO);

	
}
