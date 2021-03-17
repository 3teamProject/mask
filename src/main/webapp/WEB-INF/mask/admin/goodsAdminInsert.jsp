<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/mask/layout/admin/layout.jsp"%>

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


function goodsList() {
	if(confirm("상품목록으로 가시겠습니까?") == true){
		location.href='/c/ezen/admin/goodsAdmin.do';
	}else {
		return;
	}
}


</script>

 
</head>
<div align="center">
      <h3>상품등록</h3> 
</div>
<br>
<div align="center" class="container" style="width:60%;">
<form name="frm" id="frm" enctype="multipart/form-data" method="post">
      <table align="center" style="border:none; cellpadding:10px; cellspacing:10px; width:100%;">
            
            <tr>
               <th>이름</th>
               
               <td>
                  <input type="text" id="GOODS_NAME" name="GOODS_NAME" placeholder="상품이름입력" size="40" class="form-control"
                  style="padding:auto;" value=>
               </td>
            </tr>
            
            
            <tr>
               <th>내용</th>
               <td>
  <textarea id="summernote" name="editordata">
  </textarea>
  
  
               </td>
               
            </tr>
         
            <tr>
               <th>카테고리1&nbsp;&nbsp;</th>
               <td>
                  <select name="GOODS_CATEGORY1" style="width:200px;">
                     <option value="마스크">마스크</option>
                     <option value="손소독제">손소독제</option>
                     <option value="체온계">체온계</option>
                  </select>
               </td>
            </tr>
            
       
            <tr>
               <th>카테고리2&nbsp;&nbsp;</th>
               
               <td>
                  <select name="GOODS_CATEGORY2" style="width:200px;">
                     <option value="s">s</option>
                     <option value="m">m</option>
                     <option value="l">l</option>
                  </select>
               </td>
            </tr>
            
              <tr>
               <th>원가&nbsp;&nbsp;</th>
               <td>
                  <input type="text" name="GOODS_CPRICE" id="GOODS_CPRICE" placeholder="상품회원가" size="40"  class="form-control"
                  style="padding:10px; width:70%;" value=>
               </td>
            </tr>
            
            
            <tr>
               <th>등록가&nbsp;&nbsp;</th>
               <td>
                  <input type="text" name="GOODS_PRICE" id="GOODS_PRICE" placeholder="상품회원가" size="40"  class="form-control"
                  style="padding:10px; width:70%;" value=>
               </td>
            </tr>
       <tr>
               <th>상태&nbsp;&nbsp;</th>
               <td>
                  <input type="checkbox" name="" id="" value="" style="padding:10px;"> 신상
                  <input type="checkbox" name="" id="" value="" style="padding:10px;"> 품절
                  <input type="checkbox" name="" id="" value="" style="padding:10px;"> 할인
                  <input type="checkbox" name="" id="" value="" style="padding:10px;"> 비활
                  <input type="hidden" name="GOODS_HASH" id="GOODS_HASH" value="">
               </td>
            </tr>
            <tr>
               <th>상품수량&nbsp;&nbsp;</th>
               <td>
               <input type="text" name="GOODS_STOCK" id="GOODS_STOCK" placeholder="상품수량" size="40"  class="form-control"
               style="padding:10px; width:70%;" value=>
               <input type="hidden" id="IDX" name="IDX" value=""> 
               </td>
            </tr>
            
      </table>
      	<button type="submit" class="btn btn-success">상품등록</button>
		<button type="button" onclick="goodsList();" class="btn btn-default">목록</button>	
   </form>


</html>