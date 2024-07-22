<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<link rel="stylesheet" href="/resources/css/font/font.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/structure/headerProject.css" />
<script src="/resources/js/header.js"></script>

<header class="header">
   <div class="hbody">
      <ul class="menu">
      <li class="menu_item"><a href="${pageContext.request.contextPath}/main.do" class="link">Home</a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/profile.do" class="link">Profile</a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/boardmain.do" class="link">블로그</a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/project5.do" class="link">WALDBOW<p style="font-size: 14px;">(서비스 및 개발중)</p></a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/project1.do" class="link">GATCHI</a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/project2.do" class="link">EGG PLANT</a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/project3.do" class="link">CUPENG</a></li>
			<li class="menu_item"><a href="${pageContext.request.contextPath}/project4.do" class="link">INFINITY BALL</a></li>
      </ul>
   </div>

    <div id="urlCon" style="
    display: flex;
    justify-content: right;
    align-items: center;
    padding: 10px 20px;
    gap: 30px;
    background-color: #616366;
    color: #fff;
">
        <div class="memo"><a id="projectUrl" style="color:white;">&#8251;&nbsp;&nbsp;&nbsp;&nbsp;프로젝트 바로가기</a></div>
    <div id="urlBar"> | </div>
        <div>
        
        <div class="memo"><a id="gitUrl" style="color:white;">&#8251;&nbsp;&nbsp;&nbsp;&nbsp; 깃허브 바로가기</a>
        </div>
</div>
</div></header>