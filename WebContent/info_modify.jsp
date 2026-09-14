<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="account" />
<c:set var="pageEyebrow" value="EDIT PROFILE" />
<c:set var="pageTitle" value="회원 정보 수정" />
<c:set var="pageDescription" value="변경된 회원 정보와 주소를 정확하게 입력해 주세요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
    <script>
      function goPopup() {
        window.open('jusoPopup.jsp', 'addressSearch', 'width=570,height=520,scrollbars=yes,resizable=yes');
      }
      function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo) {
        document.form.member_address.value = roadAddrPart1 || roadFullAddr;
        document.form.member_address_detail2.value = roadAddrPart2 || '';
        document.form.member_address_detail1.value = addrDetail || '';
        document.form.member_address_num.value = zipNo || '';
      }
    </script>
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <div class="editor-page">
          <div class="editor-heading">
            <span class="blue-eyebrow">ACCOUNT DETAILS</span>
            <h2>내 정보 관리</h2>
            <p>회원 정보는 서비스 안내와 차량 상담에 사용됩니다.</p>
          </div>
          <form class="editor-card profile-editor" action="info_modify.do" method="post" name="form" id="form">
            <input type="hidden" name="member_id" value="${infoList_view.member_id}">
            <div class="editor-grid">
              <div class="blue-field">
                <label for="member_id_view">아이디</label>
                <input type="text" id="member_id_view" value="${infoList_view.member_id}" readonly>
              </div>
              <div class="blue-field">
                <label for="member_name">이름 <span>*</span></label>
                <input type="text" id="member_name" name="member_name" value="${infoList_view.member_name}" required>
              </div>
              <div class="blue-field">
                <label for="member_pw">새 비밀번호</label>
                <input type="password" id="member_pw" name="member_pw" minlength="4" autocomplete="new-password" placeholder="변경할 때만 입력해 주세요">
              </div>
              <div class="blue-field">
                <label for="member_email">이메일 <span>*</span></label>
                <input type="email" id="member_email" name="member_email" value="${infoList_view.member_email}" required>
              </div>
              <div class="blue-field editor-grid__wide">
                <label for="member_car">보유 차량</label>
                <input type="text" id="member_car" name="member_car" value="${infoList_view.member_car}">
              </div>
              <fieldset class="choice-field editor-grid__wide">
                <legend>성별</legend>
                <div>
                  <label><input type="radio" name="member_gender" value="남자" ${infoList_view.member_gender == '남자' ? 'checked' : ''}> 남자</label>
                  <label><input type="radio" name="member_gender" value="여자" ${infoList_view.member_gender == '여자' ? 'checked' : ''}> 여자</label>
                </div>
              </fieldset>
              <fieldset class="address-field editor-grid__wide">
                <legend>주소</legend>
                <div class="address-field__zip">
                  <input type="text" name="member_address_num" value="${infoList_view.member_address_num}" placeholder="우편번호" readonly>
                  <button type="button" onclick="goPopup();">주소 검색</button>
                </div>
                <input type="text" name="member_address" value="${infoList_view.member_address}" placeholder="도로명주소" required>
                <div class="address-field__detail">
                  <input type="text" name="member_address_detail1" value="${infoList_view.member_address_detail1}" placeholder="상세주소">
                  <input type="text" name="member_address_detail2" value="${infoList_view.member_address_detail2}" placeholder="참고항목" readonly>
                </div>
              </fieldset>
            </div>
            <div class="editor-actions">
              <a class="button-secondary" href="info_view.do?member_id=${infoList_view.member_id}">취소</a>
              <button class="button-primary" type="submit">정보 저장</button>
            </div>
          </form>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
