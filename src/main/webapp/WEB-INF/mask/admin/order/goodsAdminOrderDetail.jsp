<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

#but
{
   margin: auto;

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

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color:#E0FFFF">
            <div class="navbar-header" style="background-color:#E0FFFF">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand"style="color:#A9A9A9;" href=""><strong>이젠Mask 관리자페이지</strong></a></div>
            <!-- /.navbar-header -->



            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="/mask/admin/admin.mk" style="background: #e7e7e7;border-bottom: 1px solid #F8F8F8;"><i class="fa fa-dashboard fa-fw"></i>관리자홈</a>
                        </li>
						<li>
                            <a href="/mask/main.mk" style="background: #e7e7e7;border-bottom: 1px solid #F8F8F8;"><i class="fa fa-dashboard fa-fw"></i>쇼핑몰로 이동</a>
                        </li>
						<li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>상품관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="/mask/admin/goodsadminList.mk">- 상품목록</a>
                                </li>
                                <li>
                                    <a href="/mask/admin/goodsInsertForm.mk">- 상품등록</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-dashboard fa-fw"></i>회원관리<span class="fa arrow">▼</span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/pet/admin/memberadminList.dog">- 회원목록</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>   
                                             
                        <li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>주문관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="">- 주문목록</a>
                                </li>
                                <li>
                                    <a href="">- 배송관리</a>
                                </li>
                                <li>
                                    <a href="">- 매출관리</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>게시판관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="">- 게시판 통합관리</a>
                                </li>
                                 <li>
                                    <a href="">- 공지사항 등록</a>
                                </li>
                                <li>
                                    <a href="">- 공지사항 수정</a>
                                </li>
                            </ul>
                                
                                
                             
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
       		
            <!-- 메인container-->
     </head>

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">주문상세</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         주문상세 수정, 기능하는 페이지입니다. (삭제 불가능)
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">

					<div class="row">
						<div class="col-sm-12">
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
							<p>주문정보</p>
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 8%; text-align:center;vertical-align:middle;">주문번호</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">우편번호  <input type="button" value="수정" onclick="DaumAddressAPI();" id="but"/></th>	
										<th style="width: 10%; text-align:center;vertical-align:middle;">배송주소  <input type="button" value="수정" onclick="DaumAddressAPI();" id="but"/></th>										
										<th style="width: 5%; text-align:center;vertical-align:middle;">주문일자</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">주문자 <input type="button" value="수정" onclick="openUpdate()" id="but" /></th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">연락처 <input type="button" value="수정" onclick="openUpdate()" id="but" /></th>						
									</tr>
								</thead>
								<tbody>
								
																	
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">1</td>
										<td style="text-align:center;vertical-align:middle;">54282</td>
										<td style="text-align:center;vertical-align:middle;">서울특별시 종로구 미려빌딩 6층</td>
										<td style="text-align:center;vertical-align:middle;">2021-03-09</td>
										<td style="text-align:center;vertical-align:middle;">admin</td>
										<td style="text-align:center;vertical-align:middle;">01012345678</td>									
									</tr>
								
						
						
									 
								</tbody>
							</table>
						
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
function openUpdate() {
	var url="./admin_delivery_update.html";
	open(url, "confirm", "toolbar=no,locaion=no,status=no,menubar=no,scrollbars=no,resizable=no,width=450px,height=300");
}
</script>
							</head>
							
							</script>
							<br>
							<br>
							<br>
							결제정보
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 5%; text-align:center;vertical-align:middle;">상품명</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">주문금액</th>										
										<th style="width: 5%; text-align:center;vertical-align:middle;">배송비</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">택배회사</th>		
										</tr>
								</thead>
								
								<tbody>
								
																	
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">마스크</td>
										<td style="text-align:center;vertical-align:middle;">1000만원</td>
										<td style="text-align:center;vertical-align:middle;">2500원</td>
										<td style="text-align:center;vertical-align:middle;">CJ대한통운</td>								
									</tr>
								
								<!--  등록된 상품이 없을때 -->
									 
								</tbody>
							</table>
							<br>
							<br>
							<br>
							결제상태 및 상품정보
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 5%; text-align:center;vertical-align:middle;">입금상태</th>								
										<th style="width: 5%; text-align:center;vertical-align:middle;">옵션</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">수량</th>
										</tr>
								</thead>
								
								<tbody>
								
																	
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">결제완료</td>
										<td style="text-align:center;vertical-align:middle;">S</td>
										<td style="text-align:center;vertical-align:middle;">100개</td>								
									</tr>
								
								<!--  등록된 상품이 없을때 -->
									 
								</tbody>
							</table>
							</table>
							
						</div>
					</div>
				</div>
			</div>
			<!-- /.table-responsive -->							
		</div>
	</div>
        <!-- /.panel -->   
</div>

            <!-- // container -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    

</body>

</html>
             
            
            