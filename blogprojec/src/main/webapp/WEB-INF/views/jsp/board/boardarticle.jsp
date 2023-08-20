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
<c:import url="/WEB-INF/views/jsp/structure/headerBoard.jsp" />
<link rel="stylesheet" href="<%=cp%>/resources/css/board/boardmain.css" />
</head>
<body>

	<div id="content" class="content">
		
		<div id="container">
			<div id="headerTitle">
				<h1>${dto.board_type }</h1>
			</div>
			<div id=b_Article>
			<div>${dto.board_title }</div>
				<div class="list_title">
					<h2>
						<span class="text_title">
						<input type="text" name="board_title">
						</span>
					</h2>
				</div>
			</div>
			<div id="editor">${dto.board_content }</div>
			
		</div>
	</div>
</body>
</html>