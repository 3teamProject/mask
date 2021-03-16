<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var='root' value='${pageContext.request.contextPath}/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<title>Document</title>
<script>
	$(document).ready(function() {
		$('#summernote').summernote({

			height : 300, // set editor height
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			focus : true
		// set focus to editable area after initializing summernote
		});
	});
	$(document).ready(function() {
		$('#summernote').summernote();
	});
</script>
<c:import url="/WEB-INF/views/layout/header.jsp"/>
<style type="text/css">

.boardWrite .container{
    margin-top: 70px;
    height: 200vh;
    text-align: center;
}

.boardWrite .board{
    margin-top:70px;
    margin:auto;
    width:1000px;
    padding:30px;
    
}

.boardWrite .board .aaaaa{
    border: 1px solid;
    text-align: left;
    height: 30px;
    margin-bottom: 10px;
}

.boardWrite .board input{
    outline: none;
    padding:5px;
    box-sizing: border-box;
}

.boardWrite form{
    float: left;
    text-align: left;
    margin-left: 20px;
}

.boardWrite button:hover{
    opacity: .7;
}
</style>
</head>
<body>
	<div class="boardWrite">
		<div class="container">
			<div class="board">
				<!-- <form action="">
      <div class="aaaaa">
      <B>제목:</B>&nbsp;  &nbsp;  &nbsp; 
      <input type="text" id="tx"name="title" style="width: 30%;"/><br><br>
      </div>
      <textarea name="content" id="summernote" value=""></textarea>
    </form> -->
				<div class="panel panel-default">
					<div class="panel-heading"
						style="font-weight: bolder; padding: 50px; font-size: 30px;">
						글 작성</div>
					<div class="panel-body">
						<div class="dataTable_wrapper">
							<div id="dataTables-example_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap no-footer">
								<div class="row" style="margin-bottom: 5px;">
									<div class="col-sm-30">

										<p id="bb">
										<div style="text-align: left; margin-left: 30px;">
											<B>제목:</B> &nbsp; &nbsp; &nbsp; <input type="text" id="bbbb"
												name="title" style="width: 70%;" placeholder="" />
										</div>
										<br>
									</div>
								</div>
								<form action="" id="bbbb">
									<textarea name="content" id="summernote"></textarea>
									<button type="submit" style="padding: 5px; border-radius: 5px; border: 1px solid; outline: none;">작성하기</button>
								</form>
							</div>
							</div>
							</div>
							</div>
							</div>
							</div>
							</div>
</body>
</html>