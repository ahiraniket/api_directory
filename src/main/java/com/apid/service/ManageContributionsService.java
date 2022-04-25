package com.apid.service;

import java.util.List;

import com.apid.model.ManageContributionsVO;

public interface ManageContributionsService {

	
	public void insertContributions(ManageContributionsVO manageContributionsVO);
	
	public List viewContributions();
	
	public List editContributions(ManageContributionsVO manageContributionsVO);

	public void deleteContributions(ManageContributionsVO manageContributionsVO);
	
	public void acceptContributions(ManageContributionsVO manageContributionsVO);
	
	public List getContributionsByLoginId(int loginId);

	public List viewContributionList(int contributionId);
	
}
