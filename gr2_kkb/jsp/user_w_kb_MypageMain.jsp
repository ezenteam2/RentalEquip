<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/user_w_kb_MyPageMain.css">
    <title>ZENTAL</title>
</head>
<body>
<%
Connection conn=null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@192.168.4.90:1521:XE";
	

Statement pstmt = null;
ResultSet rs = null;
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"scott","tiger"); //자신의 아이디와 비밀번호
	String Query = "select a.mem_id, a.mem_nick, a.mem_point, a.mem_grade, b.grade_img from p4member a, p4grade b where a.mem_id='userezenkb77' and a.mem_grade = b.grade_title";
	String ids = "userezenkb77";
	pstmt = conn.createStatement();

	
	rs = pstmt.executeQuery(Query);	

	if(	rs.next()){
		String id = rs.getString(1);
		String nickname = rs.getString(2);
		String Point = rs.getString(3);
		String Grade = rs.getString(4);
		String img = rs.getString(5);

	
%>

    <main>
        <table border style="border-collapse: collapse;">
            <tr>
                <th class="th">아이디</th>
                <td><%=id %></td>
                <th  class="th">닉네임</th>
                <td><%=nickname %></td>
            </tr>
            <tr>
                <th class="th">보유 포인트</th>
                <td colspan="3"><%=Point %></td>
            </tr>
            <tr>
                <td colspan="4" class="grade_td">
                    <img src="<%=img%>"><br>
                    <%=nickname %>님은 현재 <%=Grade %>등급입니다.
                </td>
            </tr>
            <tr>
                <td colspan="4" class="moveGrade_Td">
                    등급별 혜택 보기
                </td>
            </tr>
        </table>
        <% 
		}
            conn.close();
        	rs.close();
        	pstmt.close();
}catch(Exception e){
    e.printStackTrace();
}
%>
        <div id="Btns_Div">
            <div class="menubar"  onclick="location.href='user_w_kb_MemberUpdate.jsp'"><div class="vertical_div">회원정보 수정</div></div>
            <div class="menubar" onclick="location.href='user_w_kb_EmoneyIndex.jsp'"><div class="vertical_div">E머니 충전 /<br>
            E머니 출금</div></div>
            <div class="menubar"><div class="vertical_div">쿠폰목록</div></div>
            <div class="menubar" ><div class="vertical_div">팔로우 회원</div></div>
            <div class="menubar"><div class="vertical_div">찜예약 상품</div></div>
            <div class="menubar"><div class="vertical_div">렌탈 상품 확인</div></div>
        </div>
    </main>
</body>
</html>