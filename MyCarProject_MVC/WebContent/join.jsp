<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</script>
<style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<style>
*{
  margin: 0;
  padding: 0;
}
body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}
.container {
  position: relative;
  padding: 70px 40px;
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
}
.container h2{
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
.container .inputBox input {
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
.container .inputBox  span {
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
.container .inputBox input:focus ~ span,
.container .inputBox input:valid ~ span{
  transform: translate(-10px, -32px);
  font-size: 12px;
}
.container .inputBox input[type="submit"] {
  background: #2196f3;
  color: #fff;
  border: none;
  max-width: 120px;
  cursor: pointer;
  font-weight: 500;
}
.container .inputBox input[type="submit"]:hover {
  background: #e91e63;
}

</style>
</head>
<body>	

	<div class="container">
	  <h2>회원가입</h2>
	  <form action="join.do" method="Post" name="form" id="form">
	    <div class="inputBox">
	      <input type="text" name="Id" id="Id" required>
	      <span>아이디</span>
	    </div>
	    <div class="inputBox">
	      <input type="password" name="Pw" id="Pw" required>
	      <span>비밀번호</span>
	    </div>
	    <div class="inputBox">
	    	<input type="text" name="Name" id="Name" required>
	      <span>이름</span>
	    </div>
	    <div class="inputBox">
	      <input type="email" name="Email" id="Email" required>
	      <span>이메일</span>
	    </div>
	    
	    <div class="inputBox" style="height: 100px">
	      <input type="text" name="Car" id="Car" required style="height: 100px">
	      <span>차량 종류</span>
	    </div>
	    
	    <div class="form-check" style="height: 50px">
	  <input class="form-check-input" type="radio" name="gender"  value="남자" id="Man"checked>
	  <label class="form-check-label" for="flexRadioDefault1">
	    Man
	  </label>	
	  <input class="form-check-input" type="radio" name="gender" value="여자" id="Woman">
	  <label class="form-check-label" for="flexRadioDefault2">
	    Woman
	  </label>
	</div>
	
	
	<div class="form-check">
	<script language="javascript">
//opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("주소입력화면 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

</script>
</div>
<div class="form-check">

	<table >
			<colgroup>
				<col style="width:20%"><col>
			</colgroup>
			<tbody>
				<tr style="height: 30px">
					<th>우편번호</th>
					<td>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
						<input type="button"  value="주소검색" onclick="goPopup();">
					</td>
				</tr>
				<tr  style="height: 30px">
					<th>도로명주소</th>
					<td><input type="text" id="roadAddrPart1" name="roadAddrPart1"style="width:85%"></td>
				</tr>
				<tr  style="height: 30px">
					<th>상세주소</th>
					<td>
						<input type="text" id="addrDetail" name="addrDetail" style="width:40%" value="">
						<input type="text" id="roadAddrPart2" name="roadAddrPart2"  style="width:40%" value="">
					</td>
				</tr>
			</tbody>
		</table>
	
		</div>
		
		
		  <div class="inputBox"  style="height: 30px">
      <input type="submit" value="회원가입">
    </div>
    </form>
	</div>
</body>
</html>