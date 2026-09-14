<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navSection" value="sell" />
<c:set var="pageEyebrow" value="SELL REQUESTS" />
<c:set var="pageTitle" value="판매 신청 목록" />
<c:set var="pageDescription" value="등록된 차량의 판매 신청 정보와 진행 상태를 확인하세요." />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매 신청 목록 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
    <%@ include file="WEB-INF/jspf/site-header.jspf" %>
    <main>
      <%@ include file="WEB-INF/jspf/compact-hero.jspf" %>
      <section class="workspace-section">
        <div class="inventory-page">
          <div class="support-heading">
            <div><span class="blue-eyebrow">REGISTERED CARS</span><h2>등록된 판매 차량</h2></div>
            <p><strong>${SellList.size()}</strong>대의 판매 신청이 있습니다.</p>
          </div>
          <div class="notice-card inventory-card">
            <div class="notice-table-wrap">
              <table class="notice-table inventory-table">
                <caption class="hidden">판매 신청 차량 목록</caption>
                <thead><tr><th>차량번호</th><th>차량명</th><th>주행거리</th><th>제조사</th><th>생산연도</th></tr></thead>
                <tbody>
                  <c:forEach items="${SellList}" var="dto">
                    <tr>
                      <td><a class="inventory-number" href="SellList_detail.do?sNum=${dto.sNum}">${dto.sCar_Num}</a></td>
                      <td class="notice-table__title"><a href="SellList_detail.do?sNum=${dto.sNum}"><c:out value="${dto.sCar}" /></a></td>
                      <td><c:out value="${dto.sCar_kM}" /> km</td>
                      <td><c:out value="${dto.sCar_brand}" /></td>
                      <td>${dto.sCar_ProductY}</td>
                    </tr>
                  </c:forEach>
                  <c:if test="${empty SellList}"><tr class="notice-empty-row"><td colspan="5">등록된 판매 차량이 없습니다.</td></tr></c:if>
                </tbody>
              </table>
            </div>
            <div class="inventory-actions"><a class="button-primary" href="CarSell.do?member_id=${sessionID}">새 판매 신청</a></div>
          </div>
        </div>
      </section>
    </main>
    <%@ include file="WEB-INF/jspf/site-footer.jspf" %>
  </body>
</html>
