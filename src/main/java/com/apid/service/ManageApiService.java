package com.apid.service;

import java.util.*;

import com.apid.model.ManageApiVO;

public interface ManageApiService {

	public void insertApi(ManageApiVO manageApiVO);
	
	public List viewApi();
	
	public List editApi(ManageApiVO manageApiVO);
	
	public void deleteApi(ManageApiVO manageApiVO);
	
}
