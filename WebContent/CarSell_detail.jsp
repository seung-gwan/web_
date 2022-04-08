<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<head>
<meta charset="UTF-8">
<title>판매 신청</title>
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
          <li><a href="CarSell.jsp">내차 팔기</a></li>
          <li><a href="CarBuy.jsp">내차 사기</a></li>
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
<section>
<form action="SellList_update.do?sNum=${SellList_detail.sNum }" method="post">
	<table style="display: flex;
  justify-content: center;
  align-items: center;
  min-height: 50vh;">
	
	<tr>
		<td>차종</td>
		<td>${SellList_detail.sCar }</td>
	</tr>
	<tr>
		<td>차량번호</td>
		<td>${SellList_detail.sCar_Num }</td>
	</tr>
	<tr>
		<td>주행거리</td>
		<td>${SellList_detail.sCar_kM }</td>
	</tr>
	<tr>
		<td>생산년도</td>
		<td>${SellList_detail.sCar_ProductY }</td>
	</tr>
	<tr>
		<td>색상</td>
		<td>${SellList_detail.sCar_color }</td>
	</tr>
	<tr>
		<td>브랜드</td>
		<td>${SellList_detail.sCar_brand }</td>
	</tr>
	<tr>
		<td>타입</td>
		<td>${SellList_detail.sCar_type }</td>
	</tr>
	<tr>
		<td>사고유/무</td>
		<td>${SellList_detail.sCar_Accident }</td>
	</tr>
	<tr>
		<td>원가</td>
		<c:if test="${SellList_detail.sCar_Price == 0 }">
		<td><input type="text" name="sCar_Price"></td>
		</c:if>
		<c:if test="${SellList_detail.sCar_Price != 0 }">
		<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${SellList_detail.sCar_Price }" /></td>
		</c:if> 
	</tr>
	<tr>
		<td>할인가</td>
		<c:if test="${SellList_detail.sCar_salePrice == 0 }">
		<td><input type="text" name="sCar_salePrice"></td>
		</c:if>
		<c:if test="${SellList_detail.sCar_salePrice != 0 }">
		<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${SellList_detail.sCar_salePrice }" /></td>
		</c:if> 
	</tr>
	<tr>
	<c:if test="${SellList_detail.sCar_Price == 0 }">
		<td><input type="submit" value="추가"></td>
	</c:if>
	</tr>
	<tr>	
	<td>
	<a href = "index.jsp">홈으로</a>
	</td>
	</tr>
	

	
</table>

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

</body>
</html>
