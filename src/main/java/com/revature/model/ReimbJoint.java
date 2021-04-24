package com.revature.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class ReimbJoint {

	private int reimbId;
	private String username;
	private BigDecimal reimbAmount;
	private Timestamp reimbSubmitted;
	private Timestamp reimbResolved;
	private String reimbDescription;
	private String reimbrecipturl;
	private int reimbAuthor;
	private String typeName;
	private String statusName;
	
	
	
	public ReimbJoint() {
		super();
	}



	public ReimbJoint(BigDecimal reimbAmount, Timestamp reimbSubmitted, Timestamp reimbResolved,
			String reimbDescription, String reimbrecipturl, int reimbAuthor, String typeName, String statusName,String username) {
		super();
		this.reimbAmount = reimbAmount;
		this.reimbSubmitted = reimbSubmitted;
		this.reimbResolved = reimbResolved;
		this.reimbDescription = reimbDescription;
		this.reimbrecipturl = reimbrecipturl;
		this.reimbAuthor = reimbAuthor;
		this.typeName = typeName;
		this.statusName = statusName;
		this.username=username;
	}



	//reimbid,reimbamount ,reimbsubmitted ,reimbresolved ,reimbdescription,typename,statusname
	public ReimbJoint(int reimbId, BigDecimal reimbAmount, Timestamp reimbSubmitted, Timestamp reimbResolved,
			String reimbDescription, String reimbrecipturl, int reimbAuthor, String typeName, String statusName,String username) {
		super();
		this.reimbId = reimbId;
		this.reimbAmount = reimbAmount;
		this.reimbSubmitted = reimbSubmitted;
		this.reimbResolved = reimbResolved;
		this.reimbDescription = reimbDescription;
		this.reimbrecipturl = reimbrecipturl;
		this.reimbAuthor = reimbAuthor;
		this.typeName = typeName;
		this.statusName = statusName;
		this.username=username;
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



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
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



	public String getReimbrecipturl() {
		return reimbrecipturl;
	}



	public void setReimbrecipturl(String reimbrecipturl) {
		this.reimbrecipturl = reimbrecipturl;
	}



	public int getReimbAuthor() {
		return reimbAuthor;
	}



	public void setReimbAuthor(int reimbAuthor) {
		this.reimbAuthor = reimbAuthor;
	}



	public String getTypeName() {
		return typeName;
	}



	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}



	public String getStatusName() {
		return statusName;
	}



	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}



	@Override
	public String toString() {
		return "ReimbJoint [reimbId=" + reimbId + ", username=" + username + ", reimbAmount=" + reimbAmount
				+ ", reimbSubmitted=" + reimbSubmitted + ", reimbResolved=" + reimbResolved + ", reimbDescription="
				+ reimbDescription + ", reimbrecipturl=" + reimbrecipturl + ", reimbAuthor=" + reimbAuthor
				+ ", typeName=" + typeName + ", statusName=" + statusName + "]";
	}



	
	
	
}
