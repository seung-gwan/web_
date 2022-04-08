<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <head>
    <meta charset="utf-8">
    <title>Sell</title>
    
 
    
  <style>  
    *{
  margin: 0;
  padding: 0;
}  
#main2 {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  width: 100%;
  height: 100%

}
.container {
  position: relative;
  padding: 70px 70px 50px 70px ;
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
   width: 640px;
  
  
  
}
.container #h2{
  color: #111;
  margin-bottom: 45px;
  line-height: 1em;
  font-weight: 500;
  padding-left: 10px;
  border-left: 5px solid #e91e63;
  
}
.container .inputBox {
  position: relative;
  width: 300px;
  height: 46px;
  margin-bottom: 35px;
}
.container .inputbox:last-child {
  margin-bottom: 0;
 
}
.container .inputBox .input2   {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  border: 1px solid #111;
  background: transparent;
  padding: 10px;
  border-radius: 4px;
  box-sizing: border-box;
  outline: none;
  font-size: 16px;
  color: #111;
  font-weight: 300;

  

}
.container .inputBox  #span {
  position: absolute;
  top: 1px;
  left: 1px;
  padding: 10px;
  display: inline-block;
  font-size: 16px;
  color: #111;
  font-weight: 300;
  transition: 0.5s;
  pointer-events: none;

}
.container .inputBox .input2:focus ~ #span,
.container .inputBox .input2:valid ~ #span{
  transform: translate(-10px, -32px);
  font-size: 12px;

}
.container .inputBox .input2[type="submit"] {
  background: #2196f3;
  color: #fff;
  border: none;
  max-width: 120px;
  cursor: pointer;
  font-weight: 500;

}
.container .inputBox .input2[type="submit"]:hover {
  background: #e91e63;

}

</style> 
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/sub.css">


  </head>
  <body>
     <header id="header">
      <h1><a href="index.jsp">RentCar</a></h1>
      <nav id="membership">
        <h2 class="hidden">멤버쉽네비게이션</h2>
        <ul>
          <li class="goLogin">
          <c:if test="${sessionID != null }">
	        ${sessionID }
	        <a href="logout.do">로그아웃</a>
            </c:if>
          <c:if test="${sessionID == null }">
          	<a href="Login.jsp">로그인</a>
          </c:if>
          </li>
          <li class="goJoin">
          <c:if test="${sessionID != null }">
            	<a href="info_view.do?member_id=${sessionID}">개인정보</a>
            </c:if>
            <c:if test="${sessionID ==null }">
            	<a href="join.jsp">회원가입</a>
            </c:if>
          </li>
        </ul>
      </nav>
      <nav id="gnb">
        <h2 class="hidden">펀웹주요이용메뉴</h2>
        <ul>
          <li><a href="CarSell.do?member_id=${sessionID }">내차 팔기</a></li>
          <li><a href="CarBuy.do">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="#">브랜드인증관</a></li>
          <li><a href="#">전국직영점</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <section id="container">
        <header class="headerCustomer">
          <h2>Sell</h2>
        </header>
        <div id="subWrap">
        <nav id="snb">
          <h3>내차 팔기<span class="hidden">submenu</span></h3>
         
        </nav>
        
        </div>
      </section>
      <div style="text-align:center; padding:0 0 70px 0;">
      <h1>내차팔기 신청하기</h1>
      <span>간편하게 접수하고, 간편하게 판매신청 해보세요.</span>
      </div>
      </main>
      <main id="main2">
      
      
	<div class="container">
	  <h2 id="h2">자세한 상담을 위해 차량 정보를 입력해주세요.</h2>
	  <form action="SellList_insert.do" method="Post" name="form" id="form">
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar" id="member_car" value="${Carinfo_view.member_car }" required >
	      <span id="span">차량명<span style="color:red;">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_kM" id="car_kM" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' value="${Carinfo_view.car_kM}"required>
	      <span id="span">주행거리(km)<span style="color:red">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text"  maxlength="8" name="sCar_Num" id="sCar_Num" value="${Carinfo_view.car_Num}" required>
	      <span id="span">차량번호<span style="color:red">*</span></span>
	    </div>
	     <div class="inputBox">
	      <input class="input2" type="text" maxlength="4" onkeydown='return onlyNumber(event)' value="${Carinfo_view.car_ProductY }" onkeyup='removeChar(event)' name="sCar_ProductY" id="car_ProductY" required>
	      <span id="span">생산년도<span style="color:red">*</span></span>
	    </div>	    
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_brand" id="car_brand" value="${Carinfo_view.car_brand }" required>
	      <span id="span">브랜드<span style="color:red">*</span></span>
	    </div>
	     <div class="inputBox">
	      <input class="input2" type="text" name="sCar_type" id="car_type" value="${Carinfo_view.car_type }" required>
	      <span id="span">타입<span style="color:red">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_Accident" id="sCar_Accident" value="${Carinfo_view.car_Accident }" required>
	      <span id="span">사고유무 Yes/No<span style="color:red">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_color" id="sCar_color" value="${Carinfo_view.car_color }" required>
	      <span id="span">색상<span style="color:red">*</span></span>
	    </div>
	    
	     <div class="form-check_privacy, inputBox" style="height: 70px">
	  <input class="form-check-input" type="checkbox" name="ok"  value="개인정보" id="privacy" required>
	  <label class="form-check-label" for="flexcheckboxDefault1">
	    [필수] 개인정보 수집/이용 동의
	  </label>
	  <br>
	  <input class="form-check-input" type="checkbox" name="ok" value="마케팅" id="marketing">
	  <label class="form-check-label" for="flexcheckboxDefault2">
	    [선택] 마케팅활용 동의(문자메세지)<br>
	  <span style="color:red">(※ 이벤트 참여 시 필수!)</span>
	  </label>
	  </div>
	  <div class="inputBox"  style="height: 30px; margin:10px">
      <input class="input2" type="submit" value="판매신청">
    </div>
      </form>
	    </div>
	  <div class="inputBox"  style="height: 30px; margin:10px">
     <input class="input2" type="button" value="내 판매 목록" onClick="location.href='SellList.do';">
    </div>


    <script>
    function onlyNumber(event){
      event = event || window.event;
      var keyID = (event.which) ? event.which : event.keyCode;
      if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
        return;
      else
        return false;
    }
    function removeChar(event) {
      event = event || window.event;
      var keyID = (event.which) ? event.which : event.keyCode;
      if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
        return;
      else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
    }
  </script>  
    </main>
    <main>
    <div id="footerWrap">
      <footer id="footer">
        <div class="info">
          <small class="copyright">All contents Copyright 2011 FunWeb Inc. all rights reserved</small>
          <address>Contact mail : funweb@funwebbiz.com Tel: +82 64 123 4315 Fax +82 64 123 4321</address>
        </div>
        <ul class="sns">
          <li class="facebook"><a href="#">페이스북 바로가기</a></li>
          <li class="twitter"><a href="#">트위터 바로가기</a></li>
        </ul>
      </footer>
    </div>
</main>
  </body>
</html>
