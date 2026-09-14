<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="navSection" value="support" />
<c:set var="supportTab" value="notice" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세 | RentCar</title>
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
          <a class="content-back" href="Notice.do">← 공지사항 목록</a>
          <article class="detail-card">
            <header class="detail-card__header">
              <span class="blue-eyebrow">NOTICE</span>
              <h2><c:out value="${Notice_view.bTitle}" /></h2>
              <dl class="detail-meta">
                <div><dt>작성자</dt><dd><c:out value="${Notice_view.bName}" /></dd></div>
                <div><dt>작성일</dt><dd><fmt:formatDate value="${Notice_view.bDate}" pattern="yyyy.MM.dd"/></dd></div>
                <div><dt>조회</dt><dd>${Notice_view.bHit}</dd></div>
                <div><dt>번호</dt><dd>${Notice_view.bNum}</dd></div>
              </dl>
            </header>
            <div class="detail-content"><c:out value="${Notice_view.bContent}" /></div>
            <footer class="detail-actions">
              <a class="button-primary" href="Notice.do">목록으로 돌아가기</a>
            </footer>
          </article>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
