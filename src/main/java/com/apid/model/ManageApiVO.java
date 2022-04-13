package com.apid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ManageApi_table")
public class ManageApiVO{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="api_id")
	private int apiId;
	
	@ManyToOne
	@JoinColumn(name="api_category_id")
	private ManageApiCategoryVO manageCategoryVO;
	
	@Column(name="api_name")
	private String apiName;
	
	@Column(name="api_type")
	private String apiType;
	
	@Column(name="api_request_method_type")
	private String apiRequestMethodType;
	
	@Column(name="api_response_type")
	private String apiResponseType;
	
	@Column(name="api_endpoint")
	private String apiEndpoint;
	
	@Column(name="api_description")
	private String apiDescription;
	
	@Column(name="api_sample_request")
	private String apiSampleRequest;
	
	@Column(name="api_sample_response")
	private String apiSampleResponse;
	
	@Column(name="api_status")
	private boolean apiStatus;

	public int getApiId() {
		return apiId;
	}

	public void setApiId(int apiId) {
		this.apiId = apiId;
	}

	public ManageApiCategoryVO getManageCategoryVO() {
		return manageCategoryVO;
	}

	public void setManageCategoryVO(ManageApiCategoryVO manageCategoryVO) {
		this.manageCategoryVO = manageCategoryVO;
	}

	public String getApiName() {
		return apiName;
	}

	public void setApiName(String apiName) {
		this.apiName = apiName;
	}

	public String getApiType() {
		return apiType;
	}

	public void setApiType(String apiType) {
		this.apiType = apiType;
	}

	public String getApiRequestMethodType() {
		return apiRequestMethodType;
	}

	public void setApiRequestMethodType(String apiRequestMethodType) {
		this.apiRequestMethodType = apiRequestMethodType;
	}

	public String getApiResponseType() {
		return apiResponseType;
	}

	public void setApiResponseType(String apiResponseType) {
		this.apiResponseType = apiResponseType;
	}

	public String getApiEndpoint() {
		return apiEndpoint;
	}

	public void setApiEndpoint(String apiEndpoint) {
		this.apiEndpoint = apiEndpoint;
	}

	public String getApiDescription() {
		return apiDescription;
	}

	public void setApiDescription(String apiDescription) {
		this.apiDescription = apiDescription;
	}

	public String getApiSampleRequest() {
		return apiSampleRequest;
	}

	public void setApiSampleRequest(String apiSampleRequest) {
		this.apiSampleRequest = apiSampleRequest;
	}

	public String getApiSampleResponse() {
		return apiSampleResponse;
	}

	public void setApiSampleResponse(String apiSampleResponse) {
		this.apiSampleResponse = apiSampleResponse;
	}

	public boolean isApiStatus() {
		return apiStatus;
	}

	public void setApiStatus(boolean apiStatus) {
		this.apiStatus = apiStatus;
	}
	
	
}
