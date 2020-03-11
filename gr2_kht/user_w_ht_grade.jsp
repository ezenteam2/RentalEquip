<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

.gradeTitle{
	margin-left:22%;
	width:1050px;
	font-size:30px;
	font-weight:bold;
	padding-top:15px;
	padding-bottom:10px;
	border-bottom:solid 3px #dcdcdc;
	}

.gradeImagesContainer{
	margin-left:22%;
	width:1050px;
	padding-top:30px;
	padding-bottom:30px;
	}

.gradeImgContainer{
	display:inline-block;
	margin:5px;
	width:190px;
	height:190px;
	}

.gradeImg{
	width:190px;
	height:190px;
	}

.gradeMemCurrent{
	margin-left:22%;
	width:1050px;
	padding-left:40px;
	font-size:20px;
	font-weight:bold;
	}

th{
	font-size:25px;
	font-weight:bolder;
	padding-top:10px;
	padding-bottom:10px;
	}

.gradeDetail{
	margin-top:60px;
	margin-left:22%;
	width:1050px;
	}
	
.gradeDetailImg{
	width:50px;
	height:50px;
	}

tr:first-child{
	border-bottom:solid 3px #dcdcdc;
	}

tr:nth-child(2n){
	background-color:#F0FFF0;
	}
	
td:first-child{
	text-align:center;
	vertical-align:middle;
	}

td:nth-child(2){
	text-align:center;
	font-size:20px;
	font-weight:bold;
	}
	
td:nth-child(3){
	padding-left:20px;
	font-size:15px;
	font-weight:bold;
	}

td:nth-child(4){
	padding-left:20px;
	font-size:15px;
	font-weight:bold;
	}

.gradeFormula{
	margin-top:50px;
	margin-left:22%;
	margin-bottom:50px;
	padding-right:50px;
	width:1050px;
	font-size:15px;
	font-weight:bold;
	text-align:right;
	}

</style>

<title>Insert title here</title>
</head>
<body>

	<div class="gradeTitle">등급</div>

	<div class="gradeImagesContainer">
	
		<div class="gradeImgContainer"><img class="gradeImg" src="image/grade_normal.png"></div>
		<div class="gradeImgContainer"><img class="gradeImg" src="image/grade_silver.png"></div>
		<div class="gradeImgContainer"><img class="gradeImg" src="image/grade_gold.png"></div>
		<div class="gradeImgContainer"><img class="gradeImg" src="image/grade_vip.png"></div>
		<div class="gradeImgContainer"><img class="gradeImg" src="image/grade_vvip.png"></div>
		
	</div>

	<div class="gradeMemCurrent">
	회원님의 현재 등급은 골드입니다<br>
	다음 등급까지 XXXX의 활동이 더 필요합니다
	</div>

	<div class="gradeDetail">
	
		<table width="1000px">
		
		<tr>
			<th width="10%"></th>
			<th width="20%">등급</th>
			<th width="25%">등급 조건</th>
			<th width="45%">등급 혜택</th>
		</tr>
		
		<tr>
			<td><img class="gradeDetailImg" src="image/grade_normal.png"></td>
			<td>일반</td>
			<td>산출 점수 100점 이상</td>
			<td>거래 금액 기준 1% point 적립</td>
		</tr>
		<tr>
			<td><img class="gradeDetailImg" src="image/grade_silver.png"></td>
			<td>실버</td>
			<td>산출 점수 300점 이상</td>
			<td>거래 금액 기준 1.5% point 적립</td>
		</tr>
		<tr>
			<td><img class="gradeDetailImg" src="image/grade_gold.png"></td>
			<td>골드</td>
			<td>산출 점수 700점 이상</td>
			<td>거래 금액 기준 2% point 적립</td>
		</tr>
		<tr>
			<td><img class="gradeDetailImg" src="image/grade_vip.png"></td>
			<td>VIP</td>
			<td>산출 점수 1300점 이상</td>
			<td>거래 금액 기준 2.5% point 적립</td>
		</tr>
		<tr>
			<td><img class="gradeDetailImg" src="image/grade_vvip.png"></td>
			<td>VVIP</td>
			<td>산출 점수 2000점 이상</td>
			<td>거래 금액 기준 3% point 적립</td>
		</tr>
		
		</table>
	
	</div>
	
	<div class="gradeFormula">
	
	****점수 산출 방식<br>
	(거래횟수 * 0.3) + (평균평점 * 0.1) + (거래금액/100000 * 0.6)
	
	
	</div>
	

</body>

<script type="text/javascript">

</script>

</html>