package com.revature.dao;

import java.util.TreeMap;

import com.revature.model.Reimbursement;

public interface ReimbursementDao {

	TreeMap<Integer, String> getReimbursementType();
	int createReimbursement(Reimbursement reimb);

}
