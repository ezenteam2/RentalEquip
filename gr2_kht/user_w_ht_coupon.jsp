<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*,zental.gr2_kht.*"%>
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
	display:inline-block;
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

	<%
		UserCoupon_ht u1 = new UserCoupon_ht();
		UserCoupon_ht u2 = new UserCoupon_ht();
		ArrayList<UserCouponVO_ht> list=u1.getCurrCoupon();
		ArrayList<UserCouponVO_ht> list2=u1.getUsedCoupon();
	%>


	<div class="couponTitleContainer">보유한 쿠폰
	</div>



			
	<div class="couponContainer">

<%for(UserCouponVO_ht u:list){ %>
		<div class="coupon">

			<div class="couponContent">
				<div class="couponPrice">
				<%=u.getCou_title() %><br>
				<%=u.getCou_price() %>원<br>
				</div>
				<div class="couponDuration">
				<%=u.getMemcou_sdate() %>까지
				</div>
			</div>
					
		</div>
<%} %>	
	</div>
	
	

	<div class="couponTitleContainer">사용한 쿠폰
	</div>

	<div class="couponContainer">
		
	<%for(UserCouponVO_ht u3:list2){ %>

		<div class="coupon">
			<div class="couponContent">
				<div class="couponPrice">
				<%=u3.getCou_title() %><br>
				<%=u3.getCou_price() %><br>
				</div>
				<div class="couponDuration">
				<%=u3.getMemcou_sdate() %> <br>
				사용완료
				</div>
			</div>				
		</div>
		<%} %>	
	</div>

</body>

<script type = "text/javascript">

</script>

</html>