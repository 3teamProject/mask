<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">



<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>이젠Mask 관리자페이지</title>

    <!-- Bootstrap Core CSS -->
    <link href="bootstrapadmin.min.css" rel="stylesheet">
	<style type="text/css">
		@media(min-width:768px) {
   		 #page-wrapper {
        margin: 0 0 0 250px !important;
       
      
  
    }
    }

#ta{
       border:1px solid #d3d3d3;
       
       }
       
     #ta{ 
     width:60%;
     height:100%;
     margin:auto;
     text-align:center;
     }
       #tb{
      width:60%;
     height:100%;
     margin:auto;
     text-align:center;
       }
       
       
       #sb{   width: 100%;
   
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
#sb

{
   padding: 5px;

   width:40pt;

   font-size: 13px;
  
       }
	</style>

	 <!-- Custom CSS -->
    <link href="sb-admin-2.css" rel="stylesheet">
	<!-- jQuery -->
	
    <script src="jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="sb-admin-2.js"></script>
</head>

<body>

<table id="tb">
	<tr >
		<td>
			<b>주문자, 연락처 수정</b>
		</td>
	</tr>
	<table width="450px" cellspacing="0" cellpadding="0" border="0" id="ta" >
<p style="text-align: center">
	<font size="2">
	&nbsp;&nbsp;&nbsp;&nbsp; 수정할 내용을 입력해주세요.
	<br/><br/><br/><br/></font></p>
<tr>
	<td height="29" bgcolor="#F3F3F3">
		<font size="2">이름</font>
	</td>
	<td>
		&nbsp;
		 <div class="form-group">
		<input id="name" name="member_name" style="width:initial;" type="text" class="form-control" value=""/>
	</td></div>
</tr>
<tr>
	<td colspan="2" height="1"></td>
</tr>
<tr>
	<td height="29" bgcolor="#F3F3F3">
		<font size="2">연락처</font>
	</td>
	<td>
		&nbsp;
		 <div class="form-group">
 <input id="phone" name="member_phone" style="width:initial;" type="text" class="form-control" value=""/>  
	</td> </div>
</tr>
<tr>
	<td colspan="2" style="padding:10px 0 20px 0" align="center">
	
		<input type="submit" id="sb" value="확인">
	</td>
</tr>
</table>
 
</table>
 
</body>
</html>