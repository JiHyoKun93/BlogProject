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
<title>블로그</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board/boardmain.css"/>

</head>
<body>

	<div class="content">

		<div id="container">
			<div id="headerTitle">
				<h1>
					<span>${searchValue }</span>
				</h1>
			</div>
			<div id=b_Article>
				<div class="list_title">
					<h2>
						<span class="text_title">전체 글 (${dataCount })</span>
					</h2>
				</div>
			</div>
			
			<c:forEach var="dto" items="${lists }">
				<div class="list_content">
					<a href="${pageContext.request.contextPath}${articleUrl }&board_num=${dto.board_num }&searchValue=${searchValue}"
						class="link_post"> <strong class="title_post">${dto.board_title }</strong>
					</a>

					<div class="detail_info">
						<a href="${pageContext.request.contextPath}${searchUrl }${dto.board_type }" class="link_info">${dto.board_type }</a> <span
							class="text_bar"></span> <span class="text_date">${dto.board_createDate }</span>
					</div>
				</div>
				
			</c:forEach>

		</div>
		<div class="area_paging">
			<span class="inner_paging">
				<c:if test="${dataCount!=0 }">
						${pageIndexList }
					</c:if>
				<c:if test="${dataCount==0 }">
						등록된 게시물이 없습니다.
					</c:if>
			</span>
		</div>
	</div>

<script type="text/javascript">
		let me = document.querySelector('[data-menu="BLOG"]');
		me.classList.add('on');
	</script>
</body>
</html>