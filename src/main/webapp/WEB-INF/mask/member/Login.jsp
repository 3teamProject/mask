<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var='root' value="${pageContext.request.contextPath}/"/>

<c:import url="/WEB-INF/mask/layout/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<title>login</title>
</head>
<body>
	<div class="login">
    <div class="container">
        <div class="left-conataier">
            <label>Login Or Create An Account</label>
            <input type="radio" name="check-box" id="mem" checked>
            <input type="radio" name="check-box" id="non-mem">
            <div class="check">
                <label for="mem">회원</label>
                <label for="non-mem">비회원</label>
            </div>
            <div class="mem-login">
                <div class="member">
                
                <!-- 회원로그인 -->
                <form class="info">
                    <div class="item">
                      <input type="text" placeholder="아이디">
                      <i class="fa fa-user"></i>
                    </div>
                    <div class="item">
                      <input type="password" placeholder="password">
                      <i class="fa fas fa-unlock"></i>
                    </div>
                    <button type="submit">Login</button>
                  </form> 
                </div>
                
                <div class="non-member">  
                  <!-- 비회원 로그인 -->
                  <form class="info">
                    <div class="item">
                      <input type="text" placeholder="주문번호">
                      <i class="fa fa-user"></i>
                    </div>
                    <button type="submit">Login</button>
                  </form>
                </div>
                  
                  <div class="find">
                    <a href="${root}ezen/member/findId.do">아이디찾기</a>
                    <a href="${root}ezen/member/findPw.do">비밀번호찾기</a>
                    <a href="${root}ezen/member/nonFindOrderNum.do">주문번호찾기</a>
                  </div>
            </div>
        </div>
        <div class="right-conatiner">
            <label>아직도 회원이 아니십니까?</label>
            <span><em>회원을</em> 위한 <em>다양한 혜택</em>이 준비되어있습니다.</span>
            <button onclick="location.href='${root}ezen/member/join.do'">SIGN IN</button>
        </div>
    </div>
  </div>
</body>
</html>