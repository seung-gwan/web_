<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="support" />
<c:set var="supportTab" value="sell" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매후기 수정 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/support-hero.jspf" %>
      <section class="support-section">
        <%@ include file="WEB-INF/jspf/support-tabs.jspf" %>
        <div class="editor-page">
          <div class="editor-heading">
            <span class="blue-eyebrow">EDIT SELL STORY</span>
            <h2>판매후기 수정</h2>
            <p>작성한 후기의 제목과 내용을 수정할 수 있습니다.</p>
          </div>
          <form class="editor-card" action="SellReview_modify.do" method="post">
            <input type="hidden" name="sRNum" value="${SellReview_view.sRNum}">
            <div class="editor-summary">
              <span>후기 번호 ${SellReview_view.sRNum}</span>
              <span>조회 ${SellReview_view.sRHit}</span>
            </div>
            <div class="editor-grid">
              <div class="blue-field">
                <label for="sRId">작성자 <span>*</span></label>
                <input type="text" id="sRId" name="sRId" value="${SellReview_view.sRId}" required>
              </div>
              <div class="blue-field">
                <label for="sRCar">차량명</label>
                <input type="text" id="sRCar" value="${SellReview_view.sRCar}" readonly>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="sRTitle">제목 <span>*</span></label>
                <input type="text" id="sRTitle" name="sRTitle" value="${SellReview_view.sRTitle}" required>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="sRContent">후기 내용 <span>*</span></label>
                <textarea id="sRContent" name="sRContent" rows="10" required>${SellReview_view.sRContent}</textarea>
              </div>
            </div>
            <div class="editor-actions editor-actions--spread">
              <a class="button-danger" href="SellReview_delete.do?sRNum=${SellReview_view.sRNum}" onclick="return confirm('이 판매후기를 삭제하시겠어요?');">후기 삭제</a>
              <div>
                <a class="button-secondary" href="SellReview_view.do?sRNum=${SellReview_view.sRNum}">취소</a>
                <button class="button-primary" type="submit">수정 완료</button>
              </div>
            </div>
          </form>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
