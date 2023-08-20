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
<link rel="stylesheet" href="<%=cp%>/resources/css/board/boardmain.css" />
<link rel="stylesheet" href="<%=cp%>/resources/ckeditor/sample/styles.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/super-build/ckeditor.js"></script>
</head>
<body>

<form id="testform">
	<div id="content" class="content">
		
		<div id="container">
			<div id="headerTitle">
				<h1>타이틀</h1>
			</div>
			<div id=b_Article>
			<input type="text" name="board_type" class="form-control" id="floatingInput" placeholder="제목">
				<div class="list_title">
					<h2>
						<span class="text_title">
						<input type="text" name="board_title" class="form-control" id="floatingInput" placeholder="type">
						</span>
					</h2>
				</div>
			</div>
			<div id="editor" style="display: none; "></div>
			<input type="button" class="btn btn-outline-success" value="저장하기" onclick="sendFile();">
			<input type="button" class="btn btn-outline-danger" value="작성취소">
			
		</div>
	</div>
	</form>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="<%=cp%>/resources/js/ckeditor/ckeditor_upload.js"></script>
<script type="text/javascript">

function sendFile(){
	let form = document.querySelector('#testform');
	let formData = new FormData(form)
	const editorData = editor.getData();
	formData.append("editorData",editorData);
	
	$.ajax({
		data: formData,
		type: "POST",
		url: "<%=cp%>/file/test.do",
		cache: false,
		contentType: false,
		enctype: 'multipart/form-data',
        processData: false,
        success: function(str){
        	console.log(str);
        },
	})
}

</script>
</body>
</html>