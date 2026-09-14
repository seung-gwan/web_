<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="sell" />
<c:set var="pageEyebrow" value="EDIT MY CAR" />
<c:set var="pageTitle" value="차량 정보 수정" />
<c:set var="pageDescription" value="변경되었거나 잘못 입력된 차량 정보를 수정해 주세요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>차량 정보 수정 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <div class="editor-page">
          <div class="editor-heading"><span class="blue-eyebrow">VEHICLE DETAILS</span><h2>차량 정보 관리</h2><p>현재 차량 정보를 확인하고 필요한 항목을 수정하세요.</p></div>
          <form class="editor-card profile-editor" action="Carinfo_modify.do" method="post">
            <input type="hidden" name="member_id" value="${sessionID}">
            <div class="editor-grid">
              <div class="blue-field"><label for="member_car">차량명 <span>*</span></label><input id="member_car" name="member_car" type="text" value="${Carinfo_view.member_car}" required></div>
              <div class="blue-field"><label for="car_brand">제조사 <span>*</span></label><input id="car_brand" name="car_brand" type="text" value="${Carinfo_view.car_brand}" required></div>
              <div class="blue-field"><label for="car_Num">차량번호 <span>*</span></label><input id="car_Num" name="car_Num" type="text" maxlength="8" value="${Carinfo_view.car_Num}" required></div>
              <div class="blue-field"><label for="car_ProductY">생산연도 <span>*</span></label><input id="car_ProductY" name="car_ProductY" type="text" maxlength="4" inputmode="numeric" pattern="[0-9]{4}" value="${Carinfo_view.car_ProductY}" required></div>
              <div class="blue-field"><label for="car_kM">주행거리 <span>*</span></label><div class="blue-field__unit"><input id="car_kM" name="car_kM" type="text" inputmode="numeric" pattern="[0-9]*" value="${Carinfo_view.car_kM}" required><span>km</span></div></div>
              <div class="blue-field"><label for="car_color">색상 <span>*</span></label><input id="car_color" name="car_color" type="text" value="${Carinfo_view.car_color}" required></div>
              <fieldset class="choice-field editor-grid__wide"><legend>차종 <span>*</span></legend><div class="choice-field--four"><label><input type="radio" name="car_type" value="경차" ${Carinfo_view.car_type == '경차' ? 'checked' : ''} required> 경차</label><label><input type="radio" name="car_type" value="소형" ${Carinfo_view.car_type == '소형' ? 'checked' : ''}> 소형</label><label><input type="radio" name="car_type" value="준중형" ${Carinfo_view.car_type == '준중형' ? 'checked' : ''}> 준중형</label><label><input type="radio" name="car_type" value="중형" ${Carinfo_view.car_type == '중형' ? 'checked' : ''}> 중형</label><label><input type="radio" name="car_type" value="대형" ${Carinfo_view.car_type == '대형' ? 'checked' : ''}> 대형</label><label><input type="radio" name="car_type" value="SUV" ${Carinfo_view.car_type == 'SUV' ? 'checked' : ''}> SUV</label></div></fieldset>
              <fieldset class="choice-field editor-grid__wide"><legend>사고 여부 <span>*</span></legend><div><label><input type="radio" name="car_Accident" value="무사고" ${Carinfo_view.car_Accident == '무사고' ? 'checked' : ''} required> 무사고</label><label><input type="radio" name="car_Accident" value="사고이력 있음" ${Carinfo_view.car_Accident != '무사고' ? 'checked' : ''}> 사고이력 있음</label></div></fieldset>
            </div>
            <div class="editor-actions"><a class="button-secondary" href="Carinfo_view.do?member_id=${sessionID}">취소</a><button class="button-primary" type="submit">변경사항 저장</button></div>
          </form>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
