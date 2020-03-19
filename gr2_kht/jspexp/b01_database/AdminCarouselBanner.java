package jspexp.b01_database;

import java.sql.*;
import jspexp.z01_vo.*;
import java.util.*;

public class AdminCarouselBanner {

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

	public ArrayList<CarouselBanner> getCarouselBanner(){
	
		ArrayList<CarouselBanner> carouselBanner = new ArrayList<CarouselBanner>();

		try {
			setCon();
			String sql = "SELECT * FROM P4CAROUSEL";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			CarouselBanner carousel = null;
			
			while(rs.next()) {
				
				carousel = new CarouselBanner(
						rs.getInt("carou_code"),
						rs.getDate("carou_date"),
						rs.getInt("carou_order"),
						rs.getString("carou_img"),
						rs.getString("carou_link")
						);
				carouselBanner.add(carousel);
				
			
			}
			
			rs.close();
			stmt.close();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return carouselBanner;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
