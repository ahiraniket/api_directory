package com.apid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ManageComplaints_table")
public class ManageComplaintsVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "complaint_id")
	private int complaintId;

	@Column(name = "complaint_user")
	private String complaintUser;

	@Column(name = "complaint_subject")
	private String complaintSubject;
	
	@Column(name = "complaint_date")
	private String complaintDate;

	@Column(name = "complaint_description")
	private String complaintDescription;
	
	@Column(name = "complaint_reply")
	private String complaintReply;

	@Column(name = "complaint_status")
	private boolean complaintStatus;

	public int getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}

	public String getComplaintUser() {
		return complaintUser;
	}

	public void setComplaintUser(String complaintUser) {
		this.complaintUser = complaintUser;
	}

	public String getComplaintSubject() {
		return complaintSubject;
	}

	public void setComplaintSubject(String complaintSubject) {
		this.complaintSubject = complaintSubject;
	}

	public String getComplaintDate() {
		return complaintDate;
	}

	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public String getComplaintReply() {
		return complaintReply;
	}

	public void setComplaintReply(String complaintReply) {
		this.complaintReply = complaintReply;
	}

	public boolean isComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(boolean complaintStatus) {
		this.complaintStatus = complaintStatus;
	}


}
