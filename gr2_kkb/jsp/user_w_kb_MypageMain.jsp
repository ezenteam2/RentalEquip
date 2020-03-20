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
                <th class="th">���̵�</th>
                <td><%=id %></td>
                <th  class="th">�г���</th>
                <td><%=nick %></td>
            </tr>
            <tr>
                <th class="th">���� ����Ʈ</th>
                <td colspan="2"><%=Points %> ����Ʈ</td>
                <td style="cursor:pointer;" onclick="location.href='../../gr2_kht/user_w_ht_point.jsp'">����Ʈ ��ȸ</td>
            </tr>
            <tr>
                <td colspan="4" class="grade_td">
                    <img src="<%=grade_Img%>"><br>
                    	<%=nick %>���� ����<%=grade %>����Դϴ�.
                </td>
            </tr>
            <tr onclick="location.href='../../gr2_kht/user_w_ht_grade.jsp'">
                <td colspan="4" class="moveGrade_Td">
                    ��޺� ���� ����
                </td>
            </tr>
        </table>
       
        <div id="Btns_Div">
            <div class="menubar"  onclick="location.href='user_w_kb_MemberUpdate.jsp'"><div class="vertical_div">ȸ������ ����</div></div>
            <div class="menubar" onclick="location.href='user_w_kb_EmoneyIndex.jsp'"><div class="vertical_div">E�Ӵ� ���� /<br>
            E�Ӵ� ���</div></div>
            <div class="menubar" onclick="location.href='../../gr2_kht/user_w_ht_coupon.jsp'"><div class="vertical_div">�������</div></div>
            <div class="menubar" ><div class="vertical_div">�ȷο� ȸ��</div></div>
            <div class="menubar"><div class="vertical_div">�򿹾� ��ǰ</div></div>
            <div class="menubar"><div class="vertical_div">��Ż ��ǰ Ȯ��</div></div>
        </div>
    </main>
</body>
</html>