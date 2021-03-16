<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var='root' value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${root}resources/header.css">
<link rel="stylesheet" type="text/css" href="${root}resources/member.css">
<link rel="stylesheet" type="text/css" href="${root}resources/board.css">
<link rel="stylesheet" type="text/css" href="${root}resources/order.css">
<link rel="stylesheet" type="text/css" href="${root}resources/footer.css">
<link rel="stylesheet" type="text/css" href="${root}resources/main.css">
<link rel="stylesheet" type="text/css" href="${root}resources/orderDetail.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="#none">EZNMASK</a>
		</div>
		<div class="menu">
			<a href="${root}ezen/mask/goodsDetail.do">미세먼지 마스크</a>
			<a href="${root}ezen/mask/goodsDetail.do">비밀차단 마스크</a> 
			<a href="${root}ezen/mask/goodsDetail.do">손소독제</a> 
			<a href="${root}ezen/mask/goodsDetail.do">체온계</a>
		</div>
		<div class="header-container">
			<a href="${root}ezen/member/login.do">로그인</a>
			<a href="${root}ezen/member/join.do">회원가입</a>
			<a href="${root}ezen/member/myPage.do">마이페이지</a>
			<a href="${root}ezen/member/orderList.do">주문조회</a>
			<a href="${root}ezen/member/noticeList.do">게시판</a>
			<a href="${root}ezen/member/adminBoard.do">공지사항</a>
			<a href="${root}ezen/shop/basket.do">장바구니 <i class="fas fa-shopping-cart"></i></a>
			
		</div>
	</div>
</body>
</html>