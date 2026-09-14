<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="account" />
<c:set var="pageEyebrow" value="MY RENTCAR" />
<c:set var="pageTitle" value="내 정보" />
<c:set var="pageDescription" value="회원 정보와 등록 차량을 한곳에서 확인하고 관리하세요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <c:choose>
          <c:when test="${empty infoList_view}">
            <div class="blue-empty-state">
              <span>MEMBER ONLY</span>
              <h2>회원 정보를 찾을 수 없습니다.</h2>
              <p>로그인한 뒤 다시 확인해 주세요.</p>
              <a class="button-primary" href="Login.jsp">로그인하기</a>
            </div>
          </c:when>
          <c:otherwise>
            <div class="profile-layout">
              <aside class="profile-summary">
                <div class="profile-avatar" aria-hidden="true">R</div>
                <span>MEMBER</span>
                <h2><c:out value="${infoList_view.member_name}" />님</h2>
                <p><c:out value="${infoList_view.member_email}" /></p>
                <a href="Carinfo_view.do?member_id=${infoList_view.member_id}">내 차량 정보 보기 →</a>
              </aside>
              <article class="profile-card">
                <div class="profile-card__heading">
                  <div><span class="blue-eyebrow">ACCOUNT DETAILS</span><h2>회원 정보</h2></div>
                  <a class="button-primary" href="info_modfiy_view.do?member_id=${infoList_view.member_id}">정보 수정</a>
                </div>
                <dl class="profile-data">
                  <div><dt>아이디</dt><dd><c:out value="${infoList_view.member_id}" /></dd></div>
                  <div><dt>이름</dt><dd><c:out value="${infoList_view.member_name}" /></dd></div>
                  <div><dt>이메일</dt><dd><c:out value="${infoList_view.member_email}" /></dd></div>
                  <div><dt>성별</dt><dd><c:out value="${infoList_view.member_gender}" /></dd></div>
                  <div><dt>보유 차량</dt><dd><c:out value="${infoList_view.member_car}" /></dd></div>
                  <div><dt>우편번호</dt><dd>${infoList_view.member_address_num}</dd></div>
                  <div class="profile-data__wide"><dt>주소</dt><dd><c:out value="${infoList_view.member_address}" /> <c:out value="${infoList_view.member_address_detail1}" /> <c:out value="${infoList_view.member_address_detail2}" /></dd></div>
                </dl>
              </article>
            </div>
          </c:otherwise>
        </c:choose>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
