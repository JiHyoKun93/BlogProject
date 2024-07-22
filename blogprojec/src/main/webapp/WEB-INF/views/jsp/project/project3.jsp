<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콘솔 프로젝트</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />
<script>
	document.querySelector("#urlCon").style.display="none";
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/project/project3.css" />

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">

/* 모바일일 경우 실행되는 CSS */
@media screen and (hover: none) and (pointer: coarse) {
	.flex_vertical{
		width: 100%;
	}
}
</style>
</head>
<body>
<div class="flex_center">
            <div id="intro_txt_wrap" class="flex_center">
                <div id="intro_txt_main">
                    <p style=" font-size: 50px; margin-bottom: 10px; font-weight: 600;">Console Project - CUPENG</p>
                </div>
            </div>
</div>
	<div id="content">
		<div id="container">
			<div>
			  <div class="slider_container">
			  <div class="slider">
			    <div class="slider-content">
			    
			    <div style="position: absolute; left: 0; z-index: 99999; height: 100%; display: flex; justify-content: center; align-items: center;">
				  	<button class="prev-btn" onclick="document.querySelectorAll('.slider-navigation > button')[0].click();">이전</button>
				  </div>
			    
			      <figure class="show">
			        <img src="/resources/image/cupeng/1.png" alt="1">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/2.png" alt="2">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/3.png" alt="3">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/4.png" alt="4">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/5.png" alt="5">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/6.png" alt="6">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/7.png" alt="7">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/8.png" alt="8">
			      </figure>
			      <figure>
			        <img src="/resources/image/cupeng/9.png" alt="9">
			      </figure>
			      
			      <div style="position: absolute; right: 0; z-index: 99999; height: 100%; display: flex; justify-content: center; align-items: center;">
					  	<button class="next-btn" onclick="document.querySelectorAll('.slider-navigation > button')[1].click();">다음</button>
				  	</div>
			    </div>
			    <div class="slider-navigation" style='display: none'>
			      <button>
			        이전
			      </button>
			      <button>
			        다음
			      </button>
			    </div>
			  </div>
			</div>


			<div class="flex_horizontal">
				<div class="flex_vertical color_line_box">
						<p class="sub_Title">프로젝트 소개 및 기획의도</p>
						<p class="sub_text">쇼핑몰 CUPENG / 3명</p>
						<p class="sub_text">프로젝트 기간 : 2023.06.14 ~ 2023.06.19 (총 5일)</p>
						<p class="sub_text">참고 사이트 : 쿠팡</p>
						<p class="sub_text">기획 의도 : JAVA, ORACLE DB를 이용하여</p>
						<p class="sub_text" style="margin-left: 100px">프로젝트 제작 및 JAVA와 DB의 이해</p>
						<p></p>
					
						<p class="sub_Title sub">사용 기술</p>
						<p class="sub_text">JAVA 8 / ORACLE</p>
					
						<p class="sub_Title sub">프로젝트 기능</p>
						<p class="sub_text">로그인</p>
						<p class="sub_text">상품 검색</p>
						<p class="sub_text">카테고리로 상품 검색</p>
						<p class="sub_text">장바구니 및 구매</p>
						<p class="sub_text">구매내역</p>
						<p class="sub_text">카드등록</p>
						<p class="sub_text">리뷰</p>
						<p class="sub_text">관리자 페이지</p>
					</div>
					
				<div class="flex_vertical color_line_box">
						<p class="sub_Title">담당 업무</p>
						<p class="sub_text_t">상품 리스트</p>
						<p class="sub_text_p"> - 데이터베이스에서 정렬된 데이터를 10개씩 가져와서 보여줌</p>
						<p class="sub_text_t">장바구니</p>
						<p class="sub_text_p"> - 싱글톤패턴을 이용하여 검색과 카테고리로 구매시 같은 리스트에 상품 등록</p>
						<p class="sub_text_p"> - 장바구니 테이블을 생성하여 insert와 delete로 장바구니 구현</p>
						<p class="sub_text_t">구매내역</p>
						<p class="sub_text_p"> - 구매시 장바구니 테이블에서 해당 아이디에 맞는 데이터를</p>
						<p class="sub_text_p"> - 구매내역으로 복사하며 장바구니 테이블에서는 내역 삭제</p>
						<p class="sub_text_t">카드등록</p>
						<p class="sub_text_p"> - 카드 등록 테이블을 생성하여 카드정보를 저장</p>
					
					</div>
					
				</div>
			
			</div>
		</div>
	</div>

<script src="/resources/js/project/project3.js"></script>
<script type="text/javascript">
		let me = document.querySelector('[data-menu="CUPENG"]');
		me.classList.add('on');
	</script>
</body>
</html>