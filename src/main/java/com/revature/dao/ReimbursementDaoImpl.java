package com.revature.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.TreeMap;

import com.revature.model.Reimbursement;
import com.revature.util.ConnectionUtil;


public class ReimbursementDaoImpl implements ReimbursementDao {

	@Override
	public TreeMap<Integer, String> getReimbursementType() {
		TreeMap<Integer, String> reimbType = new TreeMap<Integer, String>();
		String sql = "SELECT * FROM reimbursement_type;";// only users
		try (Connection con = ConnectionUtil.getConnection();
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery(sql);) {
			while (rs.next()) {
				int typeid = rs.getInt("typeid");
				String name  = rs.getString("typename");
				
				reimbType.put(typeid, name);
			}
			System.out.println(reimbType);
		} catch (SQLException e) {
			System.out.println("gbgfb");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return reimbType;
		
		
	}
	
	
	@Override
	public int createReimbursement(Reimbursement reimb) {
		int reimbSubmitted = 0;
		String sql = "\r\n"
				+ "insert into \r\n"
				+ "reimbursement(reimbamount,reimbsubmitted,reimbresolved ,reimbdescription,reimbrecipturl,reimbauthor,reimbresolver,statusid,typeid)\r\n"
				+ "values(?,?,?,?,?,?,?,?,?);";
		try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.setBigDecimal(1, reimb.getReimbAmount());
			ps.setTimestamp(2, reimb.getReimbSubmitted());
			ps.setTimestamp(3, reimb.getReimbResolved());
			ps.setString(4, reimb.getReimbDescription());
			ps.setString(5, reimb.getReimbReciptURL());
			ps.setInt(6, reimb.getReimbAuthor());
			ps.setInt(7, reimb.getReimbResolver());
			ps.setInt(8, reimb.getReimbStatusId());
			ps.setInt(9, reimb.getReimbTypeId());
			
			reimbSubmitted = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reimbSubmitted;
	}
}
