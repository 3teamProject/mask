<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />	
	

      
<!DOCTYPE html>
<html lang="utf-8">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 <c:import url="/WEB-INF/views/layout/header.jsp"/>

    
    <script>
    
   function DaumAddressAPI() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  
                  var addr = ''; // 
                  var extraAddr = ''; 

                  
                  if (data.userSelectedType === 'R') { 
                     addr = data.roadAddress;
                  } else { 
                     addr = data.jibunAddress;
                  }

                  
                  if (data.userSelectedType === 'R') {
                     if (data.bname !== ''
                           && /[동|로|가]$/g
                                 .test(data.bname)) {
                        extraAddr += data.bname;
                     }
                     
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName
                              : data.buildingName);
                     }
                     
                     if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr
                              + ')';
                     }
                     /* 
                     document
                           .getElementById("MEM_ADDRESS3").value = extraAddr; */

                  } /* else {
                     document
                           .getElementById("MEM_ADDRESS3").value = '';
                  } */

                  
                  document
                        .getElementById('MEM_ZIPCODE').value = data.zonecode;
                  document
                        .getElementById("MEM_ADDRESS1").value = addr;
                  
                  document.getElementById(
                        "MEM_ADDRESS2")
                        .focus();
               }
            }).open();
   }

   
   function main() {
		if(confirm("배송지 변경을 취소하겠습니까?") == true){
			location.href='/c/ezen/mask/main.do';
		}else {
			return;
		}
	}

   function orderchange() {
		if(confirm("배송지 변경을 완료하시겠습니까?") == true){
			location.href='/c/ezen/mask/main.do';
		}else {
			return;
		}
	}

   
   
</script>

<style>
#but
{
   margin:0 auto;

   width: 100%;
   
  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  text-decoration: none;

  display: inline-block;
  width: auto;

  border: none;
  border-radius: 4px;
}
#but

{
   padding: 5px;

   width:30pt;

   font-size: 13px;
}

</style>

    
</head>



<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>


    
	<div class="container-fluid" >
		<center>
			<h3>
				<kbd style="font-family: ff">배송지 변경</kbd>
			</h3>
			<div class="row">

				<div >
					<p>*주의사항 : 배송지 변경은 배송시작 전에 가능하오니 양해 부탁드립니다.</p>
				</div>
			</div>
	</div>

<center>
	<form>
	
	  <div class="jumbotron">
<table class="table">


<div class="orderArea" >

      <div class="table-responsive">
      
      <table style="width:100%;" align="center">
         <colgroup>
               <col width="15%" />
               <col width="*" />
         </colgroup>
                  <tr>
            <td>수령인</td>            
            <td><input type="text" id="ORDER_USER_NAME" name="ORDER_USER_NAME" class="form-control"  style="width:20%;"></td>                        
         </tr>
         <tr>
            <td>휴대전화</td>
            <td><input type="text" id="ORDER_PHONE1" name="ORDER_PHONE1" class="form-control"  style="width:40%;"></td>
         </tr>
         <tr>
            <td rowspan="3"> 주소</td>
            <td>
               <input type="text" id="ORDER_DZIPCODE" name="ORDER_DZIPCODE" placeholder="우편번호" class="form-control" readonly style="display:inline-block; width:40%;">

            <input type="button" value="수정" onclick="DaumAddressAPI();" id="but"/>
            <br>
            
            </td>
         </tr>
         <tr>
            <td>
               <input type="text" name="ORDER_DADD1" id="ORDER_DADD1" placeholder="주소"  size="40" class="form-control" style="width:55%;">
            <td>
         <tr>
            <td>
               <input type="text" name="ORDER_DADD2" id="ORDER_DADD2" placeholder="상세주소" size="40" class="form-control" style="width:55%;">
            </td>
         </tr>
         <tr>
            <td>메모</td>
            <td><textarea id="ORDER_DMEMO" name="ORDER_DMEMO" rows="2" style="width:90%;" class="form-control"></textarea></td>
         </tr>
         	</center>
         	
			</table>
         	</div>
         	</div>
         	</table>
         	</div>
         	</form>
         	</center>
         	
         	<tr>	
         	<td>	
         	<center>
         	<button value="submit" onclick="orderchange();" id="but">변경</a>
            <button type="button" onclick="main();" id="but">취소</button>		
         	</center>
         	<!-- 취소 요청시 메인으로 return -->
         	</td>
			</tr>
		
			<!--  
			</table>
			</div>
			</div>
  </table>
      </div>
	</form>

-->
	
	
	<center>
		<p class="bg-success">택배는 결제완료일 기준으로 2-3일 소요됩니다.</p>
	</center>
	

</body>
</html>