<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내차 사기 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/car-buy.css">
  </head>
  <body>
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
          <li><a href="CarBuy.do" aria-current="page">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="#">브랜드인증관</a></li>
          <li><a href="#">전국직영점</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <section class="buy-hero">
        <div class="buy-hero__content">
          <span class="buy-hero__eyebrow">SMART CAR MARKET</span>
          <h2>내게 맞는 차를<br>가볍게 만나보세요</h2>
          <p>등록된 차량 정보를 한눈에 비교하고 상세 조건을 확인할 수 있습니다.</p>
        </div>
      </section>

      <section class="buy-catalog" aria-labelledby="catalog-title">
        <div class="buy-catalog__heading">
          <div>
            <span class="buy-catalog__eyebrow">AVAILABLE CARS</span>
            <h2 id="catalog-title">지금 만날 수 있는 차량</h2>
          </div>
          <p><strong>${SellList.size()}</strong>대의 차량이 등록되어 있습니다.</p>
        </div>

        <c:choose>
          <c:when test="${empty SellList}">
            <div class="empty-cars">
              <h3>아직 등록된 차량이 없습니다.</h3>
              <p>새로운 차량이 등록되면 이곳에서 바로 확인할 수 있습니다.</p>
            </div>
          </c:when>
          <c:otherwise>
            <div class="car-grid">
              <c:forEach items="${SellList}" var="dto" varStatus="status">
                <c:set var="carImage" value="images/car-sedan.webp" />
                <c:if test="${status.index % 2 != 0}">
                  <c:set var="carImage" value="images/car-suv.webp" />
                </c:if>
                <article class="car-card">
                  <a class="car-card__image" href="SellList_detail.do?sNum=${dto.sNum}">
                    <img src="${carImage}" alt="${dto.sCar} 차량 이미지" loading="lazy">
                    <span class="car-card__badge">바로 확인</span>
                  </a>
                  <div class="car-card__body">
                    <div class="car-card__title-row">
                      <div>
                        <p class="car-card__brand">${dto.sCar_brand}</p>
                        <h3>${dto.sCar}</h3>
                      </div>
                      <span class="car-card__year">${dto.sCar_ProductY}</span>
                    </div>
                    <dl class="car-card__meta">
                      <div><dt>주행거리</dt><dd><fmt:formatNumber value="${dto.sCar_kM}" /> km</dd></div>
                      <div><dt>차량번호</dt><dd>${dto.sCar_Num}</dd></div>
                      <div><dt>차종</dt><dd>${dto.sCar_type}</dd></div>
                    </dl>
                    <div class="car-card__price">
                      <span>판매가</span>
                      <c:choose>
                        <c:when test="${dto.sCar_salePrice > 0}">
                          <strong><fmt:formatNumber value="${dto.sCar_salePrice}" />원</strong>
                        </c:when>
                        <c:when test="${dto.sCar_Price > 0}">
                          <strong><fmt:formatNumber value="${dto.sCar_Price}" />원</strong>
                        </c:when>
                        <c:otherwise><strong>가격 상담</strong></c:otherwise>
                      </c:choose>
                    </div>
                    <a class="car-card__button" href="SellList_detail.do?sNum=${dto.sNum}">차량 자세히 보기</a>
                  </div>
                </article>
              </c:forEach>
            </div>
          </c:otherwise>
        </c:choose>
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
  </body>
</html>
