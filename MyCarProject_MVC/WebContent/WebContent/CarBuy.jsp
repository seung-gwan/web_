<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <head>
    <meta charset="utf-8">
    <title>Buy</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/sub.css">
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
    <main>
      <section id="container">
        <header class="headerCustomer">
          <h2>Buy</h2>
        </header>
        <div id="subWrap">
        <nav id="snb">
          <h3>내차 사기<span class="hidden">submenu</span></h3>
         
        </nav>
        
        </div>
      </section>

    </main>
    <main>
<form action="???" method="Post" style="width:100px; margin:0 30%" >
   
<c:forEach items="${SellList}" var="dto">      
<div class="card" style="width: 1000px; height: 200px">
  <img src='https://ifh.cc/g/T089YJ.jpg' class="card-img-top" alt="car4" style="width: 285px; position:relative; "  > 
  <div class="card-body" style=" width:500px; position:absolute; margin:0 350px;" >
    <h5 class="card-title">${dto.sCar }, ${dto.sCar_brand }</h5>
   <p class="card-text" ><span style="font-size:0.7em" class="txt_s" id="car4a">차량가 <fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.sCar_Price }" /><br></span>
    <span style="font-size:0.7em" class="txt_s" id="car4b">총 할부 신청금액</span> 
    <span style="font-size:1.3em; color:red; font-weight: bold ;" class="txt_s" id="car4aa"> <fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.sCar_salePrice }" /></span>원
    <span style="font-size:0.1em;" class="txt_s" id="car4aa2">세금별도</span>
    </p><br>
    <a href="#" class="btn btn-primary" style="margin:0;" >  자동차바구니  <br><span style="font-size:0.7em" class="txt_s" id="onlinebuy_delivery">내일 도착</span></a>
  </div>
  
</div>
</c:forEach>


</form>
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