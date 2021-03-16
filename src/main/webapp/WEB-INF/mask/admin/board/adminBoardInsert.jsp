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
                <a class="navbar-brand"style="color:#A9A9A9;" href="경로지정"><strong>이젠Mask 관리자페이지</strong></a>
            </div>
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
$(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 500,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
          
	});
});

$('.summernote').summernote({
	  toolbar: [
		    // [groupName, [list of button]]
		    ['fontname', ['fontname']],
		    ['fontsize', ['fontsize']],
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    ['color', ['forecolor','color']],
		    ['table', ['table']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']],
		    ['insert',['picture',]], //'link','video' 
		    ['view', ['fullscreen', 'help']]
		  ],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
});


//서머노트에 text 쓰기
$('#summernote').summernote('insertText');


// 서머노트 쓰기 비활성화
$('#summernote').summernote('disable');

// 서머노트 쓰기 활성화
$('#summernote').summernote('enable');


// 서머노트 리셋
$('#summernote').summernote('reset');


// 마지막으로 한 행동 취소 ( 뒤로가기 )
$('#summernote').summernote('undo');
// 앞으로가기
$('#summernote').summernote('redo');
</script>

<!-- <link href="summernote.css" rel="stylesheet">
<script src="summernote.js"></script>
 -->
<link href="summernote-lite.css" rel="stylesheet">
<script src="summernote-lite.js"></script>
<script src="summernote-ko-KR.min.js"></script>




<h2><B>공지사항 등록하기</B></h2>
<br>
<style type="text/css">
#bb{font-size:10;}
#cc{border : 3px solid #A9A9A9;}

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
 <p id="bb"><B>제목:</B>    &nbsp;  &nbsp;  &nbsp; <input type="text" id="tx"name="title" style="width: 30%;" placeholder="제목을 입력하세요."/>
<br>
<p><B>아이디: &nbsp; <input type="text" id="tx"name="id" style="width: 19%;" placeholder="admin"/>
<br>
<form method="post">
  <textarea id="summernote" name="editordata"></textarea>
</form>

<button type="submit" class="btn btn-success">등록</button>
<button type="reset" class="btn btn-default">작성취소</button>			



					
	</head>				
					
				</div>
			
			</div>
	

</body>
</html>