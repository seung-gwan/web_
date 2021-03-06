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
  align-items: top;
  min-height: 10vh;
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
.container  .input2   {
  position: absolute;
  left: 0;
  width: 100%;
  padding: 10px;
  border-radius: 4px;
  box-sizing: border-box;
  outline: none;
  font-size: 16px;
  font-weight: 300;

  

}
.inputBox .container
{
border: 1px solid #111;
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
.input2[type="button"] {
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
.input2[type="button"]:hover
{
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
        <h2 class="hidden">????????????????????????</h2>
        <ul>
          <li class="goLogin">
          <c:if test="${sessionID != null }">
	        ${sessionID }
	        <a href="logout.do">????????????</a>
            </c:if>
          <c:if test="${sessionID == null }">
          	<a href="Login.jsp">?????????</a>
          </c:if>
          </li>
          <li class="goJoin">
          <c:if test="${sessionID != null }">
            	<a href="info_view.do?member_id=${sessionID}">????????????</a>
            </c:if>
            <c:if test="${sessionID ==null }">
            	<a href="join.jsp">????????????</a>
            </c:if>
          </li>
        </ul>
      </nav>
      <nav id="gnb">
        <h2 class="hidden">????????????????????????</h2>
        <ul>
          <li><a href="CarSell.do?member_id=${sessionID }">?????? ??????</a></li>
          <li><a href="CarBuy.do">?????? ??????</a></li>
          <li><a href="Notice.do">????????????</a></li>
          <li><a href="#">??????????????????</a></li>
          <li><a href="#">???????????????</a></li>
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
          <h3>?????? ??????<span class="hidden">submenu</span></h3>
         
        </nav>
        
        </div>
      </section>
      <div style="text-align:center; padding:0 0 70px 0;">
      <h1>???????????? ????????????</h1>
      <span>???????????? ????????????, ???????????? ???????????? ????????????.</span>
      </div>
      </main>
      <main id="main2">
      
      
	<div class="container">
	  <h2 id="h2">????????? ????????? ?????? ?????? ????????? ??????????????????.</h2>
	  <form action="SellList_insert.do" method="Post" name="form" id="form">
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar" id="member_car" value="${Carinfo_view.member_car }" required >
	      <span id="span">?????????<span style="color:red;">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_kM" id="car_kM" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' value="${Carinfo_view.car_kM}"required>
	      <span id="span">????????????(km)<span style="color:red">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text"  maxlength="8" name="sCar_Num" id="sCar_Num" value="${Carinfo_view.car_Num}" required>
	      <span id="span">????????????<span style="color:red">*</span></span>
	    </div>
	     <div class="inputBox">
	      <input class="input2" type="text" maxlength="4" onkeydown='return onlyNumber(event)' value="${Carinfo_view.car_ProductY }" onkeyup='removeChar(event)' name="sCar_ProductY" id="car_ProductY" required>
	      <span id="span">????????????<span style="color:red">*</span></span>
	    </div>	    
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_brand" id="car_brand" value="${Carinfo_view.car_brand }" required>
	      <span id="span">?????????<span style="color:red">*</span></span>
	    </div>
	     <div class="inputBox">
	      <input class="input2" type="text" name="sCar_type" id="car_type" value="${Carinfo_view.car_type }" required>
	      <span id="span">??????<span style="color:red">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_Accident" id="sCar_Accident" value="${Carinfo_view.car_Accident }" required>
	      <span id="span">???????????? Yes/No<span style="color:red">*</span></span>
	    </div>
	    <div class="inputBox">
	      <input class="input2" type="text" name="sCar_color" id="sCar_color" value="${Carinfo_view.car_color }" required>
	      <span id="span">??????<span style="color:red">*</span></span>
	    </div>
	    
	     <div class="form-check_privacy, inputBox" style="height: 70px">
	  <input class="form-check-input" type="checkbox" name="ok"  value="????????????" id="privacy" required>
	  <label class="form-check-label" for="flexcheckboxDefault1">
	    [??????] ???????????? ??????/?????? ??????
	  </label>
	  <br>
	  <input class="form-check-input" type="checkbox" name="ok" value="?????????" id="marketing">
	  <label class="form-check-label" for="flexcheckboxDefault2">
	    [??????] ??????????????? ??????(???????????????)<br>
	  <span style="color:red">(??? ????????? ?????? ??? ??????!)</span>
	  </label>
	  </div>
	  <div class="inputBox"  style="height: 30px; margin:10px">
      <input class="input2" type="submit" value="????????????">
    </div>
     
	    
	  <div class="inputBox"  style="height: 30px; margin:10px; padding:10px 0 0 0">
     <input class="input2" type="button" value="??? ?????? ??????" onClick="location.href='SellList.do';">
    </div>
 </form>
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
          <li class="facebook"><a href="#">???????????? ????????????</a></li>
          <li class="twitter"><a href="#">????????? ????????????</a></li>
        </ul>
      </footer>
    </div>
</main>
  </body>
</html>
