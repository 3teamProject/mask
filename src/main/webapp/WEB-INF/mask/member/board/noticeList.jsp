<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<c:import url="/WEB-INF/views/layout/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.noticeList-jsp .container {
	margin-top: 40px;
	/* border:1px solid red; */
	text-align: center;
	height: 200vh;
}

.noticeList-jsp .container label {
	display: block;
	font-size: 40px;
	font-weight: bold;
	margin: 10px;
	padding: 20px;
}

.noticeList-jsp .container .item {
	display: inline-block;
	text-align: right;
	padding-right: 24px;
	margin-bottom: 20px;
	font-size: 14px;
	width: 910px;
}

.noticeList-jsp table {
	text-align: center;
	display: inline-block;
	border-collapse: separate;
	border-spacing: 0 7px;
}

.noticeList-jsp td {
	background-color: white;
	text-align: center;
}

.noticeList-jsp tr, .noticeList-jsp td, .noticeList-jsp th {
	padding: 7px 8px;
	width: 200px;
	height: 10px;
	font-size: 12px;
}

.noticeList-jsp tr:nth-child(1) {
	border-bottom: 1px solid lightgray;
	border-top: 1px solid lightgray;
	background: rgb(69, 69, 71);
	color: white;
}

.noticeList-jsp tr>td:nth-child(1), .noticeList-jsp tr>th {
	width: 50px;
}
</style>
</head>
<body>
	<!--테이블-->
	<div class="noticeList-jsp">
		<div class="container">
			<label>COMMUNITY</label>
			<div class="item">
				<a href="${root}ezen/member/userBoardInsert.do"><i class="fa fas fa-pencil-alt"> 작성하기</i></a>
			</div>
			<table>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				<tr>
					<td>1</td>
					<td>코로나</td>
					<td>abcd</td>
					<td>2021-03-02</td>
					<td>1</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>