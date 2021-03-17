<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="/WEB-INF/mask/layout/admin/layout.jsp"%>


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
										<th style="width: auto; text-align:center;">주문날짜</th>
										<th style="width: auto; text-align:center;">주문번호</th>
										<th style="width: auto; text-align:center;">주문자</th>										
										<th style="width: auto; text-align:center;">배송업체</th>
										<th style="width: auto; text-align:center;">사유</th>
										<th style="width: auto; text-align:center;">신청날짜</th>
										<th style="width: auto; text-align:center;">완료날짜</th>
										<th style="width: auto; text-align:center;">수정</th>
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



								</style>
																	
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">2021-03-09</td>
										<td style="text-align:center;vertical-align:middle;">1</td>
										<td style="text-align:center;vertical-align:middle;">홍길동</td>
										
										<td>
							<input style="width:100px; text-align:center; " placeholder="" type="text" class="form-control" value=""/>
                   						</td>	
                   					
										<td>
							<input style="width:100px; text-align:center; "  placeholder="" type="text" class="form-control" value=""/>
                   						</td>	
                   						
                   						<td style="text-align:center;vertical-align:middle;">
                   						<input type="date" class="form-control"/></td>		
										<td style="text-align:center;vertical-align:middle;">
										<input type="date" class="form-control"/></td>	
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