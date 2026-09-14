<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 | RentCar</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/blue-pages.css">
  </head>
  <body class="auth-page">
    <c:if test="${resultlogin == -1 || resultlogin == 0}">
      <script>alert('아이디 혹은 비밀번호가 맞지 않습니다.');</script>
    </c:if>
    <c:if test="${sessionID != null}">
      <script>alert('이미 로그인 중입니다.'); location.href = 'index.jsp';</script>
    </c:if>

    <main class="auth-shell">
      <section class="auth-visual">
        <a class="auth-brand" href="index.jsp"><span></span>RentCar</a>
        <div>
          <span class="auth-eyebrow">WELCOME BACK</span>
          <h1>다시 만나서<br>반가워요</h1>
          <p>로그인하고 차량 관리와 판매·구매 서비스를 편리하게 이용하세요.</p>
        </div>
      </section>
      <section class="auth-content">
        <div class="auth-card">
          <a class="auth-home" href="index.jsp">← 홈으로</a>
          <span class="blue-eyebrow">MEMBER LOGIN</span>
          <h2>로그인</h2>
          <p class="auth-card__description">RentCar 계정 정보를 입력해 주세요.</p>
          <form class="auth-form" action="login.do" method="post">
            <div class="blue-field">
              <label for="login-id">아이디</label>
              <input type="text" id="login-id" name="Id" placeholder="아이디를 입력해 주세요" autocomplete="username" required>
            </div>
            <div class="blue-field">
              <label for="login-password">비밀번호</label>
              <input type="password" id="login-password" name="Pw" placeholder="비밀번호를 입력해 주세요" autocomplete="current-password" required>
            </div>
            <button class="auth-submit" type="submit">로그인</button>
          </form>
          <div class="auth-switch">
            <span>아직 계정이 없으신가요?</span>
            <a href="join.jsp">회원가입</a>
          </div>
        </div>
      </section>
    </main>
  </body>
</html>
