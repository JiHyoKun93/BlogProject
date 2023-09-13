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

<header class="header">
	<div class="hbody">
		<ul class="menu">
			<li class="menu_item"><a href="<%=cp%>/boardmain.do"" class="link">블로그</a></li>
			<li class="menu_item"><a href="#" class="link">Project1</a></li>
			<li class="menu_item"><a href="#" class="link">Project2</a></li>
			<li class="menu_item"><a href="#" class="link">Project3</a></li>
		</ul>
	</div>
</header>
  
