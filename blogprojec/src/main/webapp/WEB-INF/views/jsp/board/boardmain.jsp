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
<title>Insert title here</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/headerBoard.jsp" />
<link rel="stylesheet" href="<%=cp%>/resources/css/board/boardmain.css" />

</head>
<body>
	<div class="content">

		<div id="container">
			<div id="headerTitle">
				<h1>타이틀(JAVA, DB..등등)</h1>
			</div>
			<div id=b_Article>
				<div class="list_title">
					<h2>
						<span class="text_title">전체 글 ()</span>
					</h2>
				</div>
			</div>




			<div class="list_content">
				<a href="#" class="link_post"> <strong class="title_post">타이틀</strong>
					<p class="text_post">내용</p>
				</a>

				<div class="detail_info">
					<a href="#" class="link_info">교육 일지/Java</a> <span class="text_bar"></span>
					<span class="text_date">2023. 8. 11</span>
				</div>
			</div>
			
			<div class="list_content">
				<a href="#" class="link_post"> <strong class="title_post">타이틀</strong>
					<p class="text_post">내용</p>
				</a>

				<div class="detail_info">
					<a href="#" class="link_info">교육 일지/Java</a> <span class="text_bar"></span>
					<span class="text_date">2023. 8. 11</span>
				</div>
			</div>
			
		</div>

	</div>


</body>
</html>