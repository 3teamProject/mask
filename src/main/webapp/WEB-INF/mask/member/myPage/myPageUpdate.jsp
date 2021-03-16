<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }" />
<c:import url="/WEB-INF/views/layout/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="mypage3">
		<div class="join">
			<form action="#none">
				<div class="wrap wd668">
					<div class="container">
						<div class="form_txtInput">
							<h2 class="sub_tit_txt">내 정보</h2>
							<div class="join_form">
								<table>
									<colgroup>
										<col width="30%" />
										<col width="auto" />
									</colgroup>
									<tbody>
										<tr>
											<th><span>이름</span>
											<td><input type="text" value="홍길동" disabled></td>
											</th>
										</tr>
										<tr>
											<th><span>아이디</span>
											<td><input type="text" value="ABCD" disabled></td>
											</th>
										</tr>
										<tr>
											<th><span>비밀번호</span></th>
											<td><input type="text"></td>
										</tr>
										<tr>
											<th><span>비밀번호 확인</span></th>
											<td><input type="text"></td>
										</tr>
										<tr>
											<th><span>이름</span></th>
											<td><input type="text" placeholder=""></td>
										</tr>
										<tr>
											<th><span>성별</span></th>
											<td><input type="radio" name="gen">남자 <input
												type="radio" name="gen">여자</td>
										</tr>
										<tr class="email">
											<th><span>이메일</span></th>
											<td><input type="text" class="email" size="16"><span
												class="mar10">@</span><input type="text"
												class="email email2" size="15"></td>
										</tr>
										<tr>
											<th><span>주소</span></th>
											<td><input type="text" class="address" name="ZIPCODE"
												size="10">-<input type="text" class="address"
												name="ZIPCODE" size="10">
											<button>우편번호</button>
												<br> <input type="text" class="address" name="ZIPCODE"
												size="31"></td>
										</tr>
										<tr>
											<th><span>휴대폰</span></th>
											<td><input type="text"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- join_form E  -->

							<div class="btn_wrap">
								<button type="submit">정보 수정</button>
							</div>
						</div>
						<!-- form_txtInput E -->
					</div>
					<!-- content E-->
				</div>
				<!-- container E -->
			</form>
		</div>
	</div>
</body>
</html>