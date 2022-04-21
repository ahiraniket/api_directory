package com.apid.service;

import java.util.List;

import com.apid.model.ManageCategoryVO;

public interface ManageCategoryService {

	public void insertCategory(ManageCategoryVO manageApiCategoryVO);
	
	public List viewCategory();
	
	public List editCategory(ManageCategoryVO manageApiCategoryVO);
	
	public void deleteCategory(ManageCategoryVO manageApiCategoryVO);

	public List viewApiCategory(int categoryId);
}
