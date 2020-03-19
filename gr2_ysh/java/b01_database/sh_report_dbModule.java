package ZENTAL.b01_database;

import java.sql.*;                      						
import java.util.ArrayList;									
import ZENTAL.z01_vo.Report;            					


public class sh_report_dbModule {  									
	
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
		
		String info="jdbc:oracle:thin:@192.168.4.90:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공.");
	}
	
	public ArrayList<Report> getReport(){
		ArrayList<Report> reportList=new ArrayList<Report>();
	
		try {
			setCon();
			String sql = "SELECT * FROM p4report ";
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			
			Report report1 = null;
			while(rs.next()) {
				report1 = new Report();
				report1.setReport_code(rs.getInt("report_code"));
				report1.setMem_id(rs.getString("mem_id"));
				report1.setRent_item_code(rs.getInt("rent_item_code"));
				report1.setReport_date(rs.getDate("report_date"));
				report1.setReport_cate(rs.getString("report_cate"));
				report1.setReport_reason(rs.getString("report_reason"));
				report1.setReport_curr(rs.getString("report_curr"));
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

	public static void main(String[] args) {
		sh_report_dbModule db = new sh_report_dbModule();
	}
}





