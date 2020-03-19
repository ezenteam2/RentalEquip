package ZENTAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class kb_Database {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<kb_Emoney> emoneyList = null;
	ArrayList<kb_EmoneyPrice> emoneyPriceList = null;
	ArrayList<kb_Member1> memberInfoList = null;
	ArrayList<kb_MemberUpdate> memUpdateList = null;
	public kb_Database() {};
	public void SetCon() throws SQLException{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.4.90:1521:XE";
		try {
			
			Class.forName(driver);
	    	conn=DriverManager.getConnection(url,"scott","tiger");
	    	System.out.println("정상 접속 성공");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<kb_Emoney> EmoneyList(String Query){
		emoneyList = new ArrayList<kb_Emoney>();
		
		kb_Emoney emo = null;
		
		try{
			SetCon();
			
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
			emo = new kb_Emoney();
			emo.setDate(rs.getString(1));
			emo.setEmo_cate(rs.getString(2));
			emo.setEmoney(rs.getInt(3));
			emoneyList.add(emo);
			}
			
			rs.close();
			pstmt.close();
			conn.close();

		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return emoneyList;
	}
	
	public ArrayList<kb_Emoney> EmoneyListDate(String Query, String StartDay, String EndDay){
		 emoneyList= new ArrayList<kb_Emoney>();
		kb_Emoney emo = null;
		
		try {
			SetCon();
			
			pstmt = conn.prepareStatement(Query);
			pstmt.setString(1, StartDay);
			pstmt.setString(2, EndDay);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				emo = new kb_Emoney();
				emo.setDate(rs.getString(1));
				emo.setEmo_cate(rs.getString(2));
				emo.setEmoney(rs.getInt(3));
				emoneyList.add(emo);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return emoneyList;
	}
	
	public ArrayList<kb_EmoneyPrice> ChargeAll(String Query){
		emoneyPriceList= new ArrayList<kb_EmoneyPrice>();
		kb_EmoneyPrice emo = null;
		try {
			SetCon();
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				emo = new kb_EmoneyPrice();
				emo.setEmoney(rs.getInt(2));
				emoneyPriceList.add(emo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return emoneyPriceList;
	}
	
	public ArrayList<kb_EmoneyPrice> EmoneyNow(String Query){
		emoneyPriceList= new ArrayList<kb_EmoneyPrice>();
		kb_EmoneyPrice emo = null;
		try {
			SetCon();
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				emo = new kb_EmoneyPrice();
				emo.setEmoney(rs.getInt(1));
				emoneyPriceList.add(emo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return emoneyPriceList;
	}
	
	public ArrayList<kb_Member1> MemberInfo(){
		memberInfoList = new ArrayList<kb_Member1>();
		kb_Member1 mem = null;
		try {
			SetCon();
			
			String Query = "select a.mem_id, a.mem_nick, a.mem_point, a.mem_grade, b.grade_img from p4member a, "
					+ "p4grade b where a.mem_id='userezenkb77' and a.mem_grade = b.grade_title";
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mem = new kb_Member1();
				mem.setId(rs.getString(1));
				mem.setNick(rs.getString(2));
				mem.setPoint(rs.getInt(3));
				mem.setGrade(rs.getString(4));
				mem.setGrade_img(rs.getString(5));
				memberInfoList.add(mem);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return memberInfoList;
	}
	
	public ArrayList<kb_MemberUpdate> UpdateList(){
		memUpdateList = new ArrayList<kb_MemberUpdate>();
		
		kb_MemberUpdate mem = null;
		try {
			SetCon();
			String sql = "select mem_id, mem_profileimg, mem_nick, mem_addr, mem_email, mem_phone from p4member where mem_id = 'userezenkb77'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mem = new kb_MemberUpdate();
				mem.setId(rs.getString(1));
				mem.setMem_profileImg(rs.getString(2));
				mem.setNick(rs.getString(3));
				mem.setAddr(rs.getString(4));
				mem.setEmail(rs.getString(5));
				mem.setPhone(rs.getString(6));
				
				memUpdateList.add(mem);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return memUpdateList;
	}
}
