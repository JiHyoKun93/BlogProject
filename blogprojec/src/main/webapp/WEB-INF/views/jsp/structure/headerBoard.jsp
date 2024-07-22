<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/structure/headerBoard.css" />
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
	

</header>

<ul class="sidebar">
  <li><a href="${pageContext.request.contextPath}/main.do">home</a></li>
  <li><a href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=java">JAVA</a></li>
  <li><a href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=db">DB</a></li>
  <li><a href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=web">WEB</a></li>
  <li><a href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=FrameWork">FrameWork</a></li>
  <li><a href="${pageContext.request.contextPath}/boardmain.do?pageNum=1&searchValue=java">Menu</a></li>
<%--   <li><a href="${pageContext.request.contextPath}/boardwrite.do">글쓰기</a></li> --%>
</ul>
<input type="checkbox" id="sidebar-btn" class="sidebar-btn"/>
<label for="sidebar-btn" class="sidebar-btn_text">☰</label>

