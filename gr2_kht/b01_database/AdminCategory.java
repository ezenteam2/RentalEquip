package jspexp.b01_database;

import java.sql.*;
import jspexp.z01_vo.*;
import java.util.*;

public class AdminCategory {

	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
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
			String sql = "SELECT * FROM P4ITEM_CATEGORY ORDER BY CATE_ORDER ";
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
	
	
	public AdminCategoryVO detailAdminCategory(String cate_title) {
		AdminCategoryVO ac = new AdminCategoryVO();
		
		try {
			setCon();
			
			String sql = "SELECT * FROM P4ITEM_CATEGORY WHERE cate_title=?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cate_title);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ac = new AdminCategoryVO(
						rs.getInt(1),
						rs.getDate(2),
						rs.getString(3),
						rs.getInt(4),
						rs.getString(5)
						);
			}
			
			rs.close();
			pstmt.clearBatch();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ac;
		
	}
	
	
	public void insertAdminCategory(AdminCategoryVO ins) {
		
		try {
			setCon();
			
			String sql = "INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, ?, ?, ?) ";
			
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, ins.getCate_title());
			pstmt.setInt(2, ins.getCate_order());
			pstmt.setString(3, ins.getCate_img());
			
			System.out.println(sql);
			pstmt.executeUpdate();
			con.commit();
			
			pstmt.close();
			con.close();
			System.out.println("등록 성공!!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
	}
	
	
	
	public void updateCategory(AdminCategoryVO upt) {
		
		try {
			setCon();
			
			String sql = "UPDATE P4ITEM_CATEGORY \r\n" + 
					"	SET cate_date = sysdate,\r\n" + 
					"		cate_title=?,\r\n" + 
					"		cate_order=?,\r\n" + 
					"		cate_img=?\r\n" + 
					"	WHERE cate_title = ? ";
			
			con.setAutoCommit(false);
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getCate_title());
			pstmt.setInt(2, upt.getCate_order());
			pstmt.setString(3, upt.getCate_img());
			pstmt.setString(4, upt.getCate_title());
			
			pstmt.executeUpdate();
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	
	
	public void deleteCategory(String cate_title) {
		
		try {
			setCon();
			
			String sql = "DELETE FROM P4ITEM_CATEGORY WHERE cate_title=?";
			
			con.setAutoCommit(false);
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cate_title);
			pstmt.executeUpdate();
			con.commit();
			pstmt.clearBatch();
			con.close();
			System.out.println("삭제성공!!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
			
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
