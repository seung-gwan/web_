<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="sell" />
<c:set var="pageEyebrow" value="MY GARAGE" />
<c:set var="pageTitle" value="내 차량 정보" />
<c:set var="pageDescription" value="등록한 차량의 기본 정보와 상태를 확인하고 관리하세요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 차량 정보 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <c:choose>
          <c:when test="${empty Carinfo_view || empty Carinfo_view.car_Num}">
            <div class="blue-empty-state">
              <span>EMPTY GARAGE</span>
              <h2>아직 등록한 차량이 없습니다.</h2>
              <p>내 차량 정보를 등록하면 판매 신청 시 편리하게 불러올 수 있어요.</p>
              <a class="button-primary" href="CarInfo_insert.jsp">차량 정보 등록</a>
            </div>
          </c:when>
          <c:otherwise>
            <article class="vehicle-profile">
              <div class="vehicle-profile__image">
                <img src="images/car-sedan.webp" alt="등록 차량 이미지">
                <span>MY CAR</span>
              </div>
              <div class="vehicle-profile__content">
                <span class="blue-eyebrow">VEHICLE DETAILS</span>
                <div class="vehicle-profile__heading">
                  <div><h2><c:out value="${Carinfo_view.member_car}" /></h2><p><c:out value="${Carinfo_view.car_brand}" /> · <c:out value="${Carinfo_view.car_type}" /></p></div>
                  <span>${Carinfo_view.car_ProductY}</span>
                </div>
                <dl class="profile-data vehicle-data">
                  <div><dt>차량번호</dt><dd><c:out value="${Carinfo_view.car_Num}" /></dd></div>
                  <div><dt>주행거리</dt><dd><c:out value="${Carinfo_view.car_kM}" /> km</dd></div>
                  <div><dt>색상</dt><dd><c:out value="${Carinfo_view.car_color}" /></dd></div>
                  <div><dt>사고 여부</dt><dd><c:out value="${Carinfo_view.car_Accident}" /></dd></div>
                </dl>
                <div class="vehicle-profile__actions">
                  <a class="button-secondary" href="info_view.do?member_id=${sessionID}">내 정보</a>
                  <a class="button-primary" href="Carinfo_modify_view.do?member_id=${sessionID}">차량 정보 수정</a>
                </div>
              </div>
            </article>
          </c:otherwise>
        </c:choose>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
