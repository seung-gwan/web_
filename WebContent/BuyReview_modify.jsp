<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="support" />
<c:set var="supportTab" value="buy" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매후기 수정 | RentCar</title>
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
            <span class="blue-eyebrow">EDIT BUY STORY</span>
            <h2>구매후기 수정</h2>
            <p>작성한 후기의 차량 정보와 내용을 수정할 수 있습니다.</p>
          </div>
          <form class="editor-card" action="BuyReview_modify.do" method="post">
            <input type="hidden" name="bRNum" value="${BuyReview_view.bRNum}">
            <div class="editor-summary">
              <span>후기 번호 ${BuyReview_view.bRNum}</span>
              <span>조회 ${BuyReview_view.bRHit}</span>
            </div>
            <div class="editor-grid">
              <div class="blue-field">
                <label for="bRId">작성자 <span>*</span></label>
                <input type="text" id="bRId" name="bRId" value="${BuyReview_view.bRId}" required>
              </div>
              <div class="blue-field">
                <label for="bRCar">차량명 <span>*</span></label>
                <input type="text" id="bRCar" name="bRCar" value="${BuyReview_view.bRCar}" required>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="bRTitle">제목 <span>*</span></label>
                <input type="text" id="bRTitle" name="bRTitle" value="${BuyReview_view.bRTitle}" required>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="bRContent">후기 내용 <span>*</span></label>
                <textarea id="bRContent" name="bRContent" rows="10" required>${BuyReview_view.bRContent}</textarea>
              </div>
            </div>
            <div class="editor-actions editor-actions--spread">
              <a class="button-danger" href="BuyReview_delete.do?bRNum=${BuyReview_view.bRNum}" onclick="return confirm('이 구매후기를 삭제하시겠어요?');">후기 삭제</a>
              <div>
                <a class="button-secondary" href="BuyReview_view.do?bRNum=${BuyReview_view.bRNum}">취소</a>
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
