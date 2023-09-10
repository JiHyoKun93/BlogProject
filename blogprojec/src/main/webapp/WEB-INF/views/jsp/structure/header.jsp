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
  <li>MyPage</li>
  <li><a href="<%=cp %>/boardmain.do">블로그</a></li>
  <li>Project</li>
  <li>Semi Project</li>
  <li>Console Project</li>
</ul>


<input type="checkbox" id="sidebar-btn" class="sidebar-btn"/>
<label for="sidebar-btn" class="sidebar-btn_text">☰</label>
