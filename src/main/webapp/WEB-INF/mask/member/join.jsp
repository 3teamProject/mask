<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<c:import url="/WEB-INF/views/layout/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--회원가입-->
        <div class="join_jsp">
            <div class="join">
                <form action="#none">
                <div class="wrap wd668">
                    <div class="container">
                      <div class="form_txtInput">
                        <h2 class="sub_tit_txt">Create Account</h2>
                        <div class="join_form">
                          <table>
                            <colgroup>
                              <col width="30%"/>
                              <col width="auto"/>
                            </colgroup>
                            <tbody>
                              <tr>
                                <th><span>아이디</span></th>
                                <td><input type="text" ><button>중복확인</button></td>
                              </tr>
                              <tr>
                                <th><span>비밀번호</span></th>
                                <td><input type="text" ></td>
                              </tr>
                              <tr>
                                <th><span>비밀번호 확인</span></th>
                                <td><input type="text" ></td>
                              </tr>
                              <tr>
                                <th><span>이름</span></th>
                                <td><input type="text" placeholder=""></td>
                              </tr>
                              <tr>
                                <th><span>성별</span></th>
                                <td>
                                    <span class="g"><input type="radio" name="gen" id="M"></span><label for="M">남자</label>
                                    <span class="g"><input type="radio" name="gen" id="G"></span><label for="G">여자</label>
                                </td>
                              </tr>
                              <tr class="email">
                                <th><span>이메일</span></th>
                                <td>
                                  <input type="text"  class="email" size="16"><span class="mar10">@</span>
                                  <input type="text"  class="email email2" size="15">
                                </td>
                              </tr>
                              <tr>
                                <th><span>주소</span></th>
                                <td><input type="text"  class="address" name="ZIPCODE" size="10">-<input type="text"  class="address" name="ZIPCODE" size="10"><button>우편번호</button>
                                    <div class="height"></div>
                                    <input type="text"  class="address" name="ZIPCODE" size="31" >
                                </td>
                              </tr>
                              <tr>
                                <th><span>휴대폰</span></th>
                                <td><input type="text"></td>
                              </tr>
                            </tbody>
                          </table>
                        </div><!-- join_form E  -->
                        
                        <div class="agree_wrap">
                          <div class="checkbox_wrap">
                            <input type="checkbox" id="news_letter" name="news_letter" class="agree_chk">
                            <label for="news_letter">[선택]뉴스레터 수신동의</label>
                          </div>
                          <div class="checkbox_wrap mar27">
                            <input type="checkbox" id="marketing" name="marketing" class="agree_chk">
                            <label for="marketing">[선택]마케팅 목적 개인정보 수집 및 이용에 대한 동의</label>
                            <ul class="explan_txt">
                              <li><span class="red_txt">항목 : 성별, 생년월일</span></li>
                              <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
                                대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
                                다만 이때 회원 대상 서비스가 제한될 수 있습니다.
                              </li>
                            </ul>
                          </div>
                        </div>
                        <div class="btn_wrap">
                          <button type="submit">확인</button>
                        </div>
                      </div> <!-- form_txtInput E -->
                    </div><!-- content E-->
                  </div> <!-- container E -->
                </form>
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
          </div>  
</body>
</html>