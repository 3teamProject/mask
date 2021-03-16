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
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
       		
            <!-- 메인container-->
           	 


   
<head>
<script type="text/javascript">
function delchk(){
    return confirm("삭제하시겠습니까?");
}
</script>
<style type="text/css">
.paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style>
</head>

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">배송관리</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         결제완료된 주문건의 택배, 반품, 환불을 처리하는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px;">
						<div class="col-sm-6">
							<a href="/pet/admin/memberadminList.dog?searchNum=0&isSearch="><button type="button" class="btn btn-outline btn-default">전체</button></a>													
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 회원수 : 0</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table
								class="table table-striped table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row">
										<th style="width: 7%; text-align:center;">주문날짜</th>
										<th style="width: 3%; text-align:center;">주문번호</th>
										<th style="width: 5%; text-align:center;">주문자</th>										
										<th style="width: 3%; text-align:center;">배송업체</th>
										<th style="width: 10%; text-align:center;">사유</th>
										<th style="width: 7%; text-align:center;">신청날짜</th>
										<th style="width: 7%; text-align:center;">완료날짜</th>
										<th style="width: 4%; text-align:center;">수정</th>
									</tr>
								</thead>
								
								<style>
				
				@import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");				
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

   width: 100%;

   font-size: 13px;
}


#tx
{ border-style: solid; 
border-width: 0 0 0 8px; 
padding: 12px; 
word-break: break-all; } 
#tx 
{ border-color: LightGray; 
background-color:rgba(211, 211, 211, 0.2);
 }


								</style>
																	
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">2021-03-09</td>
										<td style="text-align:center;vertical-align:middle;">1</td>
										<td style="text-align:center;vertical-align:middle;">홍길동</td>
										<td style="text-align:center;vertical-align:middle;"><input type="text" id="tx"/></td>	
										<td style="text-align:center;vertical-align:middle;"><input type="text" id="tx"/></td>			
										<td style="text-align:center;vertical-align:middle;"><input type="date" id="tx"/></td>		
										<td style="text-align:center;vertical-align:middle;"><input type="date" id="tx"/></td>	
										<TD> <button type="button" id="but" value=submit>등록</button>
											</TD>				
									</tr>
								
								</tbody>
							</table>
							
							</table>
						</div>
					</div>
					<div class="paging">
						<strong>1</strong>
					</div>
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<form action="">
									<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">전체</option>
									</select>
										<input class="form-control" type="text" name="isSearch" id="isSearch"/>
										<span>
										<button type="submit" class="btn btn-default">검색</button>
										</span>
									</form>
								</div>							
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