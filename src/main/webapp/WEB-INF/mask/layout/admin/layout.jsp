<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<style type="text/css">
		@media(min-width:768px) {
   		 #page-wrapper {
        margin: 0 0 0 250px !important;
       
  
    }
}
	</style>


   <title>이젠Mask 관리자페이지</title>

    <!-- Bootstrap Core CSS -->
    <link href="/mask/resources/admin_css/bootstrapadmin.min.css" rel="stylesheet">


	 <!-- Custom CSS -->
    <link href="/mask/resources/admin_css/sb-admin-2.css" rel="stylesheet">
	<!-- jQuery -->
	
    <script src="/mask/resources/admin_js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/mask/resources/admin_js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/mask/resources/admin_js/sb-admin-2.js"></script>
    
    <link href="/mask/resources/summerboard/summernote-lite.css" rel="stylesheet">
<script src="/mask/resources/summerboard/summernote-lite.js"></script>
<script src="/mask/resources/summerboard/summernote-ko-KR.min.js"></script>

    
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
                <a class="navbar-brand"style="color:gray;" href="/pet/admin/admin.dog"><strong>이젠Mask 관리자페이지</strong></a>
            </div>
            <!-- /.navbar-header -->



            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
						<li>
                            <a href="/mask/main.mk" style="background: #e7e7e7;border-bottom: 1px solid #F8F8F8;"><i class="fa fa-dashboard fa-fw"></i>쇼핑몰로 이동</a>
                        </li>
						<li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>상품관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="/c/ezen/admin/adminGoodsList.do">- 상품목록</a>
                                </li>
                                <li>
                                    <a href="/c/ezen/admin/adminGoodsInsert.do">- 상품등록</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active">
                         <a href="#"style="background: #e7e7e7;"><i class="fa fa-dashboard fa-fw"></i>회원관리<span class="fa arrow">▼</span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/c/ezen/admin/adminMember.do">- 회원목록</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>   
                                             
                          <li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>주문관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="/c/ezen/admin/goodsAdminOrder.do">- 주문목록</a>
                                </li>
                                <li>
                                    <a href="/c/ezen/admin/goodsAdminOrderDetail.do">- 배송관리</a>
                                </li>
                                <li>
                                    <a href="/c/ezen/admin/adminSalList.do">- 매출관리</a>
                                </li>
                            </ul>
                        </li>
                         <li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>게시판관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="/c/ezen/admin/adminBoardList.do">- 게시판 통합관리</a>
                                </li>
                                 <li>
                                    <a href="/c/ezen/admin/adminBoardInsert.do">- 공지사항 등록</a>
                                </li>
                                <li>
                                    <a href="/c/ezen/admin/adminBoardUpdate.do">- 공지사항 수정</a>
                                </li>
                            </ul>
                        </li>
                            </ul>
                      
                        
                   </div>
                   </div>
                   </nav>
                </div>
      

</body>

</html>