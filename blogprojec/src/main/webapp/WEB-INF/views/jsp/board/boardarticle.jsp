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
<link rel="stylesheet" href="<%=cp%>/resources/css/board/boardarticle.css" />
</head>
<body>

	<div id="content" class="content">
		<div id="container">
			<div id="headerTitle">
				<strong class="title_category">
					<a>${dto.board_type }</a>
				</strong>
				<h3 class="title_post">${dto.board_title }</h3>
				<span class="info_post">${dto.board_createDate }
					<span class="txt_bar"></span>
					<a href="/">수정</a>
					<span class="txt_bar"></span>
					<a href="/">삭제</a>
				</span>
				
			</div>
			<div id=b_Article>
			
			</div>
			<div id="editor">${dto.board_content }</div>
			<div id="another_Article">
				<h4>이전글 다음글</h4>
				<table>
					<tbody>
						<tr>
							<th>내용내용내용</th>
						</tr>
						<tr>
							<th>내용내용내용</th>
						</tr>
						<tr>
							<th>내용내용내용</th>
						</tr>
						<tr>
							<th>내용내용내용</th>
						</tr>
						<tr>
							<th>내용내용내용</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>