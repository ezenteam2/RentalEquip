package zental.gr2_lhj;
import java.util.*;
import java.sql.*;


public class QnaLoader {
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	public QnaLoader() {
		
	}
	
	public void getConnection() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@192.168.4.90:1521:xe",
					"scott", "tiger");
			if(conn==null) {
				throw new Exception("데이터베이스 연결 실패");
			}
			System.out.println("연결성공");
			stmt=conn.createStatement();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public ArrayList<Qna> getQna(){
		ArrayList<Qna> arr=new ArrayList<Qna>();
		try {
			getConnection();
			String sql1="SELECT QNA_CATE, QNA_TITLE, QNA_CONTENT, QNA_ANSWER FROM p4qna";
			rs=stmt.executeQuery(sql1);
			while(rs.next()){
				String category=rs.getString("QNA_CATE");
				String title=rs.getString("QNA_TITLE");
				String content=rs.getString("QNA_CONTENT");
				String answer=rs.getString("QNA_ANSWER");
		
				Qna temp = new Qna(category, title, content, answer);
				arr.add(temp);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return arr;
	}
}
