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
</head>
<body>
<div class="main">
    <div class="tab-inner1">
    <ul class="tab-inner">
        <li><a href="#none1"></a></li>
        <li><a href="#none2"></a></li>
        <li><a href="#none3"></a></li>
        <li><a href="#none4"></a></li>
        <li><a href="#none4"></a></li>
    </ul>
    </div>
    <div class="items">
        <form> <!--장바구니-->
        <div class="center">BEST ITEMS</div>
        <div class="item">
            <img src="${root}resources/image/마스크3.jsp" alt="">
            <div class="detail">
                <div class="title">
                    <h2>상품이름</h2>
                    <span>가격</span>
                </div>
                <div class="info">
                    <input type="radio" name="size" id="S1" value="S">
                    <input type="radio" name="size" id="M1" value="M">
                    <input type="radio" name="size" id="L1" value="L">
                    <div class="size">
                        <label>Size</label>
                        <label for="S1">S</label>
                        <label for="M1">M</label>
                        <label for="L1">L</label>
                    </div>
                    <div class="amount">
                        <label>수량</label>
                        <input type="text" value="1" name="" size="3">
                    </div>
                </div>
                <button class="add-cart">Add to Cart</button>
            </div>
            <!--속성-->
        
        </div> 
        <div class="item">
            <img src="./images/마스크3.jpg" alt="">
            <div class="detail">
                <div class="title">
                    <h2>상품이름</h2>
                    <span>가격</span>
                </div>
                <div class="info">
                    <input type="radio" name="size" id="S2">
                    <input type="radio" name="size" id="M2">
                    <input type="radio" name="size" id="L2">
                    <div class="size">
                        <label>Size</label>
                        <label for="S2">S</label>
                        <label for="M2">M</label>
                        <label for="L2">L</label>
                    </div>
                    <div class="amount">
                        <label>수량</label>
                        <input type="text" value="1" name="" size="3">
                    </div>
                </div>
                <button class="add-cart">Add to Cart</button>
            </div>
            <!--속성-->
        
        </div> 
        <div class="item">
            <img src="./images/마스크3.jpg" alt="">
            <div class="detail">
                <div class="title">
                    <h2>상품이름</h2>
                    <span>가격</span>
                </div>
                <div class="info">
                    <input type="radio" name="size" id="S3">
                    <input type="radio" name="size" id="M3">
                    <input type="radio" name="size" id="L3">
                    <div class="size">
                        <label>Size</label>
                        <label for="S3">S</label>
                        <label for="M3">M</label>
                        <label for="L3">L</label>
                    </div>
                    <div class="amount">
                        <label>수량</label>
                        <input type="text" value="1" name="" size="3">
                    </div>
                </div>
                <button class="add-cart">Add to Cart</button>
            </div>
            <!--속성-->
        
        </div> 
        <div class="item">
            <img src="./images/마스크3.jpg" alt="">
            <div class="detail">
                <div class="title">
                    <h2>상품이름</h2>
                    <span>가격</span>
                </div>
                <div class="info">
                    <input type="radio" name="size" id="S4">
                    <input type="radio" name="size" id="M4">
                    <input type="radio" name="size" id="L4">
                    <div class="size">
                        <label>Size</label>
                        <label for="S4">S</label>
                        <label for="M4">M</label>
                        <label for="L4">L</label>
                    </div>
                    <div class="amount">
                        <label>수량</label>
                        <input type="text" value="1" name="" size="3">
                    </div>
                </div>
                <button class="add-cart">Add to Cart</button>
            </div>
            <!--속성-->
        </form>
    </div> 
    </div>
</body>
</html>