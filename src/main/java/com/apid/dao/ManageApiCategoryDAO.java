package com.apid.dao;

import java.util.List;

import com.apid.model.ManageApiCategoryVO;

public interface ManageApiCategoryDAO {

	public void insertApiCategory(ManageApiCategoryVO manageApiCategoryVO);

	public List viewApiCategory();

	public List editApiCategory(ManageApiCategoryVO manageApiCategoryVO);

	public void deleteApiCategory(ManageApiCategoryVO manageApiCategoryVO);

}
