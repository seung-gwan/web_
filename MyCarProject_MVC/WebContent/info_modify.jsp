<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</style>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 호출된 페이지(jusoPopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
     var pop = window.open("/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusoPopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	document.form.addrDetail.value = addrDetail;
	document.form.zipNo.value = zipNo;
}

</script>
<title>Insert title here</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/main.css">
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
          <li><a href="CarSell.jsp">내차 팔기</a></li>
          <li><a href="CarBuy.jsp">내차 사기</a></li>
          <li><a href="Notice.do">고객센터</a></li>
          <li><a href="#">브랜드인증관</a></li>
          <li><a href="#">전국직영점</a></li>
        </ul>
      </nav>
    </header>
    <hr>
    <main>
      <section id="contactUs"style="width:100%; height: 363px">
        <h2 class="hidden">contact us</h2>
        
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width:100%; height: 363px">
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
 <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://ifh.cc/g/z38w0A.jpg" class="d-block w-100" alt="유재석사진1">
    </div>
    <div class="carousel-item">
       <img src="https://ifh.cc/g/PTo2TJ.jpg" class="d-block w-100" alt="유재석사진2">
    </div>
  </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
</section>
<section>
<form action="info_modify.do" method="POST" name="form" id="form"  style="display: flex;
  justify-content: center;
  align-items: center;
  min-height: 50vh; ">


 
 <input type="hidden" name="member_id" value="${infoList_view.member_id }">
 
 <table>
		<tr>
			<td>아이디</td>
			<td>${infoList_view.member_id }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="member_pw" value="${infoList_view.member_pw }"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="member_name" value="${infoList_view.member_name }"></td>
		</tr>
		<tr>
			<td>차종</td> 
			<td><input type="text" name="member_car" value="${infoList_view.member_car }"></td>
		</tr>
		<tr>
			<td>이메일주소</td>
			<td><input type="text" name="member_email" value="${infoList_view.member_email }"></td>
		</tr>
		 <tr class="form-check" style="height: 50px">
		 <td>
	 <input class="form-check-input" type="radio" name="member_gender"  value="남자" id="Man"checked>
	  <label class="form-check-label" for="flexRadioDefault1">
	    Man
	  </label>	
	  <input class="form-check-input" type="radio" name="member_gender" value="여자" id="Woman">
	  <label class="form-check-label" for="flexRadioDefault2">
	    Woman
	  </label>	
	   </td> 
	</tr>
		</table>

<div class="form-check">

	<table>
			<colgroup>
				<col style="width:20%"><col>
			</colgroup>
			<tbody>
				<tr style="height: 30px">
					<th>우편번호</th>
					<td>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="member_address_num" readonly style="width:100px" value="${infoList_view.member_address_num }">
						<input type="button"  value="주소검색" onclick="goPopup();">
					</td>
				</tr>
				<tr  style="height: 30px">
					<th>도로명주소</th>
					<td><input type="text" id="roadAddrPart1" name="member_address" style="width:85%" value="${infoList_view.member_address }"></td>
				</tr>
				<tr  style="height: 30px">
					<th>상세주소</th>
					<td>
						<input type="text" id="addrDetail" name="member_address_detail1" style="width:40%" value="${infoList_view.member_address_detail1 }">
						<input type="text" id="roadAddrPart2" name="member_address_detail2"  style="width:40%" value="${infoList_view.member_address_detail2 }">
					</td>
				</tr>
			</tbody>
		
	
		<tr>
			<td colspan="2"><input type="submit" value="수정">
		</tr>
		
		
	</table>
</div>
	</form>	

</section>
	


</main>
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
</body>
</html>
