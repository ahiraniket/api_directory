package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.ManageCategoryDAO;
import com.apid.model.ManageCategoryVO;

@Service
@Transactional
public class ManageCategoryServiceImpl implements ManageCategoryService {

	@Autowired
	ManageCategoryDAO manageCategoryDAO;

	@Override
	public void insertCategory(ManageCategoryVO manageCategoryVO) {
		manageCategoryDAO.insertCategory(manageCategoryVO);

	}

	@Override
	public List viewCategory() {
		List viewCategoryList = manageCategoryDAO.viewCategory();
		return viewCategoryList;
	}

	@Override
	public List editCategory(ManageCategoryVO manageCategoryVO) {
		List editCategoryList = manageCategoryDAO.editCategory(manageCategoryVO);
		return editCategoryList;

	}

	@Override
	public void deleteCategory(ManageCategoryVO manageCategoryVO) {
		manageCategoryDAO.deleteCategory(manageCategoryVO);
	}
}
