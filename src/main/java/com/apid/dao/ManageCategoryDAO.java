package com.apid.dao;

import java.util.List;

import com.apid.model.ManageCategoryVO;

public interface ManageCategoryDAO {

	public void insertCategory(ManageCategoryVO manageCategoryVO);

	public List viewCategory();

	public List editCategory(ManageCategoryVO manageCategoryVO);

	public void deleteCategory(ManageCategoryVO manageCategoryVO);

	public List viewApiCategory(int categoryId);

}
