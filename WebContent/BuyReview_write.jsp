<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="support" />
<c:set var="supportTab" value="buy" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매후기 작성 | RentCar</title>
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
            <span class="blue-eyebrow">WRITE A BUY STORY</span>
            <h2>구매 경험을 들려주세요</h2>
            <p>차량을 선택하고 구매한 경험을 다른 고객과 나눠주세요.</p>
          </div>
          <form class="editor-card" action="BuyReview_write.do" method="post">
            <div class="editor-grid">
              <div class="blue-field">
                <label for="bRId">작성자 <span>*</span></label>
                <input type="text" id="bRId" name="bRId" value="${sessionID}" placeholder="작성자 이름" required>
              </div>
              <div class="blue-field">
                <label for="bRCar">차량명 <span>*</span></label>
                <input type="text" id="bRCar" name="bRCar" placeholder="예: 쏘나타" required>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="bRTitle">제목 <span>*</span></label>
                <input type="text" id="bRTitle" name="bRTitle" placeholder="후기 제목을 입력해 주세요" required>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="bRContent">후기 내용 <span>*</span></label>
                <textarea id="bRContent" name="bRContent" rows="10" placeholder="구매 과정에서 경험한 내용을 작성해 주세요" required></textarea>
              </div>
            </div>
            <div class="editor-actions">
              <a class="button-secondary" href="BuyReview.do">취소</a>
              <button class="button-primary" type="submit">후기 등록하기</button>
            </div>
          </form>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
