<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var='root' value="${pageContext.request.contextPath }/"/>
<c:import url="/WEB-INF/mask/layout/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="orderList-jsp">
        <div style="text-align: center;">
			<h1>
				주문조회
			</h1>
    </div>
<div style="height: 50px;"></div>
    <div>
        <table>
           <thead>
           <tr>
              <th style="width:10%;">주문일자</th>
              <th style="width:15%;">상품이미지</th>
              <th style="width:20%;">상품명</th>
              <th style="width:5%;">수량</th>
              <th style="width:8%;">가격</th>
              <th style="width:10%;">주문상태 확인</th>
              <th style="width:20%;">주문상태 변경</th>
              <th style="width:8%;">구매후기작성</th>
              <th style="width:11%;">배송지 수정</th>
             </tr>
             </thead>
          
            <tr>
             <tr>
                <td style="color:gray;"><font style="font-size:10pt;">2021-03</font>
                </td>
                <td><img src="" width="70px" height="70px"></td>
                
                <td><strong><a href="#this" name="detail">
                <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="">
                <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value=""></a></strong></td>
                 
                <td>10개</td>
                
                <td>3000원</td>
                
                <td>
                
 				
                <c:if test="true">
                입금전
                </c:if>
                <c:if test="">
                배송준비중
                </c:if>
                <c:if test="">
                배송중
                </c:if>
                <c:if test="">
                배송완료
                </c:if>
                               
                   </td>
                
 <!--                    <td colspan="6"> 주문 내역이 없습니다.</td> -->
             
 
           
                        
            <td>    
                <select name="key">
                    <option value="ab" >교환요청</option>
                    <option value="abc" >반품요청</option>
                    <option value="abcd" >취소요청</option>
                </select>
                    <button class="a-btn" style="width:50px;">변경</button>
                </td>

                 <td><button class="b-btn">구매후기작성</button></td>
                 <td><button class="b-btn" onclick="location.href='${root}ezen/member/orderChange.do'">배송지변경</button></td>
             
             </tr>
        </table>
         <div style="text-align: right; width:1580px; padding:30px 0">
            <a href="write.do" class="btn a-btn" style="border:1px solid black; color:black; background-color: white; padding:10px; width:100px">HOME</a>
        </div>     
        </div>     
</div>
</body>
</html>