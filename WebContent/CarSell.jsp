<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내차 팔기 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="blue-page">
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
          <li><a href="CarSell.do?member_id=${sessionID}" aria-current="page">내차 팔기</a></li>
          <li><a href="CarBuy.do">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="index.jsp#car-search">차량 검색</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <section class="blue-page-hero blue-page-hero--sell">
        <div class="blue-page-hero__content">
          <span>SELL YOUR CAR</span>
          <h2>내 차 판매,<br>가볍게 시작하세요</h2>
          <p>차량 정보만 남겨주시면 확인 후 편리하게 상담받을 수 있습니다.</p>
        </div>
      </section>

      <section class="sell-section" aria-labelledby="sell-form-title">
        <div class="sell-layout">
          <aside class="sell-guide">
            <span class="blue-eyebrow">SIMPLE PROCESS</span>
            <h2>복잡하지 않게<br>세 단계로 진행돼요</h2>
            <ol>
              <li><strong>01</strong><div><b>차량 정보 입력</b><p>기본 정보를 정확하게 알려주세요.</p></div></li>
              <li><strong>02</strong><div><b>정보 확인</b><p>등록한 차량 내용을 확인합니다.</p></div></li>
              <li><strong>03</strong><div><b>판매 상담</b><p>차량 상태에 맞춰 상담을 진행합니다.</p></div></li>
            </ol>
            <div class="sell-guide__note">
              <span>TIP</span>
              차량번호와 주행거리를 정확하게 입력하면 더 원활하게 확인할 수 있어요.
            </div>
          </aside>

          <div class="sell-form-card">
            <div class="sell-form-card__heading">
              <span class="blue-eyebrow">CAR INFORMATION</span>
              <h2 id="sell-form-title">판매할 차량을 알려주세요</h2>
              <p><span>*</span> 표시는 필수 입력 항목입니다.</p>
            </div>

            <form class="sell-form" action="SellList_insert.do" method="post" name="form" id="form">
              <div class="blue-field">
                <label for="member_car">차량명 <span>*</span></label>
                <input type="text" name="sCar" id="member_car" value="${Carinfo_view.member_car}" placeholder="예: 쏘나타" required>
              </div>
              <div class="blue-field">
                <label for="car_brand">제조사 <span>*</span></label>
                <input type="text" name="sCar_brand" id="car_brand" value="${Carinfo_view.car_brand}" placeholder="예: 현대" required>
              </div>
              <div class="blue-field">
                <label for="sCar_Num">차량번호 <span>*</span></label>
                <input type="text" maxlength="8" name="sCar_Num" id="sCar_Num" value="${Carinfo_view.car_Num}" placeholder="예: 12가3456" required>
              </div>
              <div class="blue-field">
                <label for="car_ProductY">생산연도 <span>*</span></label>
                <input type="text" maxlength="4" inputmode="numeric" pattern="[0-9]{4}" name="sCar_ProductY" id="car_ProductY" value="${Carinfo_view.car_ProductY}" placeholder="예: 2022" required>
              </div>
              <div class="blue-field">
                <label for="car_kM">주행거리 <span>*</span></label>
                <div class="blue-field__unit">
                  <input type="text" inputmode="numeric" pattern="[0-9]*" name="sCar_kM" id="car_kM" value="${Carinfo_view.car_kM}" placeholder="예: 38000" required>
                  <span>km</span>
                </div>
              </div>
              <div class="blue-field">
                <label for="car_type">차종 <span>*</span></label>
                <input type="text" name="sCar_type" id="car_type" value="${Carinfo_view.car_type}" placeholder="예: 중형, SUV" required>
              </div>
              <div class="blue-field">
                <label for="sCar_color">색상 <span>*</span></label>
                <input type="text" name="sCar_color" id="sCar_color" value="${Carinfo_view.car_color}" placeholder="예: white" required>
              </div>
              <div class="blue-field">
                <label for="sCar_Accident">사고 여부 <span>*</span></label>
                <select name="sCar_Accident" id="sCar_Accident" required>
                  <option value="">선택해 주세요</option>
                  <option value="무사고" ${Carinfo_view.car_Accident == '무사고' ? 'selected' : ''}>무사고</option>
                  <option value="사고이력 있음" ${Carinfo_view.car_Accident == '사고이력 있음' ? 'selected' : ''}>사고이력 있음</option>
                </select>
              </div>

              <div class="sell-consent">
                <label>
                  <input type="checkbox" name="ok" value="개인정보" required>
                  <span><strong>[필수]</strong> 개인정보 수집·이용 동의</span>
                </label>
                <label>
                  <input type="checkbox" name="ok" value="마케팅">
                  <span>[선택] 마케팅 활용 동의</span>
                </label>
              </div>

              <div class="sell-form__actions">
                <button type="submit">판매 신청하기</button>
                <a href="SellList.do">내 판매 목록</a>
              </div>
            </form>
          </div>
        </div>
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

    <script>
      document.querySelectorAll('input[inputmode="numeric"]').forEach(function (input) {
        input.addEventListener('input', function () {
          this.value = this.value.replace(/[^0-9]/g, '');
        });
      });
    </script>
  </body>
</html>
