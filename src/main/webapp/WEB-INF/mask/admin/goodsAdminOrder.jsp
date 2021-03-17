<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/mask/layout/admin/layout.jsp"%>
<head>
<script type="text/javascript">
//주문번호 같은 열 합치는 Jquery
$( document ).ready(function() {
	$('#dataTables-example').rowspan(0);
});

$.fn.rowspan = function(colIdx, isStats) {       
	return this.each(function(){      
		var that;     
		$('tr', this).each(function(row) {      
			$('td:eq('+colIdx+')', this).filter(':visible').each(function(col) {
				
				if ($(this).html() == $(that).html()
					&& (!isStats 
							|| isStats && $(this).prev().html() == $(that).prev().html()
							)
					) {            
					rowspan = $(that).attr("rowspan") || 1;
					rowspan = Number(rowspan)+1;

					$(that).attr("rowspan",rowspan);
					
					// do your action for the colspan cell here            
					$(this).hide();
					
					//$(this).remove(); 
					// do your action for the old cell here
					
				} else {            
					that = this;         
				}          
				
				// set the that if not already set
				that = (that == null) ? this : that;      
			});     
		});    
	});  
}; 

    
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

						
		@import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");				
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
<div id="page-wrapper">
<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">주문목록</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         주문목록페이지 검색, 수정, 기능하는 페이지입니다. (삭제 불가능)
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px;">
						<div class="col-sm-6">
							<a href="/pet/admin/adminOrderAllList.dog?searchNum=0&isSearch="><button type="button" class="btn btn-outline btn-default">전체</button></a>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--결재방식--</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=1&isSearch=무통장입금">무통장입금</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=1&isSearch=카드결재">카드결제</option>
							</select>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--주문상태--</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=2&isSearch=상품준비">무통장입금전</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=2&isSearch=입금대기">결제완료</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=2&isSearch=배송중">배송중</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=2&isSearch=배송완료">배송완료</option>
								<option value ="/pet/admin/adminOrderAllList.dog?searchNum=2&isSearch=구매완료">구매확정</option>
							
							</select>													
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 주문수 : 1</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 5%; text-align:center;vertical-align:middle;">주문번호</th>
										<th style="width: 4%; text-align:center;vertical-align:middle;">주문자</th>										
										<th style="width: 5%; text-align:center;vertical-align:middle;">결제방법</th>
										<th style="width: 6%; text-align:center;vertical-align:middle;">상품명</th>
										<th style="width: 4%; text-align:center;vertical-align:middle;">수량</th>
										<th style="width: 1%; text-align:center;vertical-align:middle;">입금상태</th>
										<th style="width: 10%; text-align:center;vertical-align:middle;">주문일자</th>		
										<th style="width: 1%; text-align:center;vertical-align:middle;">수정</th>								
									</tr>
								</thead>
								
								
									<tbody>							
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">1</td>
										<td style="text-align:center;vertical-align:middle;">홍길동</td>
										<td style="text-align:center;vertical-align:middle;">카드결제</td>
										
										<td style="text-align:center;vertical-align:middle;">마스크</td>
										<td style="text-align:center;vertical-align:middle;">100개</td>
										<td>
										<select class="form-control" name="select" onchange="window.open(value,'_self');">
										<option value ="#this">무통장입금전</option>
										
								<option value ="#this">결제완료</option>
								<option value ="#this">배송중</option>
								<option value ="#this">배송완료</option>
								<option value ="#this">구매확정</option>
							</select>
								</td>
										<td style="text-align:center;vertical-align:middle;">2021-03-10</td>	
										<td><input type="button" value="저장" id="but" onclick="submit"/></td></tr>
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