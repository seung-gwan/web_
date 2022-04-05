<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
</head>
<body>
 <table width="500" cellpadding ="0" cellspacing="0" border="1">
   <form action="info_modify.do" method="POST" id="form" name="form">
   <input type="hidden" name="member_id" value="${infoList_view.member_id }">
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
		 <div class="form-check" style="height: 50px">
	  <input class="form-check-input" type="radio" name="member_gender""  value="남자" id="Man"checked>
	  <label class="form-check-label" for="flexRadioDefault1">
	    Man
	  </label>	
	  <input class="form-check-input" type="radio" name="member_gender" value="여자" id="Woman">
	  <label class="form-check-label" for="flexRadioDefault2">
	    Woman
	  </label>
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
						<input type="text" id="zipNo" name="member_address_num"" readonly style="width:100px" value="${infoList_view.member_address_num }">
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
		</table>
	
		</div>
		<tr>
			<td colspan="2"><input type="submit" value="수정">
		</tr>
	
	</form>
</table>

</body>
</html>