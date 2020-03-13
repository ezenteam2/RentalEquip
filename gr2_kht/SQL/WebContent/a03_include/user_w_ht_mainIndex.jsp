<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>

body{
	font-family: 'Noto Sans KR', sans-serif;
  	}


.mainIndexRoot_ht{
	}
	
.mainIndexTop_ht{
	font-size:14px;
	height:45px;
	padding-top:10px;
	
	width:1050px;
	margin-left:22%;
	

	}
	
.mainIndexTopContent1_ht{
	width:120px;
	height:50px;
	vertical-align:middle;
	display:inline-block;
	}

.mainIndexTopContent2_ht{
	width:60px;
	height:50px;
	vertical-align:middle;
	display:inline-block;
	
	}
	
.mainIndexMiddle_ht{
	margin-left:22%;
	width:1062px;
	
	height:140px;
	font-size:14px;
	}

.mainIndexMiddleContent1_ht{
	width:120px;
	height:50px;
	
	
	margin-left:60px;
	margin-top:10px;
	display:inline-block;
	}

.mainIndexMiddleContent2_ht{
	width:70px;
	height:50px;
	
	
	margin-top:10px;
	margin-right:5px;
	display:inline-block;
	}
	
.mainIndexMiddleContentImage_ht{
	width:20px;
	margin-right:5px;
	}

.mainIndexTopMiddle_ht{
	position:fixed;
	width:100%;
	top:0;
	
	background-color:white;
	}

.mainIndexBottom_ht{
	
	width:1050px;
	text-align:center;
	background-color:#EBFBFF;
	padding:20px;
	}
	
.mainIndexFooter_ht{
	margin-left:22%;
	width:1050px;
	font-size:14px;
	padding-top:20px;
	}

</style>

<title>사지말고 빌리세요 ZENTAL</title>

</head>

<body>

	
	<header class="mainIndexTopMiddle_ht">
		<div class="mainIndexTop_ht">			
				<div class="mainIndexTopContent1_ht" onclick = "changeIframeUrl('user_w_ht_coupon.jsp')"><img src="image/mainIndexTopAppLink.jpg" style="width:25px;vertical-align:middle;">앱다운로드</div>
				<div class="mainIndexTopContent1_ht" onclick = "changeIframeUrl('user_w_ht_grade.jsp')"><img src="image/mainIndexTopFavorite.jpg" style="width:25px;vertical-align:middle;">즐겨찾기</div>			
				<div class="mainIndexTopContent2_ht" style="margin-left:600px;" onclick = "location.href='../gr2_ysh/jsp/login.jsp'">로그인</div>   
				<div class="mainIndexTopContent2_ht" onclick = "location.href='../gr2_ysh/jsp/signup.jsp'">회원가입</div>   
				<div class="mainIndexTopContent2_ht" onclick = "changeIframeUrl('../gr2_kkb/jsp/user_w_kb_MypageMain.jsp')">내 렌탈</div>			
		</div>
		
		
		<div class="mainIndexMiddle_ht">
			<div style="vertical-align:middle;height:80px;padding-top:20px;">
				<div style="display:inline-block;vertical-align:top;"><img src="image/mainIndexLogo.jpg" height="50px;" onclick = "changeIframeUrl('user_w_ht_mainEnter.jsp')"></div>
				<div style="display:inline-block;vertical-align:top;"><input style="width:500px;height:40px;border:solid 2px red;margin-left:70px;padding-left:20px;" type="text" placeholder="상품명, 카테고리 입력" ></div>
				<div class="mainIndexMiddleContent1_ht" onclick = "changeIframeUrl('../gr2_kys/user_w_ys_uploadProducts.html')"><img src="image/registRentalEquip.png" class="mainIndexMiddleContentImage_ht">렌탈 상품 등록</div>   
				<div class="mainIndexMiddleContent2_ht" onclick = "changeIframeUrl('../gr2_kkb/jsp/user_w_kb_MypageMain.jsp')"><img src="image/myRental.png" class="mainIndexMiddleContentImage_ht">내 렌탈</div>   
				<div class="mainIndexMiddleContent2_ht"><img src="image/talk.png" class="mainIndexMiddleContentImage_ht" onclick = "changeIframeUrl('')">젠탈톡</div>
			<br>
			</div>
			<div style="padding-left:20px;">
			<img src="image/mainIndexCategoryMenuIcon.png" width="25px"  onclick = "changeIframeUrl('../gr2_kys/category.html')">
			</div>
		</div>		
	</header>
	
	<div style="height:190px;"></div>	
	<div class="mainIndexRoot_ht">	
		
		<jsp:include page="../gr2_lhj/html/공지사항.jsp">
		</jsp:include> 
		
		
		<footer class="mainIndexFooter_ht">
		
		<div class="mainIndexBottom_ht">
			<span class="mainIndexTopContent_ht" onclick = "changeIframeUrl('../gr2_lhj/html/공지사항.jsp')">공지사항</span> ||
			<span class="mainIndexTopContent_ht" onclick = "changeIframeUrl('../gr2_lhj/html/FAQ및이용가이드.jsp')">FAQ 이용가이드</span> ||
			<span class="mainIndexTopContent_ht" onclick = "changeIframeUrl('../gr2_lhj/html/Q&A(1_1문의).jsp')">QnA</span>			
		</div>
		
		<img src="image/mainIndexLogo.jpg" width="100px" style="margin-right:10px;margin-top:10px;margin-left:10px;"><span style="font-weight:bold;">회사소개<br>
		EZEN에서 만나는 새로운 서비스! 사지말고 빌리세요 ZENTAL! 누구나, 무엇이든 쉽고 편하고 안전하게 렌탈하는 세상을 꿈꾸고 있습니다.</span>
		<img src="image/mainIndexFooterFacebookIcon.png" width="25px;">
		<img src="image/mainIndexFooterInstagramIcon.png" width="25px;">
		<img src="image/mainIndexFooterNaverBlogIcon.png" width="25px;"> <br><br>
		EZEN GROUP2 권기범 김용승 김현태 유서희 이형준 123-45-678912 사실 사업자 번호는 가짜에여 실제로 하게 되면 제대로 할게여<br>
		주소 : 서울특별시 종각역 4번출구에서 5초거리 3, 5, 6층  TEL/FAX 번호는 부끄러우니까 다음에 드림 :^)<br>
		ZENTAL㈜은 통신판매중개자로서 렌탈마켓 ZENTAL의 거래 당사자가 아니며, 입점판매가 등록한 상품정보 및 거래에 대해 책임을 지지 않습니다.<br>
		
		</footer>

	</div>

</body>

<script type = "text/javascript">

function changeIframeUrl(url){
	  document.getElementById("main_frame").src = url;	
	}

function setIFrameHeight(obj){
if(obj.contentDocument){
    obj.height = obj.contentDocument.body.offsetHeight + 40;
} else {
    obj.height = obj.contentWindow.document.body.scrollHeight;
}
}

</script>

</html>