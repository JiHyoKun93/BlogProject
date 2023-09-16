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
					<a href="#" id="deleteArticle">삭제</a>
				</span>
				<input type="hidden" id="board_num" value="${dto.board_num }">
				<input type="hidden" id="pageNum" value="${pageNum }">
				<input type="hidden" id="searchValue" value="${searchValue }">
				
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
	<script type="text/javascript">
		
			document.getElementById("deleteArticle").addEventListener("click", function(event) {
		        // 사용자에게 삭제 확인 대화 상자를 표시하고 사용자 선택 결과를 저장
		        var confirmation = confirm("정말로 삭제하시겠습니까?");

		        // 확인을 선택한 경우에만 삭제 동작을 수행
		        if (confirmation) {
		        	var board_num = document.getElementById('board_num').value;
		        	var pageNum = document.getElementById('pageNum').value;
		        	var searchValue = document.getElementById('searchValue').value;
		        	
		        	var param = "/boarddelete.do?pageNum=" + pageNum + "&board_num=" + board_num + "&searchValue=" + searchValue;
					window.location.href = param;
		        	
		        } else {
		            event.preventDefault(); // 이벤트 기본 동작(링크 이동)을 막음
		        }
		    });
			
	</script>
</body>
</html>