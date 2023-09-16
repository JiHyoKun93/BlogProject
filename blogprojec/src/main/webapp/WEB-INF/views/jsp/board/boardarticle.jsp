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
<style type="text/css">

li{
	margin: 15px 0 15px 30px;
}
</style>
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
					<a href="/boardupdate.do?board_num=${dto.board_num }">수정</a>
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
						<c:forEach var="nextDto" items="${nextLists }">
								<tr>
									<th>
										<a href="${articleUrl}?board_num=${nextDto.board_num }">
										${nextDto.board_title }</a>
									</th>
								</tr>
						</c:forEach>
								<tr>
									<th>
										<span>${dto.board_title }</span>
									</th>
								</tr>
						<c:forEach var="prevDto" items="${prevLists }">
								<tr>
									<th>
										<a href="${articleUrl}?board_num=${prevDto.board_num }">
										${prevDto.board_title }</a>
									</th>
								</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>