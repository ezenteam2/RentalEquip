<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	ex) form 회원 정보 등록
		id:[   ]
		[등록] -- 클릭시,
		@@@님 회원 등록 했습니다
-->

	<form>
	
	ID : <input type="text" name="id"/><br>
	PASSWORD : <input type="password" name="password"/><br>
	PASSWORD 확인 : <input type="password" name="passwordConfirm"/><br>
	
	<input type="submit">
	
	</form>
	
	<%
	String id = request.getParameter("id");
	if (id==null) id = "";
	
	String password = request.getParameter("password");
	if (password==null) password = "";
	
	String passwordConfirm = request.getParameter("passwordConfirm");
	if (passwordConfirm==null) passwordConfirm = "";
	
	if (!id.equals("")&&!password.equals("")&&!passwordConfirm.equals("")) {
		
		if(password.equals(passwordConfirm)) {
		
	%>
	
	<h2><%=id %>님이 회원등록 했습니다 :^)</h2>
	
	<%	
		} else {
	%>
		
	<h2>비밀번호가 일치하지 않습니다</h2>	
			
	<%
		}
	}
	%>
	
	<br><br>
	
<!-- 
	ex) 상품 등록
		상품명 : [   ]
		가격 : [   ]
		[등록]
		@@@ 물건 @@@원 물품 등록 되었습니다.
 -->

	<form>
	상품등록
	상품명 : <input type="text" name="proName"/> <br>
	가격 : <input type="text" name="proPrice"/> <br>
	<input type="submit">
	</form>
	
	<%
	
	String proName = request.getParameter("proName");
	if (proName==null) proName="";
	
	String proPrice = request.getParameter("proPrice");
	if (proPrice==null) proPrice="";
	
	if(!proName.equals("")&&!proPrice.equals("")){
	%>
	
	<h2>물건 <%=proName %>이/가 가격 <%=proPrice %>로 등록되었습니다</h2>
	
	<%
	}
	%>
	
	<br><br>

<!-- 
	
	ex) 계산기
		첫 번째 숫자 : []
		두 번째 숫자 : []
		[덧셈] 클릭시					**Integer.parseInt()
		첫 번째 숫자 + 두 번째 숫자 = 결과값 출력
		
 -->
	
	<form>
	
	첫 번째 숫자 : <input type="text" name="num01"/>
	두 번째 숫자 : <input type="text" name="num02"/>
	<input type="submit" value="+" name="plus">
	
	</form>
	
	<%
	
	String strNum01 = request.getParameter("num01");
	String strNum02 = request.getParameter("num02");
	int num01 = 0;
	if(strNum01!=null) num01=Integer.parseInt(strNum01);
	int num02 = 0;
	if(strNum02!=null) num02=Integer.parseInt(strNum02);
	if(strNum01!=null&&strNum02!=null){
	%>
	
	<h2><%=num01 %> + <%=num02 %> = <%=num01+num02 %></h2>
	
	<%
	}
	%>

	<br><br>

	<!-- 
	form 하위의 여러 데이터를 확인 처리하세요..
		type="radio"   단일 선택
		type="checkbox" 다중 선택
		select
		textarea
	ex) 다양한 회원 가입 폼 처리
	 id
	 pass
	 이름
	 성별 radio
	 사는 지역 select
	 취미 checkbox
	 기타 할말 textarea
	 [회원 등록] 클릭시,
	 해당 페이지에 회원 정보 출력
	 	
	 -->
	 
	 <form>
	 
	 <table>
	 
	 <tr><td>ID</td>		<td><input type="text" name="id02" placeholder="아이디를 입력하세요"></td></tr>
	 <tr><td>PASS</td>		<td><input type="password" name="password02" placeholder="비밀번호를 입력하세요"></td></tr>
	 <tr><td>이름</td>		<td><input type="text" name="name" placeholder="이름을 입력하세요"></td></tr>
	 <tr><td>성별</td>		<td><input type="radio" name="gender" value="남">남
								<input type="radio" name="gender" value="여">여
							</td></tr>
	 <tr><td>사는 곳</td>		<td><select name = "location">
								<option value = "서울">경기</option>
								<option value = "대전">대전</option>
								<option value = "대구">대구</option>
								<option value = "부산">부산</option>
								<option value = "찍고">찍고</option>
								<option value = "아하">아하</option>
								</select>	
	 						</td></tr>
	 <tr><td>취미</td>		<td><input type = "checkbox" name = "hobby" value = "수영"/>수영	
								<input type = "checkbox" name = "hobby" value = "헬스"/>헬스	
								<input type = "checkbox" name = "hobby" value = "낮잠"/>낮잠
							</td></tr>
	 <tr><td>기타 할말</td>		<td><textarea rows = "5" cols = "30" name = "introduction"></textarea></td></tr>
	 <tr><td colspan=2><input type="submit"/></td></tr>
	 
	 
	 </table>
	 
	 </form>
	 
	 <%
	 
	 String id02 = request.getParameter("id02");
	 String password02 = request.getParameter("password02");
	 String name = request.getParameter("name");
	 String gender = request.getParameter("gender");
	 String location = request.getParameter("location");
	 String hobby = request.getParameter("hobby");
	 String introduction = request.getParameter("introduction");
	 if (id02==null) id02=""; 
	 if (password02==null) password02=""; 
	 if (name==null) name=""; 
	 if (gender==null) gender=""; 
	 if (location==null) location=""; 
	 if (hobby==null) hobby=""; 
	 if (introduction==null) introduction=""; 

	 
	 if (!id02.equals("")&&!password02.equals("")&&!name.equals("")&&!gender.equals("")&&!location.equals("")&&!hobby.equals("")&&!introduction.equals("")) {
	 %>
	 
	 <h3>입력 ID : <%=id02 %></h3>
	 <h3>입력 PASSWORD : <%=password02 %></h3>
	 <h3>입력 이름 : <%=name %></h3>
	 <h3>입력 성별 : <%=gender %></h3>
	 <h3>입력 사는 곳 : <%=location %></h3>
	 <h3>입력 취미 : <%=hobby %></h3>
	 <h3>입력 소개 : <%=introduction %></h3>
	 
	 <%
	 }
	 %>
	 
	 
	 
</body>
</html>