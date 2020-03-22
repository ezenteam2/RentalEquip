package zental;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import practice.*;

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
		String info="jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "system", "1111");
		System.out.println("정상 접속 성공.");
	}
// id 중복체크
	public boolean checkId(String id) {
		
		boolean flag = false;
		try {
			setCon();
			String sql = "select id from userinfo where id = ?";
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
	public boolean insertJavabeans(Javabeans ins){
		boolean flag = false;
		try {
			setCon();
			String sql = "INSERT INTO C##SEOHEE.USERINFO VALUES(?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getId());
			pstmt.setString(2, ins.getPwd());
			pstmt.setString(3, ins.getName());
			pstmt.setString(4, ins.getEmail());
			pstmt.setString(5, ins.getAddress());
			if(pstmt.executeUpdate()==1) flag = true;
			
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
		String sql = "select id from C##seohee.userinfo where id=? and pwd=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,pwd);
		flag = pstmt.executeQuery().next();
		System.out.println(flag);
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
}
