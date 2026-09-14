<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RentCar | 내게 맞는 차를 가볍게</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/main.css">
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
          <li><a href="CarBuy.do">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="#car-search">차량 검색</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <section id="contactUs" class="home-hero">
        <img src="images/mobility-hero.webp" class="home-hero-image" alt="바닷가 도로를 달리는 흰색 전기차">
        <div class="home-hero-shade" aria-hidden="true"></div>
        <div class="home-hero-copy">
          <span>MOVE BETTER</span>
          <h2>좋은 차를 만나는<br>가장 가벼운 방법</h2>
          <p>복잡한 과정은 줄이고, 내 조건에 맞는 차량은 빠르게 찾아보세요.</p>
          <a href="#car-search">내 차 찾아보기</a>
        </div>
      </section>

      <section id="car-search" class="vehicle-search" aria-labelledby="vehicle-search-title">
        <div class="vehicle-search__panel">
          <div class="vehicle-search__heading">
            <div>
              <span class="section-eyebrow">FIND YOUR CAR</span>
              <h2 id="vehicle-search-title">어떤 차를 찾고 계세요?</h2>
            </div>
            <p>원하는 조건을 선택하면 등록 차량만 모아 보여드려요.</p>
          </div>

          <form class="vehicle-search__form" action="SellList_select.do" method="get">
            <div class="search-field search-field--keyword">
              <label for="keyword">차량명 또는 제조사</label>
              <input id="keyword" name="keyword" type="search" placeholder="예: 쏘나타, 현대" autocomplete="off">
            </div>

            <div class="search-field">
              <label for="car-brand">제조사</label>
              <select id="car-brand" name="Car_brand">
                <option value="">전체 제조사</option>
                <option value="현대">현대</option>
                <option value="기아">기아</option>
                <option value="쉐보레">쉐보레</option>
                <option value="르노코리아">르노코리아</option>
                <option value="KGM">KGM</option>
                <option value="BMW">BMW</option>
                <option value="벤츠">벤츠</option>
                <option value="아우디">아우디</option>
                <option value="폭스바겐">폭스바겐</option>
                <option value="대우">대우</option>
              </select>
            </div>

            <div class="search-field">
              <label for="car-type">차종</label>
              <select id="car-type" name="Car_type">
                <option value="">전체 차종</option>
                <option value="경차">경차</option>
                <option value="소형">소형</option>
                <option value="준중형">준중형</option>
                <option value="중형">중형</option>
                <option value="대형">대형</option>
                <option value="SUV">SUV</option>
                <option value="RV">RV</option>
              </select>
            </div>

            <div class="search-field">
              <label for="car-color">색상</label>
              <select id="car-color" name="Car_color">
                <option value="">전체 색상</option>
                <option value="white">화이트</option>
                <option value="black">블랙</option>
                <option value="gray">그레이</option>
                <option value="silver">실버</option>
                <option value="blue">블루</option>
                <option value="red">레드</option>
              </select>
            </div>

            <fieldset class="price-range">
              <legend>구매 예산</legend>
              <div class="price-range__inputs">
                <label class="hidden" for="min-price">최소 가격</label>
                <input id="min-price" name="sCar_salePrice1" type="number" min="0" step="100000" placeholder="최소 금액">
                <span aria-hidden="true">—</span>
                <label class="hidden" for="max-price">최대 가격</label>
                <input id="max-price" name="sCar_salePrice2" type="number" min="0" step="100000" placeholder="최대 금액">
              </div>
            </fieldset>

            <button class="vehicle-search__button" type="submit">
              <span aria-hidden="true">⌕</span>
              조건에 맞는 차량 찾기
            </button>
          </form>

          <div class="popular-searches" aria-label="추천 검색어">
            <span>추천</span>
            <a href="SellList_select.do?keyword=현대">#현대</a>
            <a href="SellList_select.do?Car_type=중형">#중형차</a>
            <a href="SellList_select.do?Car_color=white">#화이트</a>
            <a href="SellList_select.do?sCar_salePrice2=20000000">#2천만원 이하</a>
          </div>
        </div>
      </section>

      <section class="home-actions" aria-labelledby="home-actions-title">
        <div class="home-actions__heading">
          <span class="section-eyebrow">EASY MOBILITY</span>
          <h2 id="home-actions-title">차를 사고파는 과정도 가볍게</h2>
        </div>
        <div class="home-actions__grid">
          <a class="home-action-card home-action-card--blue" href="CarBuy.do">
            <span>01</span>
            <h3>등록 차량 둘러보기</h3>
            <p>차량 정보와 가격을 한눈에 비교해 보세요.</p>
            <strong>차량 보기 →</strong>
          </a>
          <a class="home-action-card" href="CarSell.do?member_id=${sessionID}">
            <span>02</span>
            <h3>내 차 판매하기</h3>
            <p>내 차량 정보를 등록하고 판매를 시작하세요.</p>
            <strong>판매 신청 →</strong>
          </a>
          <a class="home-action-card" href="Notice.do">
            <span>03</span>
            <h3>궁금한 점 확인하기</h3>
            <p>이용 중 필요한 안내를 고객센터에서 확인하세요.</p>
            <strong>고객센터 →</strong>
          </a>
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
  </body>
</html>
