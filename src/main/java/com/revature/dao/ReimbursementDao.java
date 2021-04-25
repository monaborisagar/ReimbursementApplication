package com.revature.dao;

import java.util.List;
import java.util.TreeMap;

import com.revature.model.ReimbJoint;
import com.revature.model.Reimbursement;

public interface ReimbursementDao {

	TreeMap<Integer, String> getReimbursementType();
	int createReimbursement(Reimbursement reimb);
	List<Reimbursement> getReimbursementPendingForUser(int userid, int statusid);
	List<ReimbJoint> getReimbursementDifferentStatusUserwise(int userid, int statusid);
	List<ReimbJoint> getReimbursementAllUsers();
	int deleteUserReimbRecord(int reimbid);
	int updateReimbStatuswithReimid(String status, int reimbid);
	int getMaxReimbId();

}
