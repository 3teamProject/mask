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
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color:	#E0FFFF">
            <div class="navbar-header" style="background-color:	#E0FFFF">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand"style="color:#A9A9A9;" href=""><strong>이젠Mask 관리자페이지</strong></a>
            </div>
            <!-- /.navbar-header -->



            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
						<li>
                            <a href="" style="background: #e7e7e7;border-bottom: 1px solid #F8F8F8;"><i class="fa fa-dashboard fa-fw"></i>쇼핑몰로 이동</a>
                        </li>
						<li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-bar-chart-o fa-fw"></i>상품관리<span class="fa arrow">▼</span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="">-상품목록</a>
                                </li>
                                <li>
                                    <a href="">- 상품등록</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="#"style="background: #e7e7e7;"><i class="fa fa-dashboard fa-fw"></i>회원관리<span class="fa arrow">▼</span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="">- 회원목록</a>
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
function validateForm() {
    var x = document.forms["joinform"]["goods_name"].value;
    if (x == null || x == "") {
        alert("상품명을 입력해야합니다");
        return false;
    }
}
</script>
</head>


<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">상품등록</h1>
</div>

<div class="row" style="padding-left:15px;width:900px;">
	<div class="panel panel-default">
		<div class="panel-heading">상품등록 페이지입니다.</div>
			<div class="panel-body">
				<form id="goods" name="joinform" action="goodsInsert.dog" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">	
						<div class="form-group">
                            <label>카테고리</label>	                            
                               <select id="goods_category" name="goods_category" style="width:initial;" class="form-control">
								<option value="0">마스크</option>
								<option value="1">손소독제</option>
								<option value="2">체온계</option>
							</select>
                        </div>
                        <div class="form-group">
                            <label>상품명</label>
                            <input id="goods_name" name="goods_name" name="goods_name" style="width:500px;" placeholder="상품명을 입력하세요" type="text" class="form-control" value=""/>
                        </div>
                        <div class="form-group">
                            <label>상품이미지</label>
                            <input type="file" name="file[0]" size="30" value=''/>
                            <p class="help-block">메인상품 이미지 입니다 800x800 사이즈 권장합니다</p>
                        </div>
                        <div class="form-group">
                            <label>상품수량</label>
                            <input id="goods_amount" name="goods_amount" style="width:107px;" placeholder="상품수량을 입력해주세요" type="text" class="form-control" value="1" value="0"/>
                        </div>
                        <div class="form-group">
                            <label>판매가격</label>
                            <input id="goods_price" name="goods_price" style="width:initial;" type="text" class="form-control" value="0"/>
                            <p class="help-block">판매가격을 입력하세요.</p>
                        </div>
                        <div class="form-group">
                            <label>상품 내용 이미지</label><!-- goods_contentimage -->
                            <input type="file" name="file[1]" size="30" value=''/>
                            <p class="help-block">상품설명 이미지 입니다 1000x(2500~3800)사이즈 권장</p>
                        </div>
                        <div class="form-group">
                            <label>배송 내용 이미지</label><!-- goods_delevimage -->
                            <input type="file" name="file[2]" size="30" value=''/>
                            <p class="help-block">상품설명 이미지 입니다 1000x1000사이즈 권장</p>
                        </div>
                        <div class="form-group">
                            <label>상품구분</label>	                            
                               <select id="GOODS_CATEGORY2" name="GOODS_CATEGORY2" style="width:initial;" class="form-control">
								<option value="0">s</option>
								<option value="1">m</option>
								<option value="2">l</option>
							</select>
							<p class="help-block">선택옵션에 따라 s, m, l으로 구분되며 메인페이지 출력옵션에 사용됩니다</p>
                        </div>
						<button type="submit" class="btn btn-success">상품등록</button>
						<button type="reset" class="btn btn-default">작성취소</button>					
				</form>
			</div>
	</div>
</div>



            <!-- // container -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    

</body>

</html>