/*
	rs.close();
	stmt.close();
	con.close();  
 // 추가후 테스트 안함 
 */


package zental;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class dbModule {
	
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void setCon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String info="jdbc:oracle:thin:@192.168.4.90:1521:xe";
		con = DriverManager.getConnection(info, "SCOTT", "tiger");
		System.out.println("정상 접속 성공.");
	}
// id 중복체크
	public boolean checkId(String id) {
		
		boolean flag = false;
		try {
			setCon();
			String sql = "select MEM_ID from SCOTT.P4MEMBER where MEM_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			flag = pstmt.executeQuery().next();
			System.out.println(flag);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
		}
		return flag;
	}
// 회원가입	
	public boolean insertUserinfo(UserinfoBean ins){
		boolean flag = false;
		try {
			setCon();
			String sql = "INSERT INTO SCOTT.P4MEMBER(MEM_ID,MEM_PW,MEM_NAME,MEM_NICK,MEM_ADDR,MEM_PHONE)"
					+ "VALUES(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getMEM_ID());
			pstmt.setString(2, ins.getMEM_PW());
			pstmt.setString(3, ins.getMEM_NAME());
			pstmt.setString(4, ins.getMEM_NICK());
			pstmt.setString(5, ins.getMEM_ADDR());
			pstmt.setString(6, ins.getMEM_PHONE());

			if(pstmt.executeUpdate()==1) flag = true;
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			
			try {
				con.rollback();
				System.out.println("sql오류");
			} catch (SQLException e1) {

				e1.printStackTrace();
			}	
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return flag;
		
	}
//로그인
	public boolean loginMember(String id, String pwd) {
		boolean flag = false;
		try{
		setCon();
		String sql = "select MEM_ID from SCOTT.P4MEMBER where MEM_ID=? and MEM_PW=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,pwd);
		rs = pstmt.executeQuery();
		flag = rs.next();
		System.out.println(flag);
		rs.close();
		stmt.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}

//아이디 찾기
	public String findingId(String name, String email) {
		
		boolean flag = false;
		String answer="";
		try {
			setCon();
			String sql = "select MEM_ID from SCOTT.P4MEMBER where MEM_NAME = ? AND MEM_EMAIL =?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);			
			rs = pstmt.executeQuery();
			flag = rs.next();
			if(flag) {
				answer = rs.getString("MEM_ID");
			}else {
				answer = "불일치";
			}
		rs.close();
		stmt.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return answer;
	}


//신고내역(admin)
	public ArrayList<Report> getReport(){
		ArrayList<Report> reportList=new ArrayList<Report>();
	
		try {
			setCon();
			String sql = "SELECT * FROM P4REPORT ";
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			
			Report report1 = null;
			while(rs.next()) {
				report1 = new Report();
				report1.setREPORT_CATE(rs.getString("REPORT_CATE"));
				report1.setMEM_ID(rs.getString("MEM_ID"));
				report1.setREPORT_CURR(rs.getString("REPORT_CURR"));
				report1.setREPORT_DATE(rs.getDate("REPORT_DATE"));
				reportList.add(report1);
			}
			
			rs.close();
			stmt.close();
			con.close();
				
		} catch (SQLException e) {
	
			e.printStackTrace();
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return reportList;
	}
//회원정보(admin)
	public ArrayList<Userinfo> getUserinfo(){
		ArrayList<Userinfo> userinfotList=new ArrayList<Userinfo>();
		try {
			setCon(); 
			String sql = "SELECT * FROM p4member";
			
			stmt = con.createStatement();
			
			rs=stmt.executeQuery(sql);
		
			int cnt=1;
			
			Userinfo userinfo = null;
			while(rs.next()) {
				userinfo = new Userinfo();
				userinfo.setMEM_ID(rs.getString("MEM_ID"));
				userinfo.setMEM_NAME(rs.getString("MEM_NAME"));
				userinfo.setMEM_GRADE(rs.getString("MEM_GRADE"));
				userinfo.setMEM_CURR(rs.getString("MEM_CURR"));
				userinfotList.add(userinfo);
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return userinfotList;
	}
}