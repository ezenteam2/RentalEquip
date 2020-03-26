package jspexp.b01_database;

import java.sql.*;
import jspexp.z01_vo.*;
import java.util.*;

public class UserCoupon_ht {

	private Connection con;
	private Statement stmt;
	private ResultSet rs;	

	public void setCon() throws SQLException{
		

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}

		String info = "jdbc:oracle:thin:@192.168.4.90:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
	}
	

	public ArrayList<UserCouponVO_ht> getUserCouponVO(){
		
		ArrayList<UserCouponVO_ht> usercouponvo = new ArrayList<UserCouponVO_ht>();
		
		try {
			setCon();
			String sql = "SELECT * FROM P4MEMCOUPON";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			UserCouponVO_ht usercoupon = null;
			
			while(rs.next()) {
				usercoupon = new UserCouponVO_ht(
						rs.getInt("memcou_code"),
						rs.getInt("cou_code"),
						rs.getString("mem_id"),
						rs.getDate("memcou_sdate"),
						rs.getDate("memcou_udate")
						);
				usercouponvo.add(usercoupon);
				
			}
			
			rs.close();
			stmt.close();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		return usercouponvo;
		
		
	}
	
	public ArrayList<UserCouponVO_ht> getCurrCoupon(){

		ArrayList<UserCouponVO_ht> currentcoupon = new ArrayList<UserCouponVO_ht>(); 
	
		try {
			setCon();
			String sql = "SELECT pc.COU_TITLE, pc.COU_PRICE, pm.MEMCOU_SDATE + pc.COU_DUR " + 
					"FROM P4COUPON pc , P4MEMCOUPON pm " + 
					"WHERE	pm.MEM_ID = 'userezenht' " + 
					"AND pm.COU_CODE = pc.COU_CODE " + 
					"AND pm.MEMCOU_UDATE IS NULL";
			
			stmt = con.createStatement();
			System.out.println(sql);
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				UserCouponVO_ht currentcou = new UserCouponVO_ht(
						rs.getString(1),
						rs.getInt(2),
						rs.getDate(3)
						);
				
				currentcoupon.add(currentcou);
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		
		
		
		return currentcoupon;
	}
	
	
	
	public ArrayList<UserCouponVO_ht> getUsedCoupon(){
		
		ArrayList<UserCouponVO_ht> usedcoupon = new ArrayList<UserCouponVO_ht>(); 
		
		try {
			setCon();
			String sql = "SELECT pc.COU_TITLE, pc.COU_PRICE, pm.MEMCOU_UDATE " + 
					"FROM P4COUPON pc, P4MEMCOUPON pm " + 
					"WHERE pm.MEM_ID = 'userezenht' " + 
					"AND pm.COU_CODE = pc.COU_CODE " + 
					"AND pm.MEMCOU_UDATE IS NOT NULL ";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			System.out.println(sql);
			
			
			
			while(rs.next()) {
				UserCouponVO_ht usedcou = new UserCouponVO_ht(
						rs.getString(1),
						rs.getInt(2),
						rs.getDate(3)
						);
				
				usedcoupon.add(usedcou);
				
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		
		
		
		return usedcoupon;
	}
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
