<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q&A(1:1문의)</title>
    <link rel="stylesheet" href="../css/Q&A(1_1문의).css">
</head>
<body>

    <div class="qna_area">
        <div class="wrap">
            <nav>
                <ul>
                    <li><a href="공지사항.html">공지사항</a></li>
                    <li><a href="FAQ및이용가이드.html">FAQ및이용가이드</a></li>
                    <li><a href="#">Q&A(1:1문의)</a></li>
                </ul>
            </nav>
            <main>
                <form action="#" class="reg_qna">
                    <div class="sel_cate">
                        <input type="checkbox" name="카테고리" id="cate_check">
                        <h1><span>카테고리를 선택해주세요</span><i></i></h1>
                        <div class="cate_li" hidden='true'>
                            <ul>
                                <li><input type="radio" name="선택한카테고리" value="계정문의">계정문의</li>
                                <li><input type="radio" name="선택한카테고리" value="차단/제재">차단/제재</li>
                                <li><input type="radio" name="선택한카테고리" value="거래신고">거래신고</li>
                                <li><input type="radio" name="선택한카테고리" value="서비스기능">서비스기능</li>
                                <li><input type="radio" name="선택한카테고리" value="광고전문상점">광고전문상점</li>
                                <li><input type="radio" name="선택한카테고리" value="서비스장애">서비스장애</li>
                                <li><input type="radio" name="선택한카테고리" value="제안">제안</li>
                            </ul>
                        </div>
                    </div>
                    <textarea rows="20" name="내용"></textarea>
                    <button type="submit">등록하기</button>
                </form>

                <h1>등록된 질문들</h1>
                <section class="qna_li">
                    <ul>
                        <li>
                            <input type="checkbox">
                            <div class="title">
                                <h1>팔로우숫자가 갑자기 줄었어요</h1>
                                <i>화살표아이콘</i>
                            </div>
                            <p>개인정보 법이 개정되면서 1년 이상 로그인 하지 않은 사용자의 계정을 정기적으로 지우고 있습니다.

                                계정을 지우게 되면 그 사람의 팔로우가 무효가 되면서 상점의 팔로워 숫자가 줄어드는 것입니다. 실질적인 고객이 줄어드는 것은 아니니 너무 심려치 마시기 바랍니다.
                                
                                감사합니다.</p>
                        </li>
                        <li>
                            <input type="checkbox">
                            <div class="title">
                                <h1>전문 상점으로 전환하고 싶어요</h1>
                                <i>화살표아이콘</i>
                            </div>
                            <p>전문상점으로 전환하고 싶으시다면 [설정-전문상점전환신청]으로 메일 보내주시면 관련 부서에서

                                확인 후 도움을 드리겠습니다.</p>
                        </li>
                        <li>
                            <input type="checkbox">
                            <div class="title">
                                <h1>찜 취소는 어떻게 하나요?</h1>
                                <i>화살표아이콘</i>
                            </div>
                            <p>찜하신 것을 취소하고 싶으신가요?

                                찜 취소는 찜한 상품을 들어가 찜을 한 번 더 눌러주면 찜하신 것이 해제됩니다.</p>
                        </li>
                        <li>
                            <input type="checkbox">
                            <div class="title">
                                <h1>상품업로드가 되지 않아요</h1>
                                <i>화살표아이콘</i>
                            </div>
                            <p>상품 업로드 시 업로드 실패하는 경우에는 현재 이용 중인 번개장터 앱 버전이 최신 버전인지 확인해 주시기 바랍니다. 

                                하위 버전 이용 중인 경우에는 상품 업로드 실패 가능성이 매우 크므로 필히 번개장터 앱이 최신 버전으로 업데이트 되었는지 확인해 주시기 바랍니다. 
                                
                                    
                                
                                    
                                
                                * 최신 버전임에도 불구하고 업데이트 실패해요!! 
                                
                                >> 네트워크가 원활하지 않은 경우 서버에 상품 등록이 어려울 수 있으므로 
                                
                                현재 이용 중인 네트워크가 아닌 다른 네트워크로 연결하여 상품 업로드 진행해 주세요^^
                                
                                    </p>
                        </li>
                    </ul>
                </section>
            </main>
        </div>
    </div>
    <script src="../js/Q&A(1_1문의).js"></script>
</body>
</html>