<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="navSection" value="buy" />
<c:set var="pageEyebrow" value="CAR DETAILS" />
<c:set var="pageTitle" value="차량 상세 정보" />
<c:set var="pageDescription" value="차량의 주요 정보와 판매 가격을 자세히 확인하세요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>차량 상세 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <div class="car-detail-page">
          <a class="content-back" href="CarBuy.do">← 차량 목록</a>
          <article class="car-detail-card">
            <div class="car-detail-card__image"><img src="images/car-sedan.webp" alt="${SellList_detail.sCar} 차량 이미지"><span>AVAILABLE</span></div>
            <div class="car-detail-card__body">
              <span class="blue-eyebrow"><c:out value="${SellList_detail.sCar_brand}" /></span>
              <div class="car-detail-card__heading"><h2><c:out value="${SellList_detail.sCar}" /></h2><span>${SellList_detail.sCar_ProductY}</span></div>
              <dl class="car-spec-grid">
                <div><dt>차량번호</dt><dd><c:out value="${SellList_detail.sCar_Num}" /></dd></div>
                <div><dt>주행거리</dt><dd><c:out value="${SellList_detail.sCar_kM}" /> km</dd></div>
                <div><dt>차종</dt><dd><c:out value="${SellList_detail.sCar_type}" /></dd></div>
                <div><dt>색상</dt><dd><c:out value="${SellList_detail.sCar_color}" /></dd></div>
                <div class="car-spec-grid__wide"><dt>사고 여부</dt><dd><c:out value="${SellList_detail.sCar_Accident}" /></dd></div>
              </dl>
              <div class="car-price-box">
                <span>판매가</span>
                <c:choose>
                  <c:when test="${SellList_detail.sCar_salePrice > 0}"><strong><fmt:formatNumber value="${SellList_detail.sCar_salePrice}" />원</strong><c:if test="${SellList_detail.sCar_Price > SellList_detail.sCar_salePrice}"><del><fmt:formatNumber value="${SellList_detail.sCar_Price}" />원</del></c:if></c:when>
                  <c:when test="${SellList_detail.sCar_Price > 0}"><strong><fmt:formatNumber value="${SellList_detail.sCar_Price}" />원</strong></c:when>
                  <c:otherwise><strong>가격 상담</strong></c:otherwise>
                </c:choose>
              </div>
              <c:if test="${SellList_detail.sCar_Price == 0}">
                <form class="price-editor" action="SellList_update.do?sNum=${SellList_detail.sNum}" method="post">
                  <div><label for="sCar_Price">정상가</label><input type="number" id="sCar_Price" name="sCar_Price" min="0" placeholder="정상가를 입력하세요" required></div>
                  <div><label for="sCar_salePrice">판매가</label><input type="number" id="sCar_salePrice" name="sCar_salePrice" min="0" placeholder="판매가를 입력하세요" required></div>
                  <button type="submit">가격 등록</button>
                </form>
              </c:if>
            </div>
          </article>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
