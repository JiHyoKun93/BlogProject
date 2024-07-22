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
<title>게임 프로젝트</title>
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
                    <p style=" font-size: 50px; margin-bottom: 10px; font-weight: 600;">Unity Project - INFINITY BALL</p>
                </div>
            </div>
</div>

	<div id="content">
		<div id="container">
			<div>
			  <div class="slider_container">
			  <div class="slider">
			    <div class="slider-content">
			    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/RAcDy5Q__I0?si=mglV4L_h2MZb3k_D" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			    </div>
			  </div>
			</div>


			<div class="flex_horizontal">
				<div class="flex_vertical color_line_box">
						<p class="sub_Title">프로젝트 소개 및 기획의도</p>
						<p class="sub_text">INFINITY BALL / 1명</p>
						<p class="sub_text">프로젝트 기간 : 2023.03 ~ 2023.04</p>
						<p class="sub_text">기획 의도 : 출퇴근 및 화장실에서도 간단하게 할수 있는 게임</p>
						<p class="sub_text_c">한손으로 즐길수 있는 게임</p>
						<p></p>
					
						<p class="sub_Title sub">사용 기술</p>
						<p class="sub_text">C# / Unity</p>
						
					</div>
					
				<div class="flex_vertical color_line_box">
						<p class="sub_Title">프로젝트 기능</p>
						<p class="sub_text_t">메인 화면</p>
						<p class="sub_text_p"> - 파일매니저 스크립트를 이용하여 시작시 저장된 정보를 불러와 적용</p>
						<p class="sub_text_p"> - 처음 시작이라면 기본파일 생성</p>
						<p class="sub_text_p"> - 재시작시에도 적용된 스킨을 적용</p>
						<p class="sub_text_t">매니저 스크립트</p>
						<p class="sub_text_p"> - 벽 또는 아이템은 계속해서 재활용 할수 있도록 매니저 스크립트를 생성하여 구현</p>
						<p class="sub_text_t">무한이 생성되는 벽</p>
						<p class="sub_text_p"> - 벽이 계속 생성되는 것을 막기 위해 빈 오브젝트를 지정해준뒤 그 이상의 좌표가 되면 생성 중단</p>
						<p class="sub_text_p"> - 계속하여 생성 파괴를 반복하기보단 재활용 하는방법으로 일정 범위 밖으로 벽이 사라질경우 벽을 비활성화 한뒤 재활용</p>
					
					</div>
					
				</div>
			
			</div>
		</div>
	</div>

<script src="/resources/js/project/project3.js"></script>
<script type="text/javascript">
		let me = document.querySelector('[data-menu="INFINITYBALL"]');
		me.classList.add('on');
	</script>
</body>
</html>