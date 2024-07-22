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
<title>${dto.board_title } 수정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board/boardmain.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ckeditor/sample/styles.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/super-build/ckeditor.js"></script>
</head>
<body>

<form id="testform">
	<div id="content" class="content">
		
		<div id="container">
			<div id="headerTitle">
				<h1>글쓰기</h1>
			</div>
			<div id=b_Article>
			<select name="board_type" class="">
							<option value="None">NONE</option>
							<option value="Java">JAVA</option>
							<option value="DB">DB</option>
							<option value="Web">WEB</option>
							<option value="FrameWork">FrameWork</option>
						</select>
				<div class="list_title">
					<h2>
						<span class="text_title">
						<input type="text" name="board_title" class="form-control" id="floatingInput" placeholder="제목"
						value="${dto.board_title }">
						</span>
					</h2>
				</div>
			</div>
			<div id="editor" style="display: none;">${dto.board_content }</div>
			<div style="align-items: center">
				<input type="button" class="btn btn-outline-success" value="수정하기" onclick="sendFile();">
				<input type="button" class="btn btn-outline-danger" value="수정취소">
			</div>
		</div>
	</div>
	<input type="hidden" name="board_num" value="${dto.board_num }">
	<input type="hidden" name="board_createDate" value="${dto.board_createDate }">
	</form>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor_upload.js"></script>
<script type="text/javascript">

function sendFile(){
	let form = document.querySelector('#testform');
	let formData = new FormData(form)
	const editorData = editor.getData();
	formData.append("editorData",editorData);
	
	$.ajax({
		data: formData,
		type: "POST",
		url: "${pageContext.request.contextPath}/boardupdate.do",
		cache: false,
		contentType: false,
		enctype: 'multipart/form-data',
        processData: false,
        success: function(str){
        	location.href = "${pageContext.request.contextPath}/boardmain.do";
        },
	})
}

</script>
</body>
</html>