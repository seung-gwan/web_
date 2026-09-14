<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매후기 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <header id="header">
      <h1><a href="index.jsp">RentCar</a></h1>
      <nav id="membership" aria-label="회원 메뉴">
        <ul>
          <li class="goLogin">
            <c:choose>
              <c:when test="${sessionID != null}">${sessionID} <a href="logout.do">로그아웃</a></c:when>
              <c:otherwise><a href="Login.jsp">로그인</a></c:otherwise>
            </c:choose>
          </li>
          <li class="goJoin">
            <c:choose>
              <c:when test="${sessionID != null}"><a href="info_view.do?member_id=${sessionID}">개인정보</a></c:when>
              <c:otherwise><a href="join.jsp">회원가입</a></c:otherwise>
            </c:choose>
          </li>
        </ul>
      </nav>
      <nav id="gnb" aria-label="주요 메뉴">
        <ul>
          <li><a href="CarSell.do?member_id=${sessionID}">내차 팔기</a></li>
          <li><a href="CarBuy.do">내차 사기</a></li>
          <li><a href="Notice.do" aria-current="page">고객센터</a></li>
          <li><a href="index.jsp#car-search">차량 검색</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <section class="blue-page-hero blue-page-hero--support">
        <div class="blue-page-hero__content">
          <span>HELP CENTER</span>
          <h2>필요한 안내를<br>빠르게 확인하세요</h2>
          <p>차량 이용과 판매·구매에 필요한 소식을 한곳에서 안내해 드립니다.</p>
        </div>
      </section>

      <section class="support-section" aria-labelledby="sell-review-title">
        <nav class="support-tabs" aria-label="고객센터 메뉴">
          <a href="Notice.do">공지사항</a>
          <a href="BuyReview.do">구매후기</a>
          <a href="SellReview.do" aria-current="page">판매후기</a>
        </nav>

        <div class="support-heading">
          <div>
            <span class="blue-eyebrow">SELL STORIES</span>
            <h2 id="sell-review-title">판매후기</h2>
          </div>
          <p>차량 판매를 경험한 고객의 이야기를 확인해 보세요.</p>
        </div>

        <div class="notice-card review-card">
          <div class="review-toolbar">
            <form class="review-search" id="reviewSearch" role="search">
              <label class="hidden" for="review-search-box">판매후기 검색</label>
              <input type="search" id="review-search-box" placeholder="제목, 작성자 또는 차량명 검색" autocomplete="off">
              <button type="submit">검색</button>
            </form>
            <a class="review-write-button" href="SellReview_write.jsp">후기 작성하기</a>
          </div>

          <div class="notice-table-wrap">
            <table class="notice-table review-table">
              <caption class="hidden">판매후기 목록</caption>
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성자</th>
                  <th scope="col">차량</th>
                  <th scope="col">작성일</th>
                  <th scope="col">조회</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${SellReview}" var="dto">
                  <tr class="review-row">
                    <td>${dto.sRNum}</td>
                    <td class="notice-table__title"><a href="SellReview_view.do?sRNum=${dto.sRNum}">${dto.sRTitle}</a></td>
                    <td>${dto.sRId}</td>
                    <td><span class="review-car-badge">${dto.sRCar}</span></td>
                    <td><fmt:formatDate value="${dto.sRDate}" pattern="yyyy.MM.dd"/></td>
                    <td>${dto.sRHit}</td>
                  </tr>
                </c:forEach>
                <c:if test="${empty SellReview}">
                  <tr class="notice-empty-row"><td colspan="6">등록된 판매후기가 없습니다.</td></tr>
                </c:if>
              </tbody>
            </table>
          </div>
          <p class="notice-filter-empty" id="reviewFilterEmpty" hidden>검색 결과가 없습니다.</p>
        </div>
      </section>
    </main>

    <div id="footerWrap">
      <footer id="footer">
        <div class="info">
          <small class="copyright">All contents Copyright 2011 FunWeb Inc. all rights reserved</small>
          <address>Contact mail : funweb@funwebbiz.com Tel: +82 64 123 4315</address>
        </div>
      </footer>
    </div>

    <script>
      (function () {
        var form = document.getElementById('reviewSearch');
        var input = document.getElementById('review-search-box');
        var rows = Array.prototype.slice.call(document.querySelectorAll('.review-row'));
        var emptyMessage = document.getElementById('reviewFilterEmpty');

        function filterReviews(event) {
          if (event) event.preventDefault();
          var keyword = input.value.trim().toLowerCase();
          var visibleCount = 0;
          rows.forEach(function (row) {
            var visible = !keyword || row.textContent.toLowerCase().indexOf(keyword) !== -1;
            row.hidden = !visible;
            if (visible) visibleCount += 1;
          });
          emptyMessage.hidden = visibleCount !== 0 || rows.length === 0;
        }

        form.addEventListener('submit', filterReviews);
        input.addEventListener('input', filterReviews);
      }());
    </script>
  </body>
</html>
