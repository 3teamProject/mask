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


function aboardList() {
	if(confirm("수정하러 이동하시겠습니까?") == true){
		location.href='/c/ezen/admin/adminBoardUpdate.do';
	}else {
		return;
	}
}

function sboardList() {
	if(confirm("수정하러 쇼핑몰로 이동하시겠습니까?") == true){
		location.href='/c/ezen/mask/goodsDetail.do';
	}else {
		return;
	}
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
	<h1 class="page-header">회원목록</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         회원목록페이지 검색, 탈퇴 기능하는 페이지입니다.
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
										<th style="width: 5%; text-align:center;">TYPE</th>
										<th style="width: 30%; text-align:center;">제목</th>
										<th style="width: 5%; text-align:center;">작성자</th>										
										<th style="width: 9%; text-align:center;">날짜</th>
										<th style="width: 4%; text-align:center;">조회수</th>
										<th style="width: 4%; text-align:center;">S.C</th>
					                    <th style="width: 7%; text-align:center;">수정</th>
										<th style="width: 7%; text-align:center;">삭제</th>
									</tr>
								</thead>
							
						     	<tbody>
								
														<STYLE>

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
								
							
								
								
								
														</STYLE>			
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">공지사항</td>
										<td style="text-align:center;vertical-align:middle;">쇼핑몰_연휴 배송지연안내</td>
										<td style="text-align:center;vertical-align:middle;">admin</td>
										<td style="text-align:center;vertical-align:middle;">2021-03-09</td>
										
										<td style="text-align:center;vertical-align:middle;">1</td>	
										
										<td><input type="checkbox" id="c1" name="cc" /></td>
										<TD> <button type="button" onclick="aboardList();" id="but" value=submit>수정</button>
											</TD>		
										<TD> <button type="button" id="but" onclick="delchk();" value=submit>삭제</button>
											</TD>		
										</tr>
								
								<!--  등록된 상품이 없을때 -->
									 
								</tbody>
						     
						   	
						   	<TBODY>
						   	<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">답변</td>
										<td style="text-align:center;vertical-align:middle;">저희 상품을 구매해주셔서 감사합니다.</td>
										<td style="text-align:center;vertical-align:middle;">admin</td>
										<td style="text-align:center;vertical-align:middle;">2021-03-09</td>
										
										<td style="text-align:center;vertical-align:middle;">1</td>	
										<td><input type="checkbox" value="value" checked="checked" onclick="return false"/></td>	
								    	<TD> <button type="button" onclick="sboardList();" id="but" value=submit>수정</button>
											</TD>		
										<TD> <button type="button" onclick="delchk();" id="but" value=submit>삭제</button>
											</TD>		
										</tr>
								
								<!--  답변 수정 누를시에 상품페이지에있는 답변 부분으로 이동 / 삭제는 바로 삭제 -->
									 
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