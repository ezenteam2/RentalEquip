<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

th{
	border-bottom:solid 3px;
	padding-top:20px;
	}
	
tr:nth-child(2n+1){
	background-color:#F0FFF0;
	}
tr:first-child{
	background-color:white;}
	

td:first-child, td:last-child{
	text-align:center;
	}

.currentPointContainer{
	margin-left:22%;
	width:1050px;
	font-size:25px;
	font-weight:bold;
	padding-top:15px;
	padding-bottom:10px;
	text-align:right;
	}	

.pointTitleContainer{
	margin-left:22%;
	width:1050px;
	font-size:30px;
	font-weight:bold;
	padding-top:15px;
	padding-bottom:10px;
	border-bottom:solid 3px #dcdcdc;
	}

.pointTableContainer{
	margin-left:22%;
	width:1050px;
	padding:30px;
	}
	
.pointTable{
	width:990px;
	border-bottom:solid 3px #dcdcdc;
	}
	
</style>

<title>Insert title here</title>
</head>
<body>

	<div class="currentPointContainer">현재 보유 포인트 3750p</div>

	<div class="pointTitleContainer">포인트 적립 내역</div>
	<div class="pointTableContainer">
	
		<table class="pointTable">
			<tr><th width="25%">적립 날짜</th><th width="50%">적립 내용</th><th width="25%">적립 포인트</th></tr>

			<%for (int idx03=0;idx03<5;idx03++){ %>
			<tr><td>2020-03-16</td><td>렌탈 장비 반납 완료</td><td>20P</td></tr>
			<%} %>

		</table>
	
	</div>
	<div class="pointTitleContainer">포인트 사용 내역</div>
	<div class="pointTableContainer">
	
		<table class="pointTable">
			<tr><th width="25%">사용 날짜</th><th width="50%">사용 내용</th><th width="25%">사용 포인트</th></tr>

			<%for (int idx03=0;idx03<5;idx03++){ %>
			<tr><td>2020-03-10</td><td>뭔갈 빌렸음</td><td>3500P</td></tr>
			<%} %>

		</table>	
	
	</div>

</body>
</html>