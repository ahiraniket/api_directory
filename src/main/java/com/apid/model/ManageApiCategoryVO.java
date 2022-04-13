package com.apid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ManageApiCategory_table")
public class ManageApiCategoryVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "api_category_id")
	private int apiCategoryId;

	@Column(name = "api_category_name")
	private String apiCategoryName;

	@Column(name = "api_category_description")
	private String apiCategoryDescription;

	public int getApiCategoryId() {
		return apiCategoryId;
	}

	public void setApiCategoryId(int apiCategoryId) {
		this.apiCategoryId = apiCategoryId;
	}

	public String getApiCategoryName() {
		return apiCategoryName;
	}

	public void setApiCategoryName(String apiCategoryName) {
		this.apiCategoryName = apiCategoryName;
	}

	public String getApiCategoryDescription() {
		return apiCategoryDescription;
	}

	public void setApiCategoryDescription(String apiCategoryDescription) {
		this.apiCategoryDescription = apiCategoryDescription;
	}

}
