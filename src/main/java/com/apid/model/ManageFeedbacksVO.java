package com.apid.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "ManageFeedbacks_table")
public class ManageFeedbacksVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "feedback_id")
	private int feedbackId;

	@Column(name = "feedback_description")
	private String feedbackDescription;
	
	@Column(name = "feedback_rating")
	private String feedbackRating;
	
	@ManyToOne
	private LoginVO loginVO;

	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public String getFeedbackDescription() {
		return feedbackDescription;
	}

	public void setFeedbackDescription(String feedbackDescription) {
		this.feedbackDescription = feedbackDescription;
	}

	public String getFeedbackRating() {
		return feedbackRating;
	}

	public void setFeedbackRating(String feedbackRating) {
		this.feedbackRating = feedbackRating;
	}
	
	
}
