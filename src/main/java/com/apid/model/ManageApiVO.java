package com.apid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ManageApi_table")
public class ManageApiVO{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="api_id")
	int apiId;
	
	@Column(name="api_category_name")
	String apiCategoryName;
	
	@Column(name="api_name")
	String apiName;
	
	@Column(name="api_type")
	String apiType;
	
	@Column(name="api_request_method_type")
	String apiRequestMethodType;
	
	@Column(name="api_response_type")
	String apiResponseType;
	
	@Column(name="api_endpoint")
	String apiEndpoint;
	
	@Column(name="api_description")
	String apiDescription;
	
	@Column(name="api_sample_request")
	String apiSampleRequest;
	
	@Column(name="api_sample_response")
	String apiSampleResponse;
	
	@Column(name="api_status")
	boolean apiStatus;

	public int getApiId() {
		return apiId;
	}

	public void setApiId(int apiId) {
		this.apiId = apiId;
	}

	public String getApiCategoryName() {
		return apiCategoryName;
	}

	public void setApiCategoryName(String apiCategoryName) {
		this.apiCategoryName = apiCategoryName;
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
