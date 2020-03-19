package zental.gr2_lhj;
import java.util.ArrayList;
import java.sql.*;


public class WantLoader {
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	public WantLoader() {

	}
	
	public void getConnection(){
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@192.168.4.90:1521:xe",
					"scott", "tiger");
			if(conn==null){
				throw new Exception("데이터베이스 연결 실패");
			}
			System.out.println("연결성공");
			stmt=conn.createStatement();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public ArrayList<Want> getWant(int num){
		System.out.println("들어온숫자:"+num);
		ArrayList<Want> arr = new ArrayList<Want>();
		String sql1="SELECT req_title title, req_detail content, req_price price, req_img img FROM p4req_item";
		if(num!=0) {
			sql1="select a.req_title title, a.req_detail content, a.req_price price"+
					", a.req_img img from p4req_item a, p4item_category b "+
					"where a.cate_code = b.cate_code and b.cate_order ="+num;
			System.out.println(sql1);
		}
			
		
		try {
			rs=stmt.executeQuery(sql1);
			
			while(rs.next()) {
				String title=rs.getString("title");
				String content=rs.getString("content");
				int price=rs.getInt("price");
				String img=rs.getString("img");
				arr.add(new Want(title, content, price, img));
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return arr;
	}
	
	public void closeConnection() {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
