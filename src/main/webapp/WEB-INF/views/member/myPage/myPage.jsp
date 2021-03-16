<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<c:import url="/WEB-INF/views/layout/header.jsp"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resource/css/34.css">
<title>Document</title>
</head>
<body>
	<div class="mypage2">
		<div class="body">
			<label>마이페이지</label>
			<div class="box">
				<div>안녕하세요. 홍길동님</div>
				<div>
					<span>배송중 : </span><span>0건</span>
				</div>
				<div>
					<span>배송완료 :</span><span>0건</span>
				</div>
			</div>
			<div class="join">
					<div class="wrap wd668">
						<div class="container">
							<div class="form_txtInput">

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
												<td><input type="password" disabled value="12345679"></td>
											</tr>
											<tr>
												<th><span>성별</span></th>
												<td><input type="radio" name="gen" checked disabled>남자
													<input type="radio" name="gen" disabled>여자</td>
											</tr>
											<tr class="email">
												<th><span>이메일</span></th>
												<td><input type="text" class="email" size="16"
													value="abcd" disabled><span class="mar10">@</span><input
													type="text" class="email email2" size="15"
													value="naver.com" disabled></td>
											</tr>
											<tr>
												<th><span>주소</span></th>
												<td><input type="text" class="address" name="ZIPCODE"
													size="10" value="1234" disabled>-<input type="text"
													class="address" name="ZIPCODE" size="10" disabled>
													<br> <input type="text" class="address" name="ZIPCODE"
													size="31" disabled></td>
											</tr>
											<tr>
												<th><span>휴대폰</span></th>
												<td><input type="text" value="01012345678" disabled></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- join_form E  -->

								<div class="btn_wrap">
                					<button onclick="location.href='${root}ezen/member/myPageLogin.do?info=update'">정보 수정</button>
                					<button onclick="location.href='${root}ezen/member/myPageLogin.do?info=delete'">회원 탈퇴</button>
              					</div>
							</div>
							<!-- form_txtInput E -->
						</div>
						<!-- content E-->
					</div>
					<!-- container E -->
			</div>
		</div>
	</div>
</body>
</html>