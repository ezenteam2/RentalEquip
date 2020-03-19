package jspexp.b01_database;

import java.sql.*;	// DB관련 package java.sql.*로 모두 사용 선언
import java.util.ArrayList;

import jspexp.z01_vo.Emp;

/*
# JAVA에서 DATABASE 처리
	1. 자바와 데이터베이스 연결 절차
		1) 각 밴드(회사)에 지원하는 공통 모듈인 JDBC드라이버를 이용
			- JDBC(JAVA DATABASE CONNECTION) 모듈을 lib에 위치
		2) JDBC 드라이버를 메모리상 객체로 올려놓고 사용할수 있도록
			Class.forName("jdbc드라이버")
				- 해당 드라이버 클래스를 메모리에 올리면 가지고 있는 객체와 메서드를 사용할 수 있게 됨
		3) 데이터베이스 서버와 연결할 수 있는 객체(Connection)을 이용
			- IP, PORT, SID, 계정, 비밀번호 필요
		4) SQL을 사용할 수 있는 객체(Statement)를 이용하여 SQL 실행
		 	- SQL 중 결과값이 있는 객체(ResultSet)을 통하여 결과를 전송 받음
		5) 데이터베이스 자원 해제처리
			- 예외 처리
		
 */

public class A01_Database {
	// 공통으로 사용할 field 선언
	// 연결, 대화, 결과 처리하는 객체 선언
	
	private Connection con;
	// 1. 연결 객체
	
	private Statement stmt;
	// 1) 기본 대화 객체
	
	private PreparedStatement pstmt;
	// 2) 준비된 대화 객체
	
	private ResultSet rs;
	// 3) 결과값을 받는 객체			ex) SELECT BOX (
	
	

	public void SetCon() throws SQLException {
		// 모든 데이터 베이스에 DB 처리를 하기 위한 공통 기능 메서드 - 연결 처리 메서드 선언
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 1. Driver를 메모리로 로딩

		
		
		
		
		String info = "jdbc:oracle:thin:@192.168.4.90:1521:xe";
		// 2. 특정 서버에 접속
		//		- 접속정보 : 드라이버명:@ip:port:sid
		//	String info = "jdbc:oracle:thin:localhost:1521:xe";
		//		- 공통 DB 서버 접속시, 접속 ip, 해당 서버의 방화벽 해제 하기 


		
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공");
		// 3. Connection 객체로 연결처리
	}
	
/*
# SELECT 조회처리 DB 모듈 만들기	
	1. SQL 작성														// SELECT * FROM emp
	2. SQL로 나타나는 데이터를 담는 객체(VO), 객체배열 ArrayList<VO> 선언
		0) VO를 어떻게 만들 것인가?
			데이터가 나올 컬럼명, 데이터 type을 고려하여 작성						// **** 테이블 구조가 아닌!!!! 
																	//		SQL(SELECT문)을 통해 출력된 컬럼명 및 데이터 타입으로 불러와야함
																	
			
			
		1) 메서드는 기본틀 정의
			ex) public ArrayList<Emp> getEmpList(){
					ArrayList<Emp> list = null;
					return list;
				}
	3. 메서드의 세부 내용의 선언과 구현
		1) 공통 모듈 DB 연결
		2) SQL을 통해서 대화객체 생성과 수행 Statement
		3) 수행한 결과값을 ResultSet 객체를 이요하여 할당
		4) ResultSet(<-SQL의 결과)의 결과를 ArrayList<VO>에 담기
			while(rs.next()) 반복문 처리 이용
		5) 자원의 해제
		6) 예외의 처리
		7) main() 테스트
		8) 구현된 내용을 웹화면에서 출력 처리
		
 */
	public ArrayList<Emp> getEmpList(){
		ArrayList<Emp> empList = new ArrayList<Emp>();
		// 1. DB 연결  및 에외처리

		try {
			SetCon();
			// Connection 객체가 메모리 로딩
			// Connection con 클래스의 필드로 할당된 상황
			
			String sql = "SELECT * FROM emp";
			// 2. SQL을 통해서 대화객체 생성과 수행 STATEMENT
			
			
			stmt = con.createStatement();
			// 1) Connection 객체를 통해서 대화할 수 있는 객체인 Statement객체 생성 및 필드에 있는 Statement에 할당
			
			rs = stmt.executeQuery(sql);
			// 3. 결과인 ResultSet 객체의 생성
			

			/* 1) ResultSet은 2차원의 컬럼과 데이터를 가진 객체
					- next()		: 행단위 접근
						ex) rs.next() : true/false 값 도출, true일 때(다음 행에 데이터가 있을 때) 해당 행의 데이터에 접근 가능
										--emp-- row가 12개, 12번 접근 까지 true, 13번째 접근 시 false
					- getXXX("컬럼"), getXXX(idx) : get 가져올 데이터 타입, String으로 모든 데이터를 가져 올 수 있음
					 								but!
					 	ex) rs.getString("job"), rs.getDouble("sal"), rs.getDate("hiredate"), rs.getInt("empno")
					 	ex) SELECT ename name, empno no, deptno FROM emp;
					 		rs.getString(1); 	rs.getInt(2); 	rs.getInt(3)
					 	 == rs.getString(name); rs.getInt(no); 	rs.getInt(deptno);
			
			*/
			
			int cnt=1;
			
			
			/*
			ArrayList<emp>에 해당 객체를 담기 위해
				1) 행단위로 Emp객체 생성
				2) 각각의 속성에 컬럼의 데이터 할당
				3) list.add() Emp객체 누적처리
			*/
			
			
			Emp emp = null;
			
			while(rs.next()) {
				emp = new Emp();
				
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
				empList.add(emp);
				
				
				
				System.out.print(rs.getInt("empno") + "\t");
				System.out.print(rs.getString("ename") + "\t");
				System.out.print(rs.getString("job") + "\t");
				System.out.print(rs.getInt("mgr") + "\t");
				System.out.print(rs.getDate("hiredate") + "\t");
				System.out.print(rs.getDouble("sal") + "\t");
				System.out.print(rs.getDouble("comm") + "\t");
				System.out.print(rs.getInt("deptno") + "\n");
			}
			// true인 경우에만 반복할 수 있도록 while을 이용하는게 효율적
			
			
			
			/* 5) 자원의 해제
					- 객체가 메모리할당 반대로 안쪽부터 객체의 메모리를 해제해야 함
					- rs -> stmt -> con
			
			*/
			
			rs.close();
			stmt.close();
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return empList;
	}


	
	
	
	
	public ArrayList<Emp> getEmpList(Emp sch){
		ArrayList<Emp> empList = new ArrayList<Emp>();
		try {
			SetCon();
			String sql = "SELECT * \r\n" + 
					"FROM emp\r\n" + 
					"WHERE 1=1\r\n";
					// 검색한 내용을  Emp sch로 넘기고 해당 내용을
					// keyword검색하게 한다.
					if(sch.getEname()!=null)
					sql+="AND ename LIKE '%'||'"+sch.getEname()+"'||'%'\r\n";
					if(sch.getJob()!=null)
					sql+="AND job LIKE '%'||'"+sch.getJob()+"'||'%' ";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			Emp emp = null;
			while(rs.next()) {
				emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
				empList.add(emp);
			}
			rs.close();
			stmt.close();
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return empList;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	A01_Database db = new A01_Database();

		db.getEmpList();
	
/*
  	try {
		db.SetCon();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
		
	}
*/

	}
}
