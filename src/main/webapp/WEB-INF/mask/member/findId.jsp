<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var='root' value='${pageContext.request.contextPath}/'/>
<c:import url="/WEB-INF/mask/layout/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findId</title>
</head>
<body>
	<div class="findId">
        <div class="container">
        <div class="left-conataier">
            <label>아이디 찾기</label>
            <input type="radio" name="check-box" id="email" checked>
            <input type="radio" name="check-box" id="phone">
            <div class="check">
                <label for="email">이메일</label>
                <label for="phone">휴대폰</label>
            </div>
            <div class="find_id">
                <div class="f_email">
                <form class="info">
                    <div class="item">
                      <input type="text" placeholder="이름">
                      <i class="fa fa-user"></i>
                    </div>
                    <div class="item">
                      <input type="password" placeholder="Email">
                      <i class="fa fas fa-envelope"></i>
                    </div>
                    <button type="submit">확인</button>
                  </form> 
                </div>
                  <div class="f_phone">
                  <form class="info">
                    <div class="item">
                        <input type="text" placeholder="이름" name="name">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="item">
                        <input type="email" placeholder="휴대폰 번호" name="phone">
                        <i class="fa fas fa-phone"></i>
                      </div>
                    <button type="submit">확인</button>
                  </form>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>