<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*,zental.*, java.text.*"%>
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
		kb_Database db = new kb_Database();
		DecimalFormat df = new DecimalFormat("###,###");
		String id = null;
		String nick = null;
		String grade = null;
		String grade_Img = null;
		int Point = 0;
		String Points = null;
		
		for(kb_Member1 mem : db.MemberInfo()){
			id = mem.getId();
			nick = mem.getNick();
			grade = mem.getGrade();
			grade_Img = mem.getGrade_img();
			Point = mem.getPoint();
			Points = df.format(Point);
		}
	%>



    <main>
        <table border style="border-collapse: collapse;">
            <tr>
                <th class="th">아이디</th>
                <td><%=id %></td>
                <th  class="th">닉네임</th>
                <td><%=nick %></td>
            </tr>
            <tr>
                <th class="th">보유 포인트</th>
                <td colspan="2"><%=Points %> 포인트</td>
                <td style="cursor:pointer;" onclick="location.href='../../gr2_kht/user_w_ht_point.jsp'">포인트 조회</td>
            </tr>
            <tr>
                <td colspan="4" class="grade_td">
                    <img src="<%=grade_Img%>"><br>
                    	<%=nick %>님은 현재<%=grade %>등급입니다.
                </td>
            </tr>
            <tr onclick="location.href='../../gr2_kht/user_w_ht_grade.jsp'">
                <td colspan="4" class="moveGrade_Td">
                    등급별 혜택 보기
                </td>
            </tr>
        </table>
       
        <div id="Btns_Div">
            <div class="menubar"  onclick="location.href='user_w_kb_MemberUpdate.jsp'"><div class="vertical_div">회원정보 수정</div></div>
            <div class="menubar" onclick="location.href='user_w_kb_EmoneyIndex.jsp'"><div class="vertical_div">E머니 충전 /<br>
            E머니 출금</div></div>
            <div class="menubar" onclick="location.href='../../gr2_kht/user_w_ht_coupon.jsp'"><div class="vertical_div">쿠폰목록</div></div>
            <div class="menubar" ><div class="vertical_div">팔로우 회원</div></div>
            <div class="menubar"><div class="vertical_div">찜예약 상품</div></div>
            <div class="menubar"><div class="vertical_div">렌탈 상품 확인</div></div>
        </div>
    </main>
</body>
</html>