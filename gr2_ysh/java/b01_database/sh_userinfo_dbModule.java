package ZENTAL.b01_database;

import java.sql.*;
import java.util.ArrayList;
import ZENTAL.z01_vo.Userinfo;

public class sh_userinfo_dbModule {
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

		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공.");

	}
	
/*******************************************************************************/
	
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
				userinfo.setMem_id(rs.getString("mem_id"));
				userinfo.setMem_name(rs.getString("mem_name"));
				userinfo.setMem_grade(rs.getString("mem_grade"));
				userinfo.setMem_curr(rs.getString("mem_curr"));
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

	public static void main(String[] args) {
		sh_userinfo_dbModule db = new sh_userinfo_dbModule();
	}
}





