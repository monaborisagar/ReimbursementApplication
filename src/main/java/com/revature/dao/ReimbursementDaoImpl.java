package com.revature.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import com.revature.model.ReimbJoint;
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
	
	
	@Override
	public List<Reimbursement> getReimbursementPendingForUser(int userid,int statusid) {
		List<Reimbursement> eList = new ArrayList<Reimbursement>();
		String sql = "SELECT * FROM reimbursement where statusid =? and reimbauthor =? ;";// only users
		try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
		     
			ps.setInt(1, statusid);
			ps.setInt(2, userid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Reimbursement reimb = new Reimbursement();
				reimb.setReimbId(rs.getInt("reimbid"));
				reimb.setReimbAmount(rs.getBigDecimal("reimbamount"));
				reimb.setReimbSubmitted(rs.getTimestamp("reimbsubmitted"));
				reimb.setReimbResolved(rs.getTimestamp("reimbresolved"));
				reimb.setReimbDescription(rs.getString("reimbdescription"));
				reimb.setReimbReciptURL(rs.getString("reimbrecipturl"));
				reimb.setReimbAuthor(rs.getInt("reimbauthor"));
				reimb.setReimbResolver(rs.getInt("reimbresolver"));
				reimb.setReimbStatusId(rs.getInt("statusid"));
				reimb.setReimbTypeId(rs.getInt("typeid"));
				
				eList.add(reimb);
			}
		} catch (SQLException e) {
			System.out.println("gbgfb");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return eList;
		
		
	}
	
	@Override
	public List<ReimbJoint> getReimbursementDifferentStatusUserwise(int userid,int statusid) {
		List<ReimbJoint> eList = new ArrayList<>();
		String sql = "select reimbid,reimbamount ,reimbsubmitted ,reimbresolved ,reimbdescription,typename,statusname from reimbursement r inner join users u on r.reimbauthor =u.userid inner join reimbursement_type rt on rt.typeid =r.typeid  inner join reimbursement_status rs on rs.statusid =r.statusid where userid=? and r.statusid=?;";// only users
		try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.setInt(1, userid); 
			ps.setInt(2, statusid);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ReimbJoint rjoint = new ReimbJoint();
				rjoint.setReimbId(rs.getInt("reimbid"));
				rjoint.setReimbAmount(rs.getBigDecimal("reimbamount"));
				rjoint.setReimbSubmitted(rs.getTimestamp("reimbsubmitted"));
				System.out.println("fvfdvbfd"+rjoint.getReimbSubmitted());
				rjoint.setReimbResolved(rs.getTimestamp("reimbresolved"));
				rjoint.setReimbDescription(rs.getString("reimbdescription"));
				rjoint.setTypeName(rs.getString("typename"));
				rjoint.setStatusName(rs.getString("statusname"));
				
				
				
				eList.add(rjoint);
			}
		} catch (SQLException e) {
			System.out.println("gbgfb");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return eList;
		
		
	}
	
	@Override
	public Set<ReimbJoint> getReimbursementAllUsers() {
		//List<ReimbJoint> eList = new ArrayList<>();
		Set<ReimbJoint> eList = new TreeSet<>();
		String sql = "select u.username ,reimbid,reimbamount ,reimbsubmitted ,reimbrecipturl,reimbresolved ,reimbdescription,typename,statusname from reimbursement r inner join users u on r.reimbauthor =u.userid inner join reimbursement_type rt on rt.typeid =r.typeid  inner join reimbursement_status rs on rs.statusid =r.statusid  order by username ;";// only users
		try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
		     
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ReimbJoint rjoint = new ReimbJoint();
				
				rjoint.setReimbId(rs.getInt("reimbid"));
				rjoint.setUsername(rs.getString("username"));
				rjoint.setReimbAmount(rs.getBigDecimal("reimbamount"));
				rjoint.setReimbSubmitted(rs.getTimestamp("reimbsubmitted"));
				String filePath =rs.getString("reimbrecipturl");
			     filePath = filePath.substring(filePath.lastIndexOf("/") + 1);
			     System.out.println(filePath);
				rjoint.setReimbrecipturl(filePath);
				System.out.println("fvfdvbfd"+rjoint.getReimbSubmitted());
				rjoint.setReimbResolved(rs.getTimestamp("reimbresolved"));
				rjoint.setReimbDescription(rs.getString("reimbdescription"));
				rjoint.setTypeName(rs.getString("typename"));
				rjoint.setStatusName(rs.getString("statusname"));
			
				eList.add(rjoint);
			}
		} catch (SQLException e) {
			System.out.println("gbgfb");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return eList;
		
		
	}
	@Override
	public int updateReimbStatuswithReimid(String status,int reimbid) {
		int rowApproved = 0;
		String sql;
		System.out.println("status is."+status+".");
		if(status.equalsIgnoreCase("approve"))
		{
			  sql = "update reimbursement set statusid =2,reimbresolved =now() where reimbid =?;";
			  System.out.println("fdvfdv inside ");
		}
		  else if(status.equalsIgnoreCase("reject"))	
			 sql = "update reimbursement set statusid =3 ,reimbresolved =now() where reimbid =?;";
		else if(status.equalsIgnoreCase("delete"))
			sql = "DELETE FROM reimbursement where reimbid =?";
		else
		{
			System.out.println("no case matched");
			 return rowApproved;
			 
		}
		 
			try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
				ps.setInt(1, reimbid);
				rowApproved =ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return rowApproved;
	}


	@Override
	public int deleteUserReimbRecord(int reimbid) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int getMaxReimbId() {
		int maxReimbId=0;
		
		String sql = "select reimbid from reimbursement order by reimbid desc limit 1;";
		try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				 maxReimbId = rs.getInt("reimbid");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return maxReimbId;
	}
	
	
	

	/*
	 * @Override public int deleteUserReimbRecord(int reimbid) { int reimbidreturn =
	 * 0; String sql = "DELETE FROM reimbursement where reimbid =?;"; try
	 * (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps =
	 * con.prepareStatement(sql);) { ps.setInt(1, reimbid); reimbidreturn
	 * =ps.executeUpdate(); } catch (SQLException e) {
	 * 
	 * e.printStackTrace(); } catch (Exception e) {
	 * 
	 * e.printStackTrace(); } return reimbidreturn; }
	 */
}
