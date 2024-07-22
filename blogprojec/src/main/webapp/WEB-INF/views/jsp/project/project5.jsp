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
<title>Fanal Project</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />
<script>
	var url = document.querySelector("#projectUrl");
	var gitUrl = document.querySelector("#gitUrl");
	var urlBar = document.querySelector("#urlBar");
	gitUrl.style.display = "none";
	urlBar.style.display = "none";
	
	url.href = "https://waldbow.com";
	
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/project/project1.css"/>

</head>
<body>
	<div id="content">
		<div id="container">
			<div id="headerTitle">
				<a href="https://waldbow.com">
					<h1>현재 진행중 프로젝트 - WaldBow</h1>
				</a>
				
				<p>
					<a href="https://waldbow.com">클릭시 해당 프로젝트로 이동합니다</a>
				</p>
			</div>
			<div>
			  <div class="slider_container">
			  <div class="slider">
			  
			  
			    <div class="slider-content">
			    
			      <div style="position: absolute; left: 0; z-index: 99999; height: 100%; display: flex; justify-content: center; align-items: center;">
				  	<button class="prev-btn" onclick="document.querySelectorAll('.slider-navigation > button')[0].click();">이전</button>
				  </div>	
				  
			      <figure class="show">
			        <img src="/resources/image/gatchi/1.png" alt="1">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/2.png" alt="2">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/3.png" alt="3">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/4.png" alt="4">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/5.png" alt="5">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/6.png" alt="6">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/7.png" alt="7">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/8.png" alt="8">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/9.png" alt="9">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/10.png" alt="10">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/11.png" alt="11">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/12.png" alt="12">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/13.png" alt="13">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/14.png" alt="14">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/15.png" alt="15">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/16.png" alt="16">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/17.png" alt="17">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/18.png" alt="18">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/19.png" alt="19">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/20.png" alt="20">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/21.png" alt="21">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/22.png" alt="22">
			      </figure>
			      <figure>
			        <img src="/resources/image/gatchi/23.png" alt="23">
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
				
				
			<div class="content_container">
				<div class="sub_content">
					<p class="sub_Title">프로젝트 소개 및 기획의도</p>
					<p class="sub_text">기획 의도 : 위치기반 실시간 만남 서비스 GATCHI</p>
					<p class="sub_text">개발 인원 : 6명</p>
					<p class="sub_text">프로젝트 기간 : 2023.09.20 ~ 2023.10.31 (총 41일)</p>
					<p class="sub_text">참고 사이트 : 문토</p>
					<p></p>
				
				
					<p class="sub_Title sub">사용 기술</p>
					<p class="sub_text">JAVA / SpringBoot / JavaScript / CSS</p>
					<p class="sub_text">ORACLE / MongoDB / MyBatis / JPA</p>
					<p class="sub_text">JQuery / BootStrap</p>
					<p class="sub_text">배포를 위해 ORACLE 데이터베이스에서 MySQL로 변경</p>
					
					<p class="sub_Title sub">프로젝트 기능</p>
					<p class="sub_text">로그인</p>
					<p class="sub_text">일회용 모임 (MeetMate)</p>
					<p class="sub_text">지속적인 모임 (CommuniFind)</p>
					<p class="sub_text">챌린지 (Challenge)</p>
					<p class="sub_text">주변 모임 찾기 (Discovery)</p>
					<p class="sub_text">실시간 채팅</p>
					<p class="sub_text">고객 센터</p>
				</div>
				<div class="sub_content">
					<p class="sub_Title">담당 업무</p>
					<p class="sub_text_t">실시간 채팅방</p>
					<p class="sub_text_p"> - WebSocket 과 STOMP를 이용하여 실시간 채팅방 구현</p>
					<p class="sub_text_p"> - 각각의 모임마다 하나의 채팅방 개설, 중복되지 않는 ID값으로 MongoDB에 저장</p>
					<p class="sub_text_p"> 채팅내역은 ID+날짜 형식으로 데이터를 나누어 저장</p>
					<p class="sub_text_t">읽음 안읽음 카운트 표시</p>
					<p class="sub_text_p"> - 채팅내역 저장시 읽은유저 리스트를 만들어 저장한 후</p>
					<p class="sub_text_p"> 로그인된 유저가 채팅을 읽지 않았을 경우 채팅방별로 안읽은 메세지 카운트</p>
					<p class="sub_text_p"> 채팅방 내에서 모임인원수에 맞게 읽음 안읽음 카운트 표시</p>
					<p class="sub_text_t">이모티콘</p>
					<p class="sub_text_p"> - 미리 저장해둔 이모티콘 파일을 클릭시 전송되게 구현</p>
					<p class="sub_text_t">드래그로 이미지 전송</p>
					<p class="sub_text_p"> - Jquery UI Drag and Drop을 이용하여 구현</p>
					
					<p class="sub_text_t">모임 리스트 페이지</p>
					<p class="sub_text_p"> - 저장된 데이터를 검색 또는 날짜순으로 불러와 정렬</p>
					
					<p class="sub_text_t">해상도 크기 대응</p>
					<p class="sub_text_p"> - JS와 CSS를 이용하여 각 페이지를 윈도우 크기에 맞게 CSS 적용</p>
				</div>
				
			</div>
			</div>
		</div>
	</div>
	
<script src="/resources/js/project/project3.js"></script>
</body>
</html>