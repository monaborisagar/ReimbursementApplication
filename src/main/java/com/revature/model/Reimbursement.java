package com.revature.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

//import com.revature.models.Employee;

public class Reimbursement {
	
	private int reimbId;
	//private int employeeId;
	private BigDecimal reimbAmount;
	private Timestamp reimbSubmitted;
	private Timestamp reimbResolved;
	private String reimbDescription;
	private String reimbReciptURL;
	private int reimbAuthor;
	private int reimbResolver;
	private int reimbStatusId;
	private int reimbTypeId;
	private User user;
	
	public Reimbursement() {
		super();
	}
	
	public Reimbursement(BigDecimal reimbAmount, Timestamp reimbSubmitted, Timestamp reimbResolved,
			String reimbDescription, String reimbReciptURL, int reimbAuthor, int reimbResolver, int reimbStatusId,
			int reimbTypeId) {
		super();
		this.reimbAmount = reimbAmount;
		this.reimbSubmitted = reimbSubmitted;
		this.reimbResolved = reimbResolved;
		this.reimbDescription = reimbDescription;
		this.reimbReciptURL = reimbReciptURL;
		this.reimbAuthor = reimbAuthor;
		this.reimbResolver = reimbResolver;
		this.reimbStatusId = reimbStatusId;
		this.reimbTypeId = reimbTypeId;
	}

	public Reimbursement(int reimbId, BigDecimal reimbAmount, Timestamp reimbSubmitted, Timestamp reimbResolved,
			String reimbDescription, String reimbReciptURL, int reimbAuthor, int reimbResolver, int reimbStatusId,
			int reimbTypeId, User user) {
		super();
		this.reimbId = reimbId;
		this.reimbAmount = reimbAmount;
		this.reimbSubmitted = reimbSubmitted;
		this.reimbResolved = reimbResolved;
		this.reimbDescription = reimbDescription;
		this.reimbReciptURL = reimbReciptURL;
		this.reimbAuthor = reimbAuthor;
		this.reimbResolver = reimbResolver;
		this.reimbStatusId = reimbStatusId;
		this.reimbTypeId = reimbTypeId;
		this.user = user;
	}


	public int getReimbId() {
		return reimbId;
	}
	public void setReimbId(int reimbId) {
		this.reimbId = reimbId;
	}
	public BigDecimal getReimbAmount() {
		return reimbAmount;
	}
	public void setReimbAmount(BigDecimal reimbAmount) {
		this.reimbAmount = reimbAmount;
	}
	public Timestamp getReimbSubmitted() {
		return reimbSubmitted;
	}
	public void setReimbSubmitted(Timestamp reimbSubmitted) {
		this.reimbSubmitted = reimbSubmitted;
	}
	public Timestamp getReimbResolved() {
		return reimbResolved;
	}
	public void setReimbResolved(Timestamp reimbResolved) {
		this.reimbResolved = reimbResolved;
	}
	public String getReimbDescription() {
		return reimbDescription;
	}
	public void setReimbDescription(String reimbDescription) {
		this.reimbDescription = reimbDescription;
	}
	public String getReimbReciptURL() {
		return reimbReciptURL;
	}
	public void setReimbReciptURL(String reimbReciptURL) {
		this.reimbReciptURL = reimbReciptURL;
	}
	public int getReimbAuthor() {
		return reimbAuthor;
	}
	public void setReimbAuthor(int reimbAuthor) {
		this.reimbAuthor = reimbAuthor;
	}
	public int getReimbResolver() {
		return reimbResolver;
	}
	public void setReimbResolver(int reimbResolver) {
		this.reimbResolver = reimbResolver;
	}
	public int getReimbStatusId() {
		return reimbStatusId;
	}
	public void setReimbStatusId(int reimbStatusId) {
		this.reimbStatusId = reimbStatusId;
	}
	public int getReimbTypeId() {
		return reimbTypeId;
	}
	public void setReimbTypeId(int reimbTypeId) {
		this.reimbTypeId = reimbTypeId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Reimbursement [reimbId=" + reimbId + ", reimbAmount=" + reimbAmount + ", reimbSubmitted="
				+ reimbSubmitted + ", reimbResolved=" + reimbResolved + ", reimbDescription=" + reimbDescription
				+ ", reimbReciptURL=" + reimbReciptURL + ", reimbAuthor=" + reimbAuthor + ", reimbResolver="
				+ reimbResolver + ", reimbStatusId=" + reimbStatusId + ", reimbTypeId=" + reimbTypeId + ", user=" + user
				+ "]";
	}
	
	
	
	

}
