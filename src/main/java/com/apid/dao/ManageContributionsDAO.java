package com.apid.dao;

import java.util.List;

import com.apid.model.ManageContributionsVO;

public interface ManageContributionsDAO {

	public void insertContributions(ManageContributionsVO manageContributionsVO);

	public List viewContributions();

	public List editContributions(ManageContributionsVO manageContributionsVO);

	public void deleteContributions(ManageContributionsVO manageContributionsVO);

	public List getContributionsByLoginId(int loginId);

	public List viewContributionList(int contributionId);

	


}
