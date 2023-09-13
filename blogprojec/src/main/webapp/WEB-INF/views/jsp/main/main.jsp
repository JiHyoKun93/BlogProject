<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Insert title here</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />
<link rel="stylesheet" href="<%=cp %>/resources/css/main/main.css" />

</head>
<body>
<div class="content" style="background-image: url('resources/image/background2.jpg');">
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
<div id="m_title">
	<h1 id="title_text">프로그래머의 꿈</h1>
</div>
	
</div>

</body>
</html>