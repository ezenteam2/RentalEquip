package jspexp.b01_database;


/*
DAO(Database Access object)
	1.온라인 쇼핑몰 상품 정보 리스트 처리 과정
		1) 상품 정보
			상품 key, 종류, 물건명, 단가, 재고수량
	2. 개발 순서
		1) 테이블 생성
		2) 물건 key를 위한 sequence 생성
		3) SQL 만들기
		4) SQL에 따른 VO 생성
		5) DB DAO 생성
			1) 전역 field 객체 선언 (Connection, Statement, ResultSet)
			2) 연결 공통 메서드 선언
			3) 조회하는 ArrayList<VO> 메서드 선언
				- 연결메서드 호출 (예외처리)
				- Statement로 SQL 대화 처리
				- SQL 대화의 결과로 ResultSet 받기
				- while()을 활용하여 ArrayList<VO>에 담기와 return
				- 자원(객체메모리)의 해제
				 	rs.close(), stmt,close(), conn,close();
		6) 웹 화면 구현
			- import, 객체 DAO 생성
			- table에 for문으로 list 처리
 */


import java.sql.*;
import java.util.ArrayList;
import jspexp.z01_vo.P4MEMBER;
import jspexp.z01_vo.Product;

public class A03_ShoppingDao {
	
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

	public ArrayList<Product> getProductList(){
		ArrayList<Product> productList = new ArrayList<Product>();
		
		try {
			setCon();
			String sql = "SELECT * FROM PRODUCT";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			Product products = null;
			
			while(rs.next()) {
				
				
				
				products = new Product();
				products.setSno(rs.getInt("sno"));
				products.setKind(rs.getString("kind"));
				products.setName(rs.getString("name"));
				products.setPrice(rs.getInt("price"));
				products.setCnt(rs.getInt("cnt"));
				
				productList.add(products);
				
				/*
				products.add(new Product(rs.getInt("sno"),
										rs.getString("kind"),
										rs.getString("name"),
										rs.getInt("price"),
										rs.getInt("cnt"))
				 */
				
				
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return productList;
	}


public static void main(String[] args) {
		// TODO Auto-generated method stub
		A03_ShoppingDao dao = new A03_ShoppingDao();
		System.out.println(dao.getProductList().size());
		for(Product p:dao.getProductList()) {
			System.out.print(p.getSno()+"\t");
			System.out.print(p.getKind()+"\t");
			System.out.print(p.getName()+"\t");
			System.out.print(p.getPrice()+"\t");
			System.out.print(p.getCnt()+"\n");
		}
	}

}
