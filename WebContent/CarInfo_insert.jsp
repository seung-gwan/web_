<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="sell" />
<c:set var="pageEyebrow" value="ADD MY CAR" />
<c:set var="pageTitle" value="차량 정보 등록" />
<c:set var="pageDescription" value="보유 차량의 정보를 등록하면 판매 신청을 더 빠르게 시작할 수 있어요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>차량 정보 등록 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <div class="editor-page">
          <div class="editor-heading"><span class="blue-eyebrow">VEHICLE DETAILS</span><h2>내 차량을 알려주세요</h2><p>차량등록증을 참고해 정확하게 입력해 주세요.</p></div>
          <form class="editor-card profile-editor" action="Carinfo_insert.do" method="post">
            <input type="hidden" name="member_id" value="${sessionID}">
            <div class="editor-grid">
              <div class="blue-field"><label for="member_car">차량명 <span>*</span></label><input id="member_car" name="member_car" type="text" placeholder="예: 아반떼" required></div>
              <div class="blue-field"><label for="car_brand">제조사 <span>*</span></label><input id="car_brand" name="car_brand" type="text" placeholder="예: 현대" required></div>
              <div class="blue-field"><label for="car_Num">차량번호 <span>*</span></label><input id="car_Num" name="car_Num" type="text" maxlength="8" placeholder="예: 12가3456" required></div>
              <div class="blue-field"><label for="car_ProductY">생산연도 <span>*</span></label><input id="car_ProductY" name="car_ProductY" type="text" maxlength="4" inputmode="numeric" pattern="[0-9]{4}" placeholder="예: 2022" required></div>
              <div class="blue-field"><label for="car_kM">주행거리 <span>*</span></label><div class="blue-field__unit"><input id="car_kM" name="car_kM" type="text" inputmode="numeric" pattern="[0-9]*" required><span>km</span></div></div>
              <div class="blue-field"><label for="car_color">색상 <span>*</span></label><input id="car_color" name="car_color" type="text" placeholder="예: white" required></div>
              <fieldset class="choice-field editor-grid__wide"><legend>차종 <span>*</span></legend><div class="choice-field--four"><label><input type="radio" name="car_type" value="경차" required> 경차</label><label><input type="radio" name="car_type" value="소형"> 소형</label><label><input type="radio" name="car_type" value="준중형"> 준중형</label><label><input type="radio" name="car_type" value="중형"> 중형</label><label><input type="radio" name="car_type" value="대형"> 대형</label><label><input type="radio" name="car_type" value="SUV"> SUV</label></div></fieldset>
              <fieldset class="choice-field editor-grid__wide"><legend>사고 여부 <span>*</span></legend><div><label><input type="radio" name="car_Accident" value="무사고" required> 무사고</label><label><input type="radio" name="car_Accident" value="사고이력 있음"> 사고이력 있음</label></div></fieldset>
            </div>
            <div class="editor-actions"><a class="button-secondary" href="info_view.do?member_id=${sessionID}">취소</a><button class="button-primary" type="submit">차량 등록</button></div>
          </form>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
