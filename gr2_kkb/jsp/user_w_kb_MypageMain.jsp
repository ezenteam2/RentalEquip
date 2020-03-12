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
    conn=DriverManager.getConnection(url,"scott","tiger"); //�ڽ��� ���̵�� ��й�ȣ
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
                <th class="th">���̵�</th>
                <td><%=id %></td>
                <th  class="th">�г���</th>
                <td><%=nickname %></td>
            </tr>
            <tr>
                <th class="th">���� ����Ʈ</th>
                <td colspan="3"><%=Point %></td>
            </tr>
            <tr>
                <td colspan="4" class="grade_td">
                    <img src="<%=img%>"><br>
                    <%=nickname %>���� ���� <%=Grade %>����Դϴ�.
                </td>
            </tr>
            <tr>
                <td colspan="4" class="moveGrade_Td">
                    ��޺� ���� ����
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
            <div class="menubar"  onclick="location.href='user_w_kb_MemberUpdate.jsp'"><div class="vertical_div">ȸ������ ����</div></div>
            <div class="menubar" onclick="location.href='user_w_kb_EmoneyIndex.jsp'"><div class="vertical_div">E�Ӵ� ���� /<br>
            E�Ӵ� ���</div></div>
            <div class="menubar"><div class="vertical_div">�������</div></div>
            <div class="menubar" ><div class="vertical_div">�ȷο� ȸ��</div></div>
            <div class="menubar"><div class="vertical_div">�򿹾� ��ǰ</div></div>
            <div class="menubar"><div class="vertical_div">��Ż ��ǰ Ȯ��</div></div>
        </div>
    </main>
</body>
</html>