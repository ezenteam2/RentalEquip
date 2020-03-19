package jspexp.b01_database;

import java.sql.*;
import java.util.ArrayList;
import jspexp.z01_vo.P4MEMBER;

public class A02_P4MEMBER {
	
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
public void setCon() throws SQLException{
	

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	String info = "jdbc:oracle:thin:@192.168.4.90:1521:xe";
	con = DriverManager.getConnection(info, "scott", "tiger");
	System.out.println("정상 접속 성공");

}

	public ArrayList<P4MEMBER> getP4memberList(){
		
		ArrayList<P4MEMBER> p4memberList = new ArrayList<P4MEMBER>();

		try {
			setCon();
			String sql = "SELECT * FROM P4MEMBER";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			P4MEMBER p4member = null;
			
			while(rs.next()) {
			
				p4member = new P4MEMBER();
				p4member.setMem_id(rs.getString("mem_id"));
				p4member.setMem_pw(rs.getString("mem_pw"));
				p4member.setMem_name(rs.getString("mem_name"));
				p4member.setMem_profileimg(rs.getString("mem_profileimg"));
				p4member.setMem_nick(rs.getString("mem_nick"));
				p4member.setMem_addr(rs.getString("mem_addr"));
				p4member.setMem_email(rs.getString("mem_email"));
				p4member.setMem_phone(rs.getString("mem_phone"));
				p4member.setMem_birth(rs.getDate("mem_birth"));
				p4member.setMem_grade(rs.getString("mem_grade"));
				p4member.setMem_emoney(rs.getInt("mem_emoney"));
				p4member.setMem_point(rs.getInt("mem_point"));
				p4member.setMem_curr(rs.getString("mem_curr"));
				p4member.setMem_introducer(rs.getString("mem_introducer"));

				p4memberList.add(p4member);
				
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		
		return p4memberList;
	}

	public P4MEMBER login(P4MEMBER mem) {
		P4MEMBER m = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM P4MEMBER "
					+ "WHERE mem_id = '" + mem.getMem_id() + "' "
					+ "And mem_pw ='" + mem.getMem_pw() + "' ";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				m = new P4MEMBER(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getInt(12),
						rs.getString(13),
						rs.getString(14)
						);
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return m;
	}
	
public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
