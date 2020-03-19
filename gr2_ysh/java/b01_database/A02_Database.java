package ZENTAL.b01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import ZENTAL.z01_vo.Dept;

public class A02_Database {
/*
ex) SELECT * FROM dept를 통해서,
DB 접근과 List 데이터 처리
a02_deptList.jsp
 * */
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setCon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info="jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공.");
	}
	public ArrayList<Dept> getDeptList(){
		ArrayList<Dept> dList=new ArrayList<Dept>();
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM dept ";
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				dList.add(new Dept(rs.getInt(1),rs.getString(2),rs.getString(3)));
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return dList;
	}	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
