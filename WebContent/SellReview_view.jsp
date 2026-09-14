<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="navSection" value="support" />
<c:set var="supportTab" value="sell" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매후기 상세 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/support-hero.jspf" %>
      <section class="support-section">
        <%@ include file="WEB-INF/jspf/support-tabs.jspf" %>
        <div class="content-page">
          <a class="content-back" href="SellReview.do">← 판매후기 목록</a>
          <article class="detail-card">
            <header class="detail-card__header">
              <span class="blue-eyebrow">SELL STORY</span>
              <h2><c:out value="${SellReview_view.sRTitle}" /></h2>
              <dl class="detail-meta">
                <div><dt>작성자</dt><dd><c:out value="${SellReview_view.sRId}" /></dd></div>
                <div><dt>차량</dt><dd><span class="review-car-badge"><c:out value="${SellReview_view.sRCar}" /></span></dd></div>
                <div><dt>작성일</dt><dd><fmt:formatDate value="${SellReview_view.sRDate}" pattern="yyyy.MM.dd"/></dd></div>
                <div><dt>조회</dt><dd>${SellReview_view.sRHit}</dd></div>
              </dl>
            </header>
            <div class="detail-content"><c:out value="${SellReview_view.sRContent}" /></div>
            <footer class="detail-actions">
              <a class="button-secondary" href="SellReview.do">목록으로</a>
              <a class="button-primary" href="SellReview_Modify_view.do?sRNum=${SellReview_view.sRNum}">후기 수정</a>
            </footer>
          </article>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
