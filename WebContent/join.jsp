<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
    <script>
      function goPopup() {
        window.open('jusoPopup.jsp', 'addressSearch', 'width=570,height=520,scrollbars=yes,resizable=yes');
      }

      function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo) {
        document.form.roadAddrPart1.value = roadAddrPart1 || roadFullAddr;
        document.form.roadAddrPart2.value = roadAddrPart2 || '';
        document.form.addrDetail.value = addrDetail || '';
        document.form.zipNo.value = zipNo || '';
      }
    </script>
  </head>
  <body class="auth-page auth-page--join">
    <main class="auth-shell auth-shell--join">
      <section class="auth-visual">
        <a class="auth-brand" href="index.jsp"><span></span>RentCar</a>
        <div>
          <span class="auth-eyebrow">JOIN RENTCAR</span>
          <h1>더 가벼운<br>이동의 시작</h1>
          <p>한 번의 가입으로 내 차량 관리부터 판매와 구매까지 시작할 수 있어요.</p>
        </div>
      </section>
      <section class="auth-content">
        <div class="auth-card auth-card--wide">
          <a class="auth-home" href="Login.jsp">← 로그인으로</a>
          <span class="blue-eyebrow">CREATE ACCOUNT</span>
          <h2>회원가입</h2>
          <p class="auth-card__description"><span>*</span> 표시는 필수 입력 항목입니다.</p>
          <form class="auth-form auth-form--grid" action="join.do" method="post" name="form" id="form">
            <div class="blue-field">
              <label for="Id">아이디 <span>*</span></label>
              <input type="text" name="Id" id="Id" autocomplete="username" required>
            </div>
            <div class="blue-field">
              <label for="Pw">비밀번호 <span>*</span></label>
              <input type="password" name="Pw" id="Pw" autocomplete="new-password" required>
            </div>
            <div class="blue-field">
              <label for="Name">이름 <span>*</span></label>
              <input type="text" name="Name" id="Name" required>
            </div>
            <div class="blue-field">
              <label for="Email">이메일 <span>*</span></label>
              <input type="email" name="Email" id="Email" autocomplete="email" required>
            </div>
            <div class="blue-field auth-form__wide">
              <label for="Car">보유 차량 <span>*</span></label>
              <input type="text" name="Car" id="Car" placeholder="예: 아반떼" required>
            </div>
            <fieldset class="choice-field auth-form__wide">
              <legend>성별</legend>
              <div>
                <label><input type="radio" name="gender" value="남자" checked> 남자</label>
                <label><input type="radio" name="gender" value="여자"> 여자</label>
              </div>
            </fieldset>
            <fieldset class="address-field auth-form__wide">
              <legend>주소</legend>
              <input type="hidden" id="confmKey" name="confmKey" value="">
              <div class="address-field__zip">
                <input type="text" id="zipNo" name="zipNo" placeholder="우편번호" readonly>
                <button type="button" onclick="goPopup();">주소 검색</button>
              </div>
              <input type="text" id="roadAddrPart1" name="roadAddrPart1" placeholder="도로명주소" required>
              <div class="address-field__detail">
                <input type="text" id="addrDetail" name="addrDetail" placeholder="상세주소">
                <input type="text" id="roadAddrPart2" name="roadAddrPart2" placeholder="참고항목" readonly>
              </div>
            </fieldset>
            <button class="auth-submit auth-form__wide" type="submit">회원가입 완료</button>
          </form>
        </div>
      </section>
    </main>
  </body>
</html>
