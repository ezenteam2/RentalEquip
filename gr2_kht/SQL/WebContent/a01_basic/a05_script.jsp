<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_vo.Product, jspexp.z01_vo.Book, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
# 스크립트(script) 요소
	1. 요청을 처리하는 데 필요한 자바코드 실행
	2. 동적으로 응답 결과를 생성하기 위해 사용
	3. 스크립트 요소 세가지
		1) 스크립트릿(scriptlet)
		2) 표현식(expression)
		3) 선언부(declaration)

# 스크립트릿(scriptlet)
	1. 자바 코드를 실행할 때, 사용되는 코드의 블럭
	2. 구조
		%
			자바코드1;
			자바코드2;
		%

# 표현식(Expression)
	1. 값을 출력 결과에 포함시키고자 할 때
	2. 표현식 구문
		%=출력할내용%
		
# 선언부 (Declaration)
	1. 스크립트릿이나 표현식에서 사용할 수 있는 함수를 선언 할 때
	2. 선언부 형식
		%!
		public int sum(int price, int cnt){
			return price*cnt;
		}
		%
	3. 호출
		int tot = sum(3000,2);
 -->

	<table border style="border-collapse:collapse;">
	
	<%
	String name = "엣헴";					//변수 선언
	for(int cnt=1; cnt<=10; cnt++){		//반복문 처리
	
	%>
	
	<tr><td><%=cnt%></td><td><%=name%></td></tr>
	
	
	<%
	}
	%>
	
	</table>
	
	
<!-- 
	ex1) 과일명, 가격, 갯수 선언, table에 출력
-->
	
	<br><br>
	
	<%
	String fName = "사과";
	int price = 4000;
	int num01 = 100;
	%>
	
	
	<table border>
	<tr><th>뭔가</th>		<th>데이터내용</th><tr>
	<tr><th>과일 이름</th>	<td><%=fName %></td><tr>
	<tr><th>가격</th>		<td><%=price %></td><tr>
	<tr><th>갯수</th>		<td><%=num01 %></td><tr>
	<tr><th>총 가격</th>	<td><%=price*num01 %>원</td><tr>
	</table>
	
<!--
	ex2) 빨/주/노/초/파/남/보 h3를 출력
-->

	<br><br>
	
	<table border style="border-collapse:collapse;">
	<%
	String [] color = {"#FF7E9D", "#FFCB9C", "#FFFF96", "#82F9B7", "#BEEFFF", "#6478FF", "#A390EE"};
	
	for (int cnt=0; cnt<=6; cnt++) {
	%>
	
	<tr style="background-color:<%=color[cnt]%>"><td><%=color[cnt]%></td></tr>
	
	
	<%
	}
	%>
	</table>
	
	<br><br>
	
<!--
	ex3) 4X4 테이블을 for문을 이용해서 1~16번호와 함께 출력
--> 	

	<table border style="border-collapse:collapse;">
	
	<%
	int num02 = 1;
	for (int cnt01=0; cnt01<=3; cnt01++){
	%>
	
	<tr>
	
	<%
	for (int cnt02=0; cnt02<=3; cnt02++){
	%>
	
	<td><%=num02%></td>
	
	<%
	num02++;
	}
	%>
	
	</tr>
	
	<%
	}
	%>
	
	</table>


<!-- 
	ex4) 메뉴 java 배열 선언, ol li를 이용하여, 메뉴리스트 출력
-->	

	<%
	String [] menuCate = {"한식","일식","중식"};
	String [][][] menu01 = {
			{{"김치찌개","8000"},	{"소갈비찜","35000"},	{"김치볶음밥","6000"}},
			{{"연어초밥","14000"},	{"돈코츠라멘","8000"},	{"규동","8000"}},
			{{"유산슬","35000"},	{"짜장면","7500"},	{"삼선볶음밥","8000"}}
			}; 
	for (int cnt03=0; cnt03<menuCate.length; cnt03++){
	%>

	<ol>
		<%=menuCate[cnt03]%>
				

		<li></li>
		<li></li>
	
	</ol>
	
	
	<%
	}
	%>

	<br><br>
	
	<%
	ArrayList<Product> plist = new ArrayList<Product>();
	plist.add(new Product("사과", 3000, 2));
	plist.add(new Product("바나나", 4000, 3));
	plist.add(new Product("딸기", 12000, 3));
	plist.add(new Product("오렌지", 2000, 5));
	
	%>
	
	<table border style="border-collapse:collapse;">
	
		<tr><th>번호</th><th>물건명</th><th>가격</th><th>갯수</th><th>총가격</th>
		
		<%
		int cnt=1;
		for(Product pro:plist){ %>
		
		<tr>
			<td><%=cnt++ %></td>
			<td><%=pro.getName() %></td>
			<td><%=pro.getPrice() %></td>
			<td><%=pro.getNum() %></td>
			<td><%=pro.getPrice()*pro.getNum() %></td>
		</tr>
		
		<%
		}
		%>
	
	</table>
	
	<br><br>
	
	<%
	ArrayList<Book> book01 = new ArrayList<Book>();
	book01.add(new Book("해리포터와 마법사의 돌","JK롤링","출판사는",18000));
	book01.add(new Book("해리포터와 비밀의 방","JK롤링","어딘지",18000));
	book01.add(new Book("해리포터와 아즈카반의 죄수","JK롤링","모르",18000));
	book01.add(new Book("해리포터와 불의 잔","JK롤링","게쒀요",36000));
	
	%>
	
	<table border style="border-collapse:collapse;">
		<tr><td colspan=4>도서목록</td></tr>
		<tr><td>도서제목</td><td>도서저자</td><td>도서출판사</td><td>책가격</td></tr>
		
		<%
		for(Book num:book01){
		%>
		
		<tr>
		<td><%=num.getTitle() %></td>
		<td><%=num.getAuthor() %></td>
		<td><%=num.getPublisher() %></td>
		<td><%=num.getPrice() %></td>
		</tr>
		
		<%
		}
		%>
	
	</table>
	
<!-- 
	ex) declaration 연습
		Login 메서드로 ID와 PASS를 입력, himan//7777일 때는 인증성공, 그 외에는 인증 실패
	
-->

	<br><br>

	<%!
	String result;
	public String login(String id, String password){
		if (id=="himan" & password=="7777"){
			result = "LOGIN SUCCESS";
		} else {
			result = "LOGIN FAILED";
		}
		return result;
	}
	/*	id.equals("himan") && pass.equals("7777")? "로그인성공":"로그인실패";
	*/
	%>
	
	<%
	String inputId = "himan";
	String inputPass = "7777";
	%>
	
	<h2>입력된 ID:<%=inputId%></h2>
	<h2>입력된 PW:<%=inputPass %></h2>
	<h2>Login 결과:<%=login(inputId, inputPass) %></h2>

</body>
</html>