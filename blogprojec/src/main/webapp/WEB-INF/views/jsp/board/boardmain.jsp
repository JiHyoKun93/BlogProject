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

		<c:forEach var="dto" items="${lists }">
			<div class="list_content">
				<a href="/blog/boardarticle.do?board_num=${dto.board_num }" class="link_post"> <strong class="title_post">${dto.board_title }</strong>
				</a>
			
				<div class="detail_info">
					<a href="#" class="link_info">${dto.board_type }</a> <span class="text_bar"></span>
					<span class="text_date">${dto.board_createDate }</span>
				</div>
			</div>
			<input type="hidden" name="board_num" value="${dto.board_num }">
		</c:forEach>
		
		</div>

	</div>


</body>
</html>