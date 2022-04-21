package com.apid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ManageComplaints_table")
public class ManageComplaintsVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "complaint_id")
	private int complaintId;

	@Column(name = "complaint_subject")
	private String complaintSubject;
	
	@Column(name = "complaint_date")
	private String complaintDate;

	@Column(name = "complaint_description")
	private String complaintDescription;
	
	@Column(name = "complaint_reply")
	private String complaintReply;
	
	@Column(name = "reply_date")
	private String replyDate;

	@Column(name = "complaint_status")
	private String complaintStatus="Pending";
	
	@ManyToOne
	private LoginVO loginVO;

	public int getComplaintId() {
		return complaintId;
	}

	public String getComplaintSubject() {
		return complaintSubject;
	}

	public String getComplaintDate() {
		return complaintDate;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public String getComplaintReply() {
		return complaintReply;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}

	public void setComplaintSubject(String complaintSubject) {
		this.complaintSubject = complaintSubject;
	}

	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public void setComplaintReply(String complaintReply) {
		this.complaintReply = complaintReply;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	


}
