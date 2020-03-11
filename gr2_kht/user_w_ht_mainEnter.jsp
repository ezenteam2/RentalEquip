<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
.mainEnterCarousel{
	}

.mainEnterRecommendTitle{
	margin-left:22%;
	width:1050px;
	font-size:30px;
	font-weight:bold;
	}

.mainEnterRecommendContainer{
	margin-left:22%;
	width:1050px;
	padding-top:30px;
	padding-bottom:30px;
	background-color:#EBFBFF;
	}

.mainEnterRecommendContent{
	display:inline-block;
	margin-left:5px;
	width:230px;
	padding:10px;
	}
	
.RecommendContentImageContainer{
	width:230px;
	height:230px;
	}
	
.RecommendContentImage{
	width:230px;
	border-radius:50%;
	}

.RecommendContentTitle{
	padding-top:10px;
	padding-bottom:10px;
	border-bottom:solid 2px;
	}

.RecommendContentPrice{
	padding-top:10px;
	font-weight:bold;
	}

.mainEnterCategoryTitle{
	margin-left:22%;
	width:1010px;
	padding:20px;
	font-size:20px;
	font-weight:bold;
	}

.mainEnterCategoryContainer{
	display:inline-block;
	margin-left:22%;
	width:1050px;
	padding-top:10px;
	padding-bottom:10px;
	}

.mainEnterCategoryContent{
	display:inline-block;
	margin-left:3px;
	width:180px;
	padding:10px;
	border:solid 1px #dcdcdc;
	}

.mainEnterCategoryContentImage{
	width:180px;
	}

.mainEnterCategoryContentTitle{
	padding-top:10px;
	padding-bottom:10px;
	border-bottom:solid 2px;
	}

.mainEnterCategoryContentPrice{
	padding-top:10px;
	font-weight:bold;
	}


</style>

<title>Insert title here</title>
</head>
<body>

	<div class="mainEnterCarousel"></div>

	<div class="mainEnterRecommendTitle">ZENTAL 추천 렌탈 상품</div>

	<div class="mainEnterRecommendContainer">

<%
	for (int idx=0; idx<4; idx++){
		%>
	
		<div class="mainEnterRecommendContent">
			<div class="RecommendContentImageContainer"><img src="image/rentalItem<%=idx+1%>.png" class="RecommendContentImage"></div>
			<div class="RecommendContentTitle">꼼데가르송 티셔츠</div>
			<div class="RecommendContentPrice">23000원/1일</div>
		</div>

<%
}
%>
	</div>
	
	<div style="margin-left:22%;width:1050px;font-size:25px;font-weight:bold;padding-top:10px;padding-bottom:10px;">
	카테고리별 렌탈 상품
	</div>


<%
	String category [] = {"IT", "가전", "가구", "스포츠", "레저"}; 
%>


<%
	for (int idx02=0; idx02<5; idx02++){
%>
	
	<div class="mainEnterCategoryTitle"><%=category[idx02] %></div>

	<div class="mainEnterCategoryContainer">

	<%
		for (int idx03=0; idx03<5; idx03++){
	%>
		<div class="mainEnterCategoryContent">
			<div><img src="image/rentalItem<%=idx03+1%>.png" class="mainEnterCategoryContentImage"></div>
			<div class="mainEnterCategoryContentTitle">꼼데가르송 티셔츠</div>
			<div class="mainEnterCategoryContentPrice">23000원/1일</div>			
		</div>
	<%
		}
	%>
	</div>

<%
	}
%>
	
</body>
</html>