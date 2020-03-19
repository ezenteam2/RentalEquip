package zental.gr2_lhj;
import java.util.ArrayList;
import java.sql.*;


public class FaqLoader {
	
	ArrayList<Faq> arr = new ArrayList<Faq>();
	
	public FaqLoader() {
		
	}
	
	public void getConnection() {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@192.168.4.90:1521:xe",
					"scott", "tiger");
			stmt=conn.createStatement();
			String sql1="select FAQ_TITLE title, FAQ_detail detail, FAQ_IMG img from p4faq";
			rs=stmt.executeQuery(sql1);
			
			while(rs.next()) {
				String title = rs.getString("title");
				String detail = rs.getString("detail");
				String img = rs.getString("img");
				img=img.replace("png", "jpg");
				System.out.println(img);
				Faq faq1=new Faq(title, detail, img);
				arr.add(faq1);
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public ArrayList<Faq> getFaq(){
		getConnection();
		return arr;
	}
}
