<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<c:if test="${type != 'profile'}">
<link rel="stylesheet" href="/resources/css/reset.css" />
</c:if>
<meta name="viewport" content="user-scalable=yes, initial-scale=0.5, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link rel="stylesheet" href="/resources/css/structure/header.css" />
<script src="/resources/js/header.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/project/project1_style.css"/>

<header class="">

            <div id="header_wrap">
                <a href="${pageContext.request.contextPath}/main.do" class="link_Home"><span style="color: #45a7e9;">H</span>OME</a>
		
				 <div id="menu_icon" class="mobile">
                    <svg viewBox="0 0 30 30">
                        <rect x="3" y="4" width="24" height="4"/>
                        <rect x="3" y="22" width="24" height="4"/>
                        <rect x="3" y="13" width="24" height="4"/>
                    </svg>
                </div>
                <div id="menu_dim"></div>

                <div id="menu_wrap">
                    <a data-menu="PROFILE" href="${pageContext.request.contextPath}/profile.do" class="link">Profile</a>
                    <a data-menu="BLOG" href="${pageContext.request.contextPath}/boardmain.do" class="link">블로그</a>
                    <a data-menu="WALDBOW" href="https://waldbow.com/agilitymap.do" class="link">WALDBOW
					<p style="font-size: 14px; margin: 0;">(서비스 및 개발중)</p></a>
					<a data-menu="GATCHI" href="${pageContext.request.contextPath}/project1.do" class="link">GATCHI</a>
					<a data-menu="EGGPLANT" href="${pageContext.request.contextPath}/project2.do" class="link">EGG PLANT</a>
					<a data-menu="CUPENG" href="${pageContext.request.contextPath}/project3.do" class="link">CUPENG</a>
					<a data-menu="INFINITYBALL" href="${pageContext.request.contextPath}/project4.do" class="link">INFINITY BALL</a>
                    <div class="menu_close"></div>
                </div>
            </div>
        </header>


<c:if test="${type == 'blog'}">
	<ul class="sidebar">
		<li><a href="${pageContext.request.contextPath}/main.do">home</a></li>
		<li><a
			href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=java">JAVA</a></li>
		<li><a
			href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=db">DB</a></li>
		<li><a
			href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=web">WEB</a></li>
		<li><a
			href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=FrameWork">FrameWork</a></li>
		<li><a
			href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=java">Menu</a></li>
		<%--   <li><a href="${pageContext.request.contextPath}/boardwrite.do">글쓰기</a></li> --%>
	</ul>
	<input type="checkbox" id="sidebar-btn" class="sidebar-btn" />
	<label for="sidebar-btn" class="sidebar-btn_text">☰</label>

</c:if>

<script src="/resources/js/main/main.js"></script>

