package com.apid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apid.dao.ManageApiDAO;
import com.apid.dao.ManageContributionsDAO;
import com.apid.model.ManageApiVO;
import com.apid.model.ManageContributionsVO;

@Service
@Transactional
public class ManageContributionsServiceImpl implements ManageContributionsService {

	@Autowired
	ManageContributionsDAO manageContributionsDAO;
	@Autowired
	ManageApiDAO manageApiDAO;

	@Override
	public void insertContributions(ManageContributionsVO manageContributionsVO) {
		this.manageContributionsDAO.insertContributions(manageContributionsVO);

	}

	@Override
	public List viewContributions() {
		List viewContributionsList = manageContributionsDAO.viewContributions();
		return viewContributionsList;
	}

	@Override
	public List editContributions(ManageContributionsVO manageContributionsVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteContributions(ManageContributionsVO manageContributionsVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public List getContributionsByLoginId(int loginId) {
		return manageContributionsDAO.getContributionsByLoginId(loginId);

	}

	@Override
	public void acceptContributions(ManageContributionsVO manageContributionsVO) {
		ManageApiVO manageApiVO = new ManageApiVO();
		manageApiVO.setApiDescription(manageContributionsVO.getApiDescription());
		manageApiVO.setApiName(manageContributionsVO.getApiName());
		manageApiVO.setApiEndpoint(manageContributionsVO.getApiEndpoint());
		manageApiVO.setApiRequestMethodType(manageContributionsVO.getApiRequestMethodType());
		manageApiVO.setApiResponseType(manageContributionsVO.getApiResponseType());
		manageApiVO.setApiSampleRequest(manageContributionsVO.getApiSampleRequest());
		manageApiVO.setApiSampleResponse(manageContributionsVO.getApiSampleResponse());
		manageApiVO.setApiType(manageContributionsVO.getApiType());
		manageApiVO.setManageCategoryVO(manageContributionsVO.getManageCategoryVO());
		manageApiDAO.insertApi(manageApiVO);
	}

	@Override
	public List viewContributionList(int contributionId) {
		List viewContributionsList = manageContributionsDAO.viewContributionList(contributionId);
		return viewContributionsList;
	}

}
