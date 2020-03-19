package zental.gr2_lhj;
import java.util.ArrayList;
import java.sql.*;

public class NoticeLoader {
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	public NoticeLoader() {}
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
	
	public ArrayList<Notice> getNotice(int pageNum){
		ArrayList<Notice> arr = new ArrayList<Notice>();
		try {
			String query1="select * from (select rownum rn, a.* "+
					"from (select * from p4notice order by notice_date desc) a where rownum<="+
					pageNum*10+") where rn>"+(pageNum-1)*10;
			
			System.out.println(query1);
			rs =stmt.executeQuery(query1);
			while(rs.next()){
				String title=rs.getString("NOTICE_TITLE");
				String content=rs.getString("NOTICE_DETAIL");
				String img=rs.getString("NOTICE_IMG");
				String date=rs.getString("NOTICE_DATE");
				date=date.substring(0,10);
				Notice temp = new Notice(title,content, img, date);
				arr.add(temp);
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return arr;
	}
	public int getTotal() {
		int totalPage=0;
		String query2="select count(*) cnt from p4notice";
		try {
			rs=stmt.executeQuery(query2);
			while(rs.next()) {
				int totalCnt=rs.getInt("cnt");
				if(totalCnt%10==0){
                	totalPage=totalCnt/10;
                	} else {
                	totalPage=totalCnt/10+1;
                	}
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return totalPage;
	}
}
