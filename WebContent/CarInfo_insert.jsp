<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</style>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>차량 정보</title>



    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/main.css">
  </head>
  <body>
    <header id="header">
      <h1><a href="index.jsp">RentCar</a></h1>
      <nav id="membership">
        <h2 class="hidden">멤버쉽네비게이션</h2>
        <ul>
          <li class="goLogin">
          <c:if test="${sessionID != null }">
	        ${sessionID }
	        <a href="logout.do">로그아웃</a>
            </c:if>
          <c:if test="${sessionID == null }">
          	<a href="Login.jsp">로그인</a>
          </c:if>
          </li>
          <li class="goJoin">
          <c:if test="${sessionID != null }">
            	<a href="info_view.do?member_id=${sessionID}">개인정보</a>
            </c:if>
            <c:if test="${sessionID ==null }">
            	<a href="join.jsp">회원가입</a>
            </c:if>
          </li>
        </ul>
      </nav>
      <nav id="gnb">
        <h2 class="hidden">펀웹주요이용메뉴</h2>
        <ul>
          <li><a href="CarSell.do?member_id=${sessionID }">내차 팔기</a></li>
          <li><a href="CarBuy.do">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="#">브랜드인증관</a></li>
          <li><a href="#">전국직영점</a></li>
        </ul>
      </nav>
    </header>
    <hr>
    <main>
      <section id="contactUs"style="width:100%; height: 363px">
        <h2 class="hidden">contact us</h2>
        
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width:100%; height: 363px">
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
 <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://ifh.cc/g/z38w0A.jpg" class="d-block w-100" alt="유재석사진1">
    </div>
    <div class="carousel-item">
       <img src="https://ifh.cc/g/PTo2TJ.jpg" class="d-block w-100" alt="유재석사진2">
    </div>
  </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
</section>





<section style="display: flex;
  justify-content: center;
  align-items: center;
  min-height: 50vh;">
<form action ="Carinfo_insert.do" method="post">
<div>
<table>
    
	<tr>
	   
		<td>차종<input type="hidden" name="member_id" value="${sessionID}" style="width: 200px; height: 30px;"></td>
		<td><input type="text" name="member_car" style="width: 200px; height: 30px;"></td>
	
	

	</tr>
	
	<tr>
		<td>차량 번호</td>
		<td><input type="text" name="car_Num"style="width: 200px; height: 30px;"></td>
	</tr>
	<tr>
		<td>주행거리</td>
		<td><input type="text" name="car_kM" style="width: 200px; height: 30px;"></td>
	</tr>	
	<tr>
		<td>생산년도</td>
		<td><input type="text" name="car_ProductY" style="width: 200px; height: 30px;"></td>
	</tr>
	<tr>
		<td>색상</td>
		<td><input type="text" name="car_color" style="width: 200px; height: 30px;"></td>
	</tr>
	<tr>
		<td>제조사</td>
		<td><input type="text" name="car_brand" style="width: 200px; height: 30px;"></td>
	</tr>
	<tr>
	<td style="width: 70px; height: 34px;">타입</td>
	</tr>
	<tr>
	</tr>
	
	</table>
	</div>
	
	<div style="width: 45px; height: 21px;"><table style="width: 45px; height: 21px;">
	<tr style="width: 45px; height: 21px;">
		
		<td style="width: 45px; height: 21px;"><input style="width: 45px; height: 21px;" type="radio" name="car_type" value="경차" id="SS">경차</td>
	    <td style="width: 45px; height: 21px;"><input style="width: 45px; height: 21px;" type="radio" name="car_type" value="소형" id="S">소형</td>
   	    <td style="width: 45px; height: 21px;"><input style="width: 45px; height: 21px;" type="radio" name="car_type" value="중형" id="M">중형</td>
  	    <td style="width: 45px; height: 21px;"><input style="width: 45px; height: 21px;" type="radio" name="car_type" value="대형" id="L">대형</td>
	  
	</tr>
	</table></div>
	<div style="margin:50px 30px 0 0">
	<table>
	<tr>
		<td>사고 유/무</td>
		<td><input  style="margin: 0 0 0 30px " type="radio" name="car_Accident" value="Yes" id="yes">Y</td>
		<td><input style="margin: 0 0 0 30px "type="radio" name="car_Accident" value="No" id="no">N</td>
	</tr>
	</table></div>
	<div>
	<table>
	<tr>
		<td><input style="width: 200px; height: 30px; margin:30px 0 0 50px;
  color: #fff;
  border: none;
  max-width: 120px;
  cursor: pointer;
  font-weight: 500; background: #e91e63;" type="submit" value="확인" > </td>
	</tr>
</table>
</div>
</form>
</section>
</main>
 <div id="footerWrap">
      <footer id="footer">
        <div class="info">
          <small class="copyright">All contents Copyright 2011 FunWeb Inc. all rights reserved</small>
          <address>Contact mail : funweb@funwebbiz.com Tel: +82 64 123 4315 Fax +82 64 123 4321</address>
        </div>
        <ul class="sns">
          <li class="facebook"><a href="#">페이스북 바로가기</a></li>
          <li class="twitter"><a href="#">트위터 바로가기</a></li>
        </ul>
      </footer>
    </div>
</html>