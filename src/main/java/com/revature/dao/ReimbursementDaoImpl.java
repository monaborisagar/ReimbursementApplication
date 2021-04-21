package com.revature.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.TreeMap;

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
	
}
