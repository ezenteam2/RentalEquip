package jspexp.b01_database;

import java.sql.*;
import jspexp.z01_vo.*;
import java.util.*;

public class AdminCategory {

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


}	

	public ArrayList<AdminCategoryVO> getAdminCategory(){
		
		ArrayList<AdminCategoryVO> p4category = new ArrayList<AdminCategoryVO>();
		
		try {
			setCon();
			String sql = "SELECT * FROM P4ITEM_CATEGORY";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			AdminCategoryVO p4cate = null;
			
			
			while(rs.next()) {
				
				p4cate = new AdminCategoryVO(
						rs.getInt("cate_code"),
						rs.getDate("cate_date"),
						rs.getString("cate_title"),
						rs.getInt("cate_order"),
						rs.getString("cate_img")
						);
				p4category.add(p4cate);
			
			
		}
			
		rs.close();
		stmt.close();
		con.close();
		}	
			catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
				
		return p4category;
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
