<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

.couponTitleContainer{
	margin-left:22%;
	width:1050px;
	font-size:30px;
	font-weight:bold;
	padding-top:15px;
	padding-bottom:10px;
	border-bottom:solid 3px #dcdcdc;
	}

.couponContainer{
	margin-left:22%;
	width:1050px;
	padding-top:30px;
	padding-bottom:30px;
	}

.coupon{
	display:inline-block;
	width:300px;
	height:200px;
	background-color:#FFD2D2;
	margin:20px;
	}
	
.couponContent{
	display:inline-block;
	width:220px;
	height:190px;
	text-align:center;
	border:solid 5px #FFD2D2;
	margin:0;
	}

.couponPrice{
	height:110px;
	padding-top:20px;
	text-align:center;
	font-size:30px;
	font-weight:bold;
	background-color:white;
	}

.couponDuration{
	height:60px;
	text-align:center;
	font-size:15px;
	font-color:#a0a0a0;
	font-weight:bold;
	background-color:white;
	}


</style>

<title>Insert title here</title>
</head>

<body>

	<div class="couponTitleContainer">보유한 쿠폰
	</div>

	<div class="couponContainer">
		<%for (int idx01=0; idx01<3; idx01++){ %>
		<div class="coupon">
			<div class="couponContent">
				<div class="couponPrice">
				생일 쿠폰<br>
				10,000<br>
				</div>
				<div class="couponDuration">
				2020년 3월 26일까지
				</div>
			</div>				
		</div>
		<%} %>
	</div>

	<div class="couponTitleContainer">사용한 쿠폰
	</div>

	<div class="couponContainer">
		
		<%for (int idx01=0; idx01<3; idx01++){ %>
		<div class="coupon">
			<div class="couponContent">
				<div class="couponPrice">
				생일 쿠폰<br>
				10,000<br>
				</div>
				<div class="couponDuration">
				2020년 3월 26일까지
				</div>
			</div>				
		</div>
		<%} %>
	</div>

</body>

<script type = "text/javascript">

</script>

</html>