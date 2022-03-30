<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Customer Service</title>
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
	        <a href="logout1.do">로그아웃</a>
            </c:if>
           <c:if test="${sessionID == null }">
          	<a href="Login.jsp">로그인</a>
          </c:if></li>
            <li class="goJoin"><a href="join.jsp">회원가입</a></li>
          </ul>
        </nav>
        <nav id="gnb">
          <h2 class="hidden">중고차주요이용메뉴</h2>
          <ul>
            <li><a href="Sell.html">내차 팔기</a></li>
          <li><a href="Buy.html">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="#">브랜드인증관</a></li>
          <li><a href="#">전국직영점</a></li>
          </ul>
        </nav>
      </header>
    <main>
      <section id="container">
        <header class="headerCustomer">
          <h2>customer center</h2>
        </header>
        <div id="subWrap">
        <nav id="snb">
          <h3>고객 센터<span class="hidden">submenu</span></h3>
          <ul>
            <li><a href="Notice.do">공지사항</a></li>
            <li><a href="SellReview.jsp">구매후기</a></li>
            <li><a href="#">판매후기</a></li>
            <li><a href="#">개인보호정책</a></li>
          </ul>
        </nav>
        <article id="subContent">
            <h3>공지사항</h3>
            
<table width="500" cellpadding ="0" cellspacing="0" border="1">
   <form action="Noticeview.do">
   <input type="hidden" name="bNum" value="${Notice_view.bNum }">
		<tr>
			<td>번호</td>
			<td>${Notice_view.bNum }</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${Notice_view.bHit } </td>
		</tr>
		<tr>
			<td>글쓴이</td>
			<td>${Notice_view.bName} </td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${Notice_view.bTitle} </td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${Notice_view.bContent}</td>
		</tr>
		<tr>
			<td colspan="2">
			&nbsp;&nbsp;<a href="Notice.do">목록보기</a>
			
		</tr>
	
	</form>
</table>
            <form id="noticeSearch">
              <fieldset>
                <legend class="hidden">공지사항검색</legend>
                <label for="searchBox" class="hidden">검색어입력창</label>
                <input type="text" id="searchBox">
                <label for="searchBtn" class="hidden">검색버튼</label>
                <input type="button"id="searchBtn" value="Search">
              </fieldset>
            </form>
            <div id="pageControl">
              <a href="#">Prev</a>
              <a href="#">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#">4</a>
              <a href="#">5</a>
              <a href="#">6</a>
              <a href="#">7</a>
              <a href="#">8</a>
              <a href="#">9</a>
              <a href="#">10</a>
              <a href="#">Next</a>
            </div>
        </article>
        </div>
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