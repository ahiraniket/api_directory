package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.ManageApiCategoryDAO;
import com.apid.model.ManageApiCategoryVO;

@Service
@Transactional
public class ManageApiCategoryServiceImpl implements ManageApiCategoryService {

	@Autowired
	ManageApiCategoryDAO manageApiCategoryDAO;

	@Override
	public void insertApiCategory(ManageApiCategoryVO manageApiCategoryVO) {
		manageApiCategoryDAO.insertApiCategory(manageApiCategoryVO);

	}

	@Override
	public List viewApiCategory() {
		List viewApiCategoryList = manageApiCategoryDAO.viewApiCategory();
		return viewApiCategoryList;
	}

	@Override
	public List editApiCategory(ManageApiCategoryVO manageApiCategoryVO) {
		List editApiCategoryList = manageApiCategoryDAO.editApiCategory(manageApiCategoryVO);
		return editApiCategoryList;

	}

	@Override
	public void deleteApiCategory(ManageApiCategoryVO manageApiCategoryVO) {
		manageApiCategoryDAO.deleteApiCategory(manageApiCategoryVO);
	}
}
