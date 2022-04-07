package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.ManageApiDAO;
import com.apid.model.ManageApiVO;

@Service
@Transactional
public class ManageApiServiceImpl implements ManageApiService {

	@Autowired
	ManageApiDAO manageApiDAO;
	
	@Override
	public void insertApi(ManageApiVO manageApiVO) {
		manageApiDAO.insertApi(manageApiVO);
		
	}

	@Override
	public List viewApi() {
		List viewApiList=manageApiDAO.viewApi();
		return viewApiList;
	}

	@Override
	public List editApi(ManageApiVO manageApiVO) {
		List editApiList=manageApiDAO.editApi(manageApiVO);
		return editApiList;
		
	}

	@Override
	public void deleteApi(ManageApiVO manageApiVO) {
		manageApiDAO.deleteApi(manageApiVO); 
	}

	
	
}
