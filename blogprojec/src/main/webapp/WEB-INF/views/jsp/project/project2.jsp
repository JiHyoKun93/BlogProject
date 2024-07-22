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
<title>Semi Project</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />
<script>
	var url = document.querySelector("#projectUrl");
	var gitUrl = document.querySelector("#gitUrl");
	
	url.href = "http://jhgpage.com/semiProject/eggplant/main.do";
	gitUrl.href = "https://github.com/JiHyoKun93/SemiProject";
	
</script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/project/project2.css" />
	
<style type="text/css">
.navi{
    position: sticky;
    top: 0;
    width: 70px;
    height: 100%;
    z-index: 99999;
    border-radius: 10px;
	padding: 70px 0 10px 0;
	
}
@media screen and (max-width: calc(768px - 1px)) {
	.navi{
		display: none;
	}
	
}
.navi_panel{
	position: absolute;
	right: 50px;
    top: 50px;
}

.navi_sub{
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 5px;
    }
    
.icon_circle{
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background-color: #45a7e9;
    display: flex;
    justify-content: center;
    align-items: center;
    fill: #fff;
    border: 1px solid #fff;
    
}

.icon_circle:hover{
	background-color: #2e9ae2;
}

.icon_circle > svg {
transform: rotate(45deg);
cursor: pointer;
}

.navi_text{
	font-weight: 600;
	cursor: pointer;"
}

.navi_text:hover {
	font-size: 18px;
}

/* 모바일일 경우 실행되는 CSS */
@media screen and (hover: none) and (pointer: coarse) {
	.flex_vertical{
		width: 100%;
	}
}
</style>
</head>
<body>
<div class="navi_panel">
<div class="navi">
	<div class="navi_sub">
		<div>
		<div class="icon_circle" onclick="gopage();">
		<svg xmlns="http://www.w3.org/2000/svg" height="30" viewBox="0 -960 960 960" width="30"><path d="M600-80q-127-48-203.5-158T320-484q0-91 36-172.5T458-800H320v-80h280v280h-80v-148q-57 51-88.5 119.5T400-484q0 102 54 187.5T600-167v87Z"/></svg>
		
		</div>
		</div>
		<div class="navi_text" onclick="gopage();">
		바로가기
		</div>
	</div>
</div>
</div>

<div class="flex_center">
            <div id="intro_txt_wrap" class="flex_center">
                <div id="intro_txt_main">
                    <a href="http://jhgpage.com/semiProject/eggplant/main.do"
				style="    font-size: 50px; margin-bottom: 10px; font-weight: 600;">
					Semi Project - EGG PLANT 뱅킹
				</a>
                </div>
                <div id="intro_txt_sub" style="letter-spacing: 0;">
					<a href="http://jhgpage.com/semiProject/eggplant/main.do">클릭시 해당 프로젝트로 이동합니다</a>
                </div>
            </div>
        </div>

	<div id="content">
		<div id="container">
			<div class="">
				<div class="eggplant_gif" style="background-image: url('resources/image/eggplant.gif')"></div>
				
			<div class="flex_horizontal">
				<div class="flex_vertical color_line_box">
					<p class="sub_Title">프로젝트 소개 및 기획의도</p>
					<p class="sub_text">기획 의도 : 은행 업무 시스템</p>
					<p class="sub_text">개발 인원 : 6명</p>
					<p class="sub_text">프로젝트 기간 : 2023.07.18 ~ 2023.07.26 (총 9일)</p>
					<p class="sub_text">참고 사이트 : TOSS, 카카오뱅크</p>
					<p class="sub_text">기획 의도 : 핀테크 기반 프로젝트로 은행업무 시스템을 구현하며</p>
					<p class="sub_text_c">JAVA, JDBC, JSP Servlet을 이용한 웹페이지의 이해</p>
					
				
				
					<p class="sub_Title sub">사용 기술</p>
					<p class="sub_text">JAVA 8 / JSP Servlet / ORACLE / JavaScript / CSS</p>
					<p class="sub_text">배포를 위해 ORACLE 데이터베이스에서 MySQL로 변경</p>
				
				
					<p class="sub_Title sub">프로젝트 기능</p>
					<p class="sub_text">로그인</p>
					<p class="sub_text">계좌 조회 및 내역 조회</p>
					<p class="sub_text">이체 및 예약 이체</p>
					<p class="sub_text">실시간 환율 정보</p>
					<p class="sub_text">고객센터</p>
					<p class="sub_text">찾아오시는 길</p>
				</div>
				
				<div class="flex_vertical color_line_box">
					<p class="sub_Title">담당 업무</p>
					<p class="sub_text_t">스케쥴러를 이용하여 예약이체 구현</p>
					<p class="sub_text_p"> - 예약이체 신청시 데이터베이스에 내역을 등록 시킨 뒤</p>
					<p class="sub_text_p"> 해당 데이터베이스만을 순회하는 스케쥴러를 만들어 현재 시간과 요청된 시간을 비교하여</p>
					<p class="sub_text_p"> 지난 시간이라면 이체코드를 처리하도록 구현</p>
					<p class="sub_text_t">메인페이지 스크롤시 한페이지씩 움직이도록 구현</p>
					<p class="sub_text_p"> - 자바스크립트를 이용하여 휠을 한번 움직일 때 마다 페이지 이동 구현</p>
				
					<p class="sub_Title sub">개선 해야 할 문제</p>
					<p class="sub_text_t">1. 기능 구현시 따라오는 부가적인 기능들을 자세히 문서화 한뒤에 진행</p>
					<p class="sub_text_p"> - 이체기능만을 생각하고 구현시 이체기능에 필요한 부가적인 기능들을 생각하지 못한부분</p>
					<p class="sub_text_t">2. 공통된 디자인을 생각하지 않고 기능들만 구현한점</p>
					<p class="sub_text_t">3. 각자 CSS 템플릿 사이트에서 코드를 긁어와 겹치는 문제</p>
					<p class="sub_text_p"> - 처음하는 웹 프로젝트로 정해진 규칙 없이 프로젝트를 진행하여<br/>
						중복된 코드가 많아 팀원들과 충분한 회의를 통하여 프로젝트를 진행해야 하는것을 느꼈습니다.</p>
				</div>
				
			</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
		let me = document.querySelector('[data-menu="EGGPLANT"]');
		me.classList.add('on');
		
		function gopage(){
			window.location.href = "http://jhgpage.com/semiProject/eggplant/main.do";
		}
	</script>

</body>
</html>