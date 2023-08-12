<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<link rel="stylesheet" href="<%=cp %>/resources/css/reset.css" />
<link rel="stylesheet" href="<%=cp %>/resources/css/structure/header.css" />
<script src="<%=cp %>/resources/js/header.js"></script>

<ul class="sidebar">
  <li><a href="<%=cp%>">home</a></li>
  <li>JAVA</li>
  <li>DB</li>
  <li>WEB</li>
  <li>FrameWork</li>
  <li>Menu</li>
  <li><a href="<%=cp%>/write.do">글쓰기</a></li>
  
</ul>

<input type="checkbox" id="sidebar-btn" class="sidebar-btn"/>
<label for="sidebar-btn" class="sidebar-btn_text">☰</label>

