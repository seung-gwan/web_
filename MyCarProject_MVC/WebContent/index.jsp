<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>RentCarMain</title>
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
          <li class="goJoin"><a href="join.jsp">회원가입</a></li>
        </ul>
      </nav>
      <nav id="gnb">
        <h2 class="hidden">펀웹주요이용메뉴</h2>
        <ul>
          <li><a href="Sell.html">내차 팔기</a></li>
          <li><a href="Buy.html">내차 사기</a></li>
          <li><a href="CustomerService.jsp">고객센터</a></li>
          <li><a href="#">브랜드인증관</a></li>
          <li><a href="#">전국직영점</a></li>
        </ul>
      </nav>
    </header>
    <hr>
    <main>
      <section id="contactUs">
        <h2 class="hidden">contact us</h2>
        
        <ul>
            <li><a>내차팔기</a></li>
            <li><a>내차사기</a></li>
            <li><a>고객센터</a></li>
            <li><a>브랜드인증관</a></li>
            <li><a>전국직영점</a></li>
        </ul>
      </section>
      <div id="solutionWrap">
        <section id="solution">
            <h2 class="hidden">solutions</h2>
            <article class="hosting solution">
              <a href="#">
                <h3>원하는 차가 있어요</h3>
              </a>
            </article>
            <article class="security solution">
              <a href="#">
                <h3>예산이 정해져 있어요</h3>
              </a>
            </article>
        </section>
      </div>
      <section id="board">
        <h2 class="hidden">customer center</h2>
        <section id="sec_news">
          <h3>공지사항</h3>
          
        </section>
        <section id="notice">
          <h3>판매&amp;구매 후기</h3>
          
        </section>
      </section>
    </main>
    <hr>
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