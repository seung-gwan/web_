<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String inputYn = request.getParameter("inputYn");
	String roadFullAddr = request.getParameter("roadFullAddr");
	String roadAddrPart1 = request.getParameter("roadAddrPart1");
	String roadAddrPart2 = request.getParameter("roadAddrPart2");
	String engAddr = request.getParameter("engAddr");
	String jibunAddr = request.getParameter("jibunAddr");
	String zipNo = request.getParameter("zipNo");
	String addrDetail = request.getParameter("addrDetail");
	String admCd = request.getParameter("admCd");
	String rnMgtSn = request.getParameter("rnMgtSn");
	String bdMgtSn = request.getParameter("bdMgtSn");
	String detBdNmList = request.getParameter("detBdNmList");
	String bdNm = request.getParameter("bdNm");
	String bdKdcd = request.getParameter("bdKdcd");
	String siNm = request.getParameter("siNm");
	String sggNm = request.getParameter("sggNm");
	String emdNm = request.getParameter("emdNm");
	String liNm = request.getParameter("liNm");
	String rn = request.getParameter("rn");
	String udrtYn = request.getParameter("udrtYn");
	String buldMnnm = request.getParameter("buldMnnm");
	String buldSlno = request.getParameter("buldSlno");
	String mtYn = request.getParameter("mtYn");
	String lnbrMnnm = request.getParameter("lnbrMnnm");
	String lnbrSlno = request.getParameter("lnbrSlno");
	String emdNo = request.getParameter("emdNo");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주소 검색 | Rent Car</title>
<style>
	* { box-sizing: border-box; }
	body {
		min-height: 100vh;
		margin: 0;
		display: grid;
		place-items: center;
		font-family: "Noto Sans KR", Arial, sans-serif;
		color: #12345b;
		background: linear-gradient(145deg, #eef7ff 0%, #dceeff 100%);
	}
	.address-loading { text-align: center; padding: 32px; }
	.address-loading__mark {
		width: 46px;
		height: 46px;
		margin: 0 auto 18px;
		border: 4px solid rgba(26, 115, 232, .18);
		border-top-color: #1a73e8;
		border-radius: 50%;
		animation: spin .8s linear infinite;
	}
	.address-loading p { margin: 0; font-size: 15px; font-weight: 700; }
	@keyframes spin { to { transform: rotate(360deg); } }
</style>
<script>
function initAddressSearch() {
	var returnUrl = window.location.href;
	var confirmationKey = "TESTJUSOGOKR";
	var inputYn = "<%=inputYn%>";

	if (inputYn !== "Y") {
		var form = document.getElementById("addressForm");
		form.confmKey.value = confirmationKey;
		form.returnUrl.value = returnUrl;
		form.resultType.value = "4";
		form.action = "https://www.juso.go.kr/addrlink/addrLinkUrl.do";
		form.submit();
		return;
	}

	if (window.opener && typeof window.opener.jusoCallBack === "function") {
		window.opener.jusoCallBack("<%=roadFullAddr%>", "<%=roadAddrPart1%>", "<%=addrDetail%>", "<%=roadAddrPart2%>", "<%=engAddr%>",
			"<%=jibunAddr%>", "<%=zipNo%>", "<%=admCd%>", "<%=rnMgtSn%>", "<%=bdMgtSn%>", "<%=detBdNmList%>",
			"<%=bdNm%>", "<%=bdKdcd%>", "<%=siNm%>", "<%=sggNm%>", "<%=emdNm%>", "<%=liNm%>", "<%=rn%>", "<%=udrtYn%>",
			"<%=buldMnnm%>", "<%=buldSlno%>", "<%=mtYn%>", "<%=lnbrMnnm%>", "<%=lnbrSlno%>", "<%=emdNo%>");
	}
	window.close();
}
</script>
</head>
<body onload="initAddressSearch();">
	<main class="address-loading" aria-live="polite">
		<div class="address-loading__mark" aria-hidden="true"></div>
		<p>주소 검색 화면을 불러오고 있습니다.</p>
	</main>
	<form id="addressForm" name="addressForm" method="post">
		<input type="hidden" name="confmKey" value="">
		<input type="hidden" name="returnUrl" value="">
		<input type="hidden" name="resultType" value="">
	</form>
</body>
</html>
