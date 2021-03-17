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
<link rel="stylesheet" type="text/css" href="${root}resources/orderDetail.css">
<style type="text/css">
	td{
	text-align: center;
	}
</style>
</head>
<body>
	    <div class="goodsDetail_jsp2">
    <div class="goodsDetail_jsp">

        <div class="goods-info">

            <div class="goods_img">
                <img src="${root }resources/image/item4.jpg" alt="">
            </div>
            <div class="goods_option">
               <div class="goods_name">미세먼지 마스크</div>
               <table class="info1">
                   <tr>
                       <th>판매가</th>
                       <td style="color: crimson;" >3,500원</td>
                   </tr>
                   <tr>
                       <th>국내·해외배송</th>
                       <td>국내배송</td>
                   </tr>
                   <tr>
                       <th>배송방법</th>
                       <td>택배</td>
                   </tr>
                   <tr>
                       <th>배송비</th>
                       <td>3,000원</td>
                   </tr>
               </table>
               <form action="${root}ezen/member/MemberOrder.do"> <!-- 비회원 : ${root}/ezen/member/nonOrder.do -->
                <table class="info2">
                        <tr>
                            <th>상품명</th>
                            <th>상품수</th>
                            <th>가격</th>
                        </tr>
                        <tr>
                            <td>미세먼지 마스크</td>
                            <td>
                                <input type="number" min="1" class="number" value="1">
                            </td>
                            <td class="price">
                                <span>3500</span> <!-- 상품 가격 입력-->
                                <script>
                                    document.querySelector(".number").addEventListener("change",(event)=>{
                                        price=document.querySelector('.price > span')
                                        document.querySelector('.price > span').innerHTML=(event.target.value)*3500 /*상품 각격 입력*/
                                    })
                                </script>
                            </td>
                        </tr>
                   </table>
                   <button type="submit">구매하기</button>
               </form>
                <button onclick="location.href='${root}ezen/shop/basket.do'" style="transform:translateX(-200px);">장바구니</button>
            </div>
        </div>
    </div>
    <div class="box">
        <div class="check-box">
            <input type="button" value="상세정보" class="a">
            <input type="button" value="구매후기" class="b">
            <input type="button" value="상품문의" class="c">
        </div>
        <div class="detail ">
            <img src="${root }resources/image/상품이미지.jpg" alt="">
        </div>

        <div class="none review2">
            <div id="form-commentInfo" style="margin-bottom:30px;"> 
                <form action="">
                    <div id="comment-count">후기 글 <span id="count">0</span></div>
                    <div><input id="comment-input" placeholder="댓글을 입력해 주세요.">
                    <button id="submit">등록</button> </div> 
                    <div id=comments> </div>
                </form>
            </div> 
            <!--반복문-->
            <div class="coment">
                <table>
                    <tr>
                        <th style="width: 20%">작성자</th>
                        <th style="width: 70%">내용</th>
                        <th style="width: 10%">날짜</th>
                    </tr>
                    <tr>
                        <td>홍길동</td>
                        <td>마스크 후기1</td>
                        <td>2021-3-30</td>
                    </tr>
                    <tr>
                     <td>이순신</td>
                     <td>마스크 후기2</td>
                     <td>2021-3-30</td>
                 </tr>
                </table>
             </div>


        </div>
        <div class="qna none">
            <div id="form-commentInfo" style="margin-bottom:30px;"> 
                <form action="">
                    <div id="comment-count">문의글 <span id="count">0</span></div>
                    <div><input id="comment-input" placeholder="댓글을 입력해 주세요.">
                    <button id="submit">등록</button> </div> 
                    <div id=comments> </div>
                </form>
            </div> 
            <!--반복문-->
            <div class="coment">
               <table>
                   <tr>
                       <th style="width: 20%">작성자</th>
                       <th style="width: 70%">내용</th>
                       <th style="width: 10%">날짜</th>
                   </tr>
                   <tr>
                    <td>홍길동</td>
                    <td>마스크 가격문의</td>
                    <td>2021-3-30</td>
                </tr>
                <tr>
                    <td>관리자</td>
                    <td> =>&nbsp;&nbsp;답변</td>
                    <td>2021-3-30</td>
                </tr>
               </table>
            </div>

            <div class="coment">
                <table style="text-align: center">
                    <tr>
                        <th style="width: 20%">작성자</th>
                        <th style="width: 70%">내용</th>
                        <th style="width: 10%">날짜</th>
                    </tr>
                    <tr>
                        <td>홍길동</td>
                        <td>마스크 가격문의</td>
                        <td>2021-3-30</td>
                    </tr>
                    <tr>
                     <td>관리자</td>
                     <td>마스크 가격문의</td>
                     <td>2021-3-30</td>
                 </tr>
                 <tr>
                     <td>홍길동</td>
                     <td>마스크 가격문의</td>
                     <td>2021-3-30</td>
                 </tr>
                </table>
             </div>
        
    </div>
    </div>
</div>
    <script>
        document.querySelector('.a').addEventListener('click',()=>{
            document.querySelector('.detail').classList.remove('none');
            document.querySelector('.review2').classList.add('none');
            document.querySelector('.qna').classList.add('none');
        })

        document.querySelector('.b').addEventListener('click',()=>{
            document.querySelector('.review2').classList.remove('none');
            document.querySelector('.detail').classList.add('none');
            document.querySelector('.qna').classList.add('none');
        })

        document.querySelector('.c').addEventListener('click',()=>{
            document.querySelector('.qna').classList.remove('none');
            document.querySelector('.detail').classList.add('none');
            document.querySelector('.review2').classList.add('none');
        })
    </script>
</body>
</html>