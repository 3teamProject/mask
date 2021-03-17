<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<c:import url="/WEB-INF/mask/layout/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.order:hover{
		opacity: .8;
	}
</style>
</head>
<body>
    <div class="cart">
        <div class="container">
            <label>장바구니 <i class="fas fa-shopping-cart"></i> </label>
            <div class="all-select"><button>전체삭제</button></div>
            <table>
                
                <tr>
                    <th>선택</th>
                    <th>이미지</th>
                    <th>상품명</th>
                    <th>옵션</th>
                    <th>수량</th>
                    <th>가격</th>
                    <th>수정/삭제</th>
                </tr>
                <!--for문-->
                
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>
                        <div>
                            <img src="${root}resources/image/item4.jpg" alt=""> <!--이미지-->
                        </div>
                    </td>
                    <td>체온계</td>
                    <td>
                        <label>size</label><br>
                        <!--if문 구매한 옵션에 check : selected-->
                        <div>
                        <select name="size">
                            <option value="S">S</option>
                            <option value="M">M</option>
                            <option value="L">L</option>
                        </select>
                        </div>
                    </td>
                    <td>
                        <input type="number" min="1" class="number" value="1" style="width:40px;">
                    </td>
                    <td><span class='price'>3000</span></td>
                    
                    <td>
                        <button type="submit">수정</button>
                        <button>삭제</button>
                    </td>
                </tr>
                
                
    
            </table>
            <script>
                 document.querySelector(".number").addEventListener("change",(event)=>{
                 price=document.querySelector('.price')
                 document.querySelector('.price').innerHTML=(event.target.value)*3500 /*상품 각격 입력*/
           		 })
          </script>
        
        </div>
        <button class="order" style="float: right; transform:translateX(-180px); margin-top: 20px; padding:10px; border: 1px solid lightgray; border-radius: 4px;">주문하기</button> 
    </div>
    
    <script>
        let price=0;
        document.querySelectorAll('.price').forEach((element)=>{
            element.
        })
    </script>
</body>
</html>