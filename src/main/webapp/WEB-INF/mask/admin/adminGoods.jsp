<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/mask/layout/admin/layout.jsp"%>
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


<div id="page-wrapper">
<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">상품목록</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         상품목록페이지 검색, 수정, 삭제 기능하는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px;">
						<div class="col-sm-6">
							<a href="/mask/admin/goodsadminList.mk?searchNum=0&isSearch="><button type="button" class="btn btn-outline btn-default">전체</button></a>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--카테고리--</option>
								<option value ="/mask/admin/goodsadminList.mk?searchNum=2&isSearch=0">마스크</option>
								<option value ="/mask/admin/goodsadminList.mk?searchNum=2&isSearch=1">손소독제</option>
								<option value ="/mask/admin/goodsadminList.mk?searchNum=2&isSearch=2">체온계</option>
							</select>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--상품구분--</option>
								<option value ="/mask/admin/goodsadminList.mk?searchNum=3&isSearch=1">품절</option>
								<option value ="/mask/admin/goodsadminList.mk?searchNum=3&isSearch=2">재고있음</option>
							
							</select>						
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 상품 등록수 : 0</div>
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
										<th style="width: 5%; text-align:center;">상품번호</th>
										<th style="width: 8%; text-align:center;">상품이미지</th>
										<th style="width: 5%; text-align:center;">카테고리1</th>		
										<th style="width: 5%; text-align:center;">카테고리2</th>								
										<th style="width: 9%; text-align:center;">상품명</th>
										<th style="width: 7%; text-align:center;">가격</th>
										<th style="width: 4%; text-align:center;">상태</th>
										<th style="width: 10%; text-align:center;">등록일자</th>
										<th style="width: 10%; text-align:center;">관리</th>
									</tr>
								</thead>
								<tbody>
								
								
																	
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">1</td>
										<td style="text-align:center;vertical-align:middle;"><img src="/c/resources/img/blueMask.jpg" width="60" height="60" alt="" onerror="this.src='/c/resources/img/blueMask.jpg'" /></td>
										<td style="text-align:center;vertical-align:middle;">마스크
																							
																							
																							
																							</td>										
										<td style="text-align:center;vertical-align:middle;">S</td>
										<td style="text-align:center; vertical-align:middle;">미세먼지 마스크</td>
										<td style="text-align:center;vertical-align:middle;">1100</td>
										<td style="text-align:center;vertical-align:middle;">
																							추천
																							
																							</td>										
										<td style="text-align:center;vertical-align:middle;">21.03.12 19:09</td>
										<td style="text-align:center;vertical-align:middle;">
							<a href="/c/ezen/admin/adminGoodsUpdate.do"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
											
										 <a href="/c/ezen/admin/goodsModifyForm.dog?goods_num=8"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()"></a></td>									
									</tr>
								
							
									 
								</tbody>
								
								
								<!--  등록된 상품이 없을때
									
										<tr><td colspan="9" style="text-align:center;">등록된 상품이 없습니다</td></tr>
			 -->						 
								</tbody>
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
										<option value="0">상품 번호</option>
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
				
		</div>
	</div>
    
</div>
 </div>

    

</body>

</html>